
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe_head {TYPE_2__* dev; TYPE_1__* raid_conf; } ;
struct page {int dummy; } ;
typedef int gfp_t ;
struct TYPE_4__ {struct page* orig_page; struct page* page; } ;
struct TYPE_3__ {int pool_size; } ;


 struct page* alloc_page (int ) ;

__attribute__((used)) static int grow_buffers(struct stripe_head *sh, gfp_t gfp)
{
 int i;
 int num = sh->raid_conf->pool_size;

 for (i = 0; i < num; i++) {
  struct page *page;

  if (!(page = alloc_page(gfp))) {
   return 1;
  }
  sh->dev[i].page = page;
  sh->dev[i].orig_page = page;
 }

 return 0;
}
