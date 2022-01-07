
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wa_counters {void* gc; void* pad; void* user; } ;
struct pblk_line_mgmt {int close_lock; int emeta_list; int vsc_list; } ;
struct pblk_line_meta {int blk_bitmap_len; int vsc_list_len; } ;
struct pblk_line {scalar_t__ id; scalar_t__ emeta_ssec; scalar_t__ cur_sec; int lock; int list; int nr_valid_lbas; int type; int blk_bitmap; struct pblk_emeta* emeta; } ;
struct pblk_emeta {struct line_emeta* buf; } ;
struct pblk {int instance_uuid; int gc_wa; int pad_wa; int user_wa; struct pblk_line_meta lm; struct pblk_line_mgmt l_mg; } ;
struct TYPE_2__ {void* crc; int version_minor; int version_major; int type; void* id; int uuid; void* identifier; } ;
struct line_emeta {void* crc; void* nr_valid_lbas; TYPE_1__ header; } ;
typedef int guid_t ;


 int EMETA_VERSION_MAJOR ;
 int EMETA_VERSION_MINOR ;
 scalar_t__ PBLK_MAGIC ;
 int atomic64_read (int *) ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (scalar_t__) ;
 void* cpu_to_le64 (int ) ;
 int emeta_to_bb (struct line_emeta*) ;
 int emeta_to_vsc (struct pblk*,struct line_emeta*) ;
 struct wa_counters* emeta_to_wa (struct pblk_line_meta*,struct line_emeta*) ;
 int guid_copy (int *,int *) ;
 scalar_t__ le32_to_cpu (void*) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ pblk_calc_emeta_crc (struct pblk*,struct line_emeta*) ;
 scalar_t__ pblk_calc_meta_header_crc (struct pblk*,TYPE_1__*) ;
 int pblk_line_should_sync_meta (struct pblk*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void pblk_line_close_meta(struct pblk *pblk, struct pblk_line *line)
{
 struct pblk_line_mgmt *l_mg = &pblk->l_mg;
 struct pblk_line_meta *lm = &pblk->lm;
 struct pblk_emeta *emeta = line->emeta;
 struct line_emeta *emeta_buf = emeta->buf;
 struct wa_counters *wa = emeta_to_wa(lm, emeta_buf);


 memcpy(emeta_to_vsc(pblk, emeta_buf), l_mg->vsc_list, lm->vsc_list_len);
 memcpy(emeta_to_bb(emeta_buf), line->blk_bitmap, lm->blk_bitmap_len);

 wa->user = cpu_to_le64(atomic64_read(&pblk->user_wa));
 wa->pad = cpu_to_le64(atomic64_read(&pblk->pad_wa));
 wa->gc = cpu_to_le64(atomic64_read(&pblk->gc_wa));

 if (le32_to_cpu(emeta_buf->header.identifier) != PBLK_MAGIC) {
  emeta_buf->header.identifier = cpu_to_le32(PBLK_MAGIC);
  guid_copy((guid_t *)&emeta_buf->header.uuid,
       &pblk->instance_uuid);
  emeta_buf->header.id = cpu_to_le32(line->id);
  emeta_buf->header.type = cpu_to_le16(line->type);
  emeta_buf->header.version_major = EMETA_VERSION_MAJOR;
  emeta_buf->header.version_minor = EMETA_VERSION_MINOR;
  emeta_buf->header.crc = cpu_to_le32(
   pblk_calc_meta_header_crc(pblk, &emeta_buf->header));
 }

 emeta_buf->nr_valid_lbas = cpu_to_le64(line->nr_valid_lbas);
 emeta_buf->crc = cpu_to_le32(pblk_calc_emeta_crc(pblk, emeta_buf));

 spin_lock(&l_mg->close_lock);
 spin_lock(&line->lock);




 if (line->emeta_ssec != line->cur_sec)
  line->emeta_ssec = line->cur_sec;

 list_add_tail(&line->list, &l_mg->emeta_list);
 spin_unlock(&line->lock);
 spin_unlock(&l_mg->close_lock);

 pblk_line_should_sync_meta(pblk);
}
