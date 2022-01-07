
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct dmz_metadata {int mblk_primary; } ;


 int dmz_write_dirty_mblocks (struct dmz_metadata*,struct list_head*,unsigned int) ;
 int dmz_write_sb (struct dmz_metadata*,unsigned int) ;

__attribute__((used)) static int dmz_log_dirty_mblocks(struct dmz_metadata *zmd,
     struct list_head *write_list)
{
 unsigned int log_set = zmd->mblk_primary ^ 0x1;
 int ret;


 ret = dmz_write_dirty_mblocks(zmd, write_list, log_set);
 if (ret)
  return ret;





 ret = dmz_write_sb(zmd, log_set);
 if (ret)
  return ret;

 return 0;
}
