
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {int nr_mblks; } ;
struct dmz_mblock {int page; } ;


 int __free_pages (int ,int ) ;
 int atomic_dec (int *) ;
 int kfree (struct dmz_mblock*) ;

__attribute__((used)) static void dmz_free_mblock(struct dmz_metadata *zmd, struct dmz_mblock *mblk)
{
 __free_pages(mblk->page, 0);
 kfree(mblk);

 atomic_dec(&zmd->nr_mblks);
}
