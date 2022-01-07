
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache_sb {unsigned int first_bucket; unsigned int keys; void* seq; void* flags; void* version; int csum; void** d; int last_mount; int label; int set_uuid; int uuid; void* offset; } ;
struct TYPE_2__ {int bi_size; int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;


 int REQ_META ;
 int REQ_OP_WRITE ;
 int REQ_SYNC ;
 int SB_LABEL_SIZE ;
 int SB_SECTOR ;
 int SB_SIZE ;
 int bch_bio_map (struct bio*,int *) ;
 int bio_first_page_all (struct bio*) ;
 int bio_set_op_attrs (struct bio*,int ,int) ;
 void* cpu_to_le16 (unsigned int) ;
 int cpu_to_le32 (int ) ;
 void* cpu_to_le64 (void*) ;
 int csum_set (struct cache_sb*) ;
 int memcpy (int ,int ,int) ;
 struct cache_sb* page_address (int ) ;
 int pr_debug (char*,void*,void*,void*) ;
 int submit_bio (struct bio*) ;

__attribute__((used)) static void __write_super(struct cache_sb *sb, struct bio *bio)
{
 struct cache_sb *out = page_address(bio_first_page_all(bio));
 unsigned int i;

 bio->bi_iter.bi_sector = SB_SECTOR;
 bio->bi_iter.bi_size = SB_SIZE;
 bio_set_op_attrs(bio, REQ_OP_WRITE, REQ_SYNC|REQ_META);
 bch_bio_map(bio, ((void*)0));

 out->offset = cpu_to_le64(sb->offset);
 out->version = cpu_to_le64(sb->version);

 memcpy(out->uuid, sb->uuid, 16);
 memcpy(out->set_uuid, sb->set_uuid, 16);
 memcpy(out->label, sb->label, SB_LABEL_SIZE);

 out->flags = cpu_to_le64(sb->flags);
 out->seq = cpu_to_le64(sb->seq);

 out->last_mount = cpu_to_le32(sb->last_mount);
 out->first_bucket = cpu_to_le16(sb->first_bucket);
 out->keys = cpu_to_le16(sb->keys);

 for (i = 0; i < sb->keys; i++)
  out->d[i] = cpu_to_le64(sb->d[i]);

 out->csum = csum_set(out);

 pr_debug("ver %llu, flags %llu, seq %llu",
   sb->version, sb->flags, sb->seq);

 submit_bio(bio);
}
