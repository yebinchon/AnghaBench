
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_region_hydration {unsigned long region_nr; int h; int list; scalar_t__ status; int deferred_bios; int * overwrite_bio; } ;


 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int bio_list_init (int *) ;

__attribute__((used)) static void hydration_init(struct dm_clone_region_hydration *hd, unsigned long region_nr)
{
 hd->region_nr = region_nr;
 hd->overwrite_bio = ((void*)0);
 bio_list_init(&hd->deferred_bios);
 hd->status = 0;

 INIT_LIST_HEAD(&hd->list);
 INIT_HLIST_NODE(&hd->h);
}
