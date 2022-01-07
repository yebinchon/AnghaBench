
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {scalar_t__ tag_set; } ;


 int blk_mq_free_tag_set (scalar_t__) ;
 int kfree (scalar_t__) ;

void dm_mq_cleanup_mapped_device(struct mapped_device *md)
{
 if (md->tag_set) {
  blk_mq_free_tag_set(md->tag_set);
  kfree(md->tag_set);
 }
}
