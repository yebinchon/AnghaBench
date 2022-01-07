
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe_head {TYPE_2__* dev; TYPE_1__* raid_conf; } ;
struct page {int dummy; } ;
struct TYPE_4__ {struct page* page; struct page* orig_page; } ;
struct TYPE_3__ {int pool_size; } ;


 int WARN_ON (int) ;
 int put_page (struct page*) ;

__attribute__((used)) static void shrink_buffers(struct stripe_head *sh)
{
 struct page *p;
 int i;
 int num = sh->raid_conf->pool_size;

 for (i = 0; i < num ; i++) {
  WARN_ON(sh->dev[i].page != sh->dev[i].orig_page);
  p = sh->dev[i].page;
  if (!p)
   continue;
  sh->dev[i].page = ((void*)0);
  put_page(p);
 }
}
