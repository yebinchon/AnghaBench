
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct pblk_line_mgmt {int free_lock; int bad_list; } ;
struct pblk_line_meta {int blk_per_line; int min_blk_line; int lun_bitmap_len; } ;
struct pblk_line {int sec_in_line; int seq_nr; int id; struct pblk_emeta* emeta; TYPE_1__* lun_bitmap; int type; int list; int lock; int state; int blk_bitmap; scalar_t__ smeta; } ;
struct pblk_emeta {struct line_emeta* buf; } ;
struct pblk {int instance_uuid; struct pblk_line_mgmt l_mg; struct pblk_line_meta lm; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int all_luns; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;
struct TYPE_5__ {void* crc; int version_minor; int version_major; int type; void* id; int uuid; void* identifier; } ;
struct line_smeta {void* prev_id; TYPE_1__ header; void* crc; void* window_wr_lun; void* seq_nr; } ;
struct line_header {int dummy; } ;
struct line_emeta {void* prev_id; void* crc; void* next_id; void* nr_valid_lbas; void* nr_lbas; void* seq_nr; TYPE_1__ header; } ;
typedef int guid_t ;


 int EMETA_VERSION_MAJOR ;
 int EMETA_VERSION_MINOR ;
 int PBLK_LINESTATE_BAD ;
 int PBLK_LINE_EMPTY ;
 int PBLK_MAGIC ;
 int SMETA_VERSION_MAJOR ;
 int SMETA_VERSION_MINOR ;
 int bitmap_set (TYPE_1__*,int ,int) ;
 int bitmap_weight (int ,int) ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;
 int guid_copy (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int pblk_calc_meta_header_crc (struct pblk*,TYPE_1__*) ;
 int pblk_calc_smeta_crc (struct pblk*,struct line_smeta*) ;
 int pblk_debug (struct pblk*,char*,int ) ;
 int pblk_disk_name (struct pblk*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_pblk_line_state (int ,int ,int ) ;

__attribute__((used)) static int pblk_line_init_metadata(struct pblk *pblk, struct pblk_line *line,
      struct pblk_line *cur)
{
 struct nvm_tgt_dev *dev = pblk->dev;
 struct nvm_geo *geo = &dev->geo;
 struct pblk_line_meta *lm = &pblk->lm;
 struct pblk_line_mgmt *l_mg = &pblk->l_mg;
 struct pblk_emeta *emeta = line->emeta;
 struct line_emeta *emeta_buf = emeta->buf;
 struct line_smeta *smeta_buf = (struct line_smeta *)line->smeta;
 int nr_blk_line;




 nr_blk_line = lm->blk_per_line -
   bitmap_weight(line->blk_bitmap, lm->blk_per_line);
 if (nr_blk_line < lm->min_blk_line) {
  spin_lock(&l_mg->free_lock);
  spin_lock(&line->lock);
  line->state = PBLK_LINESTATE_BAD;
  trace_pblk_line_state(pblk_disk_name(pblk), line->id,
     line->state);
  spin_unlock(&line->lock);

  list_add_tail(&line->list, &l_mg->bad_list);
  spin_unlock(&l_mg->free_lock);

  pblk_debug(pblk, "line %d is bad\n", line->id);

  return 0;
 }


 line->lun_bitmap = ((void *)(smeta_buf)) + sizeof(struct line_smeta);


 bitmap_set(line->lun_bitmap, 0, lm->lun_bitmap_len);

 smeta_buf->header.identifier = cpu_to_le32(PBLK_MAGIC);
 guid_copy((guid_t *)&smeta_buf->header.uuid, &pblk->instance_uuid);
 smeta_buf->header.id = cpu_to_le32(line->id);
 smeta_buf->header.type = cpu_to_le16(line->type);
 smeta_buf->header.version_major = SMETA_VERSION_MAJOR;
 smeta_buf->header.version_minor = SMETA_VERSION_MINOR;


 smeta_buf->seq_nr = cpu_to_le64(line->seq_nr);
 smeta_buf->window_wr_lun = cpu_to_le32(geo->all_luns);


 if (cur) {
  memcpy(line->lun_bitmap, cur->lun_bitmap, lm->lun_bitmap_len);
  smeta_buf->prev_id = cpu_to_le32(cur->id);
  cur->emeta->buf->next_id = cpu_to_le32(line->id);
 } else {
  smeta_buf->prev_id = cpu_to_le32(PBLK_LINE_EMPTY);
 }


 smeta_buf->header.crc = cpu_to_le32(
   pblk_calc_meta_header_crc(pblk, &smeta_buf->header));
 smeta_buf->crc = cpu_to_le32(pblk_calc_smeta_crc(pblk, smeta_buf));


 memcpy(&emeta_buf->header, &smeta_buf->header,
      sizeof(struct line_header));

 emeta_buf->header.version_major = EMETA_VERSION_MAJOR;
 emeta_buf->header.version_minor = EMETA_VERSION_MINOR;
 emeta_buf->header.crc = cpu_to_le32(
   pblk_calc_meta_header_crc(pblk, &emeta_buf->header));

 emeta_buf->seq_nr = cpu_to_le64(line->seq_nr);
 emeta_buf->nr_lbas = cpu_to_le64(line->sec_in_line);
 emeta_buf->nr_valid_lbas = cpu_to_le64(0);
 emeta_buf->next_id = cpu_to_le32(PBLK_LINE_EMPTY);
 emeta_buf->crc = cpu_to_le32(0);
 emeta_buf->prev_id = smeta_buf->prev_id;

 return 1;
}
