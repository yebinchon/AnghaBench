
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct background_tracker {int dummy; } ;
typedef int dm_oblock_t ;


 int * __find_pending (struct background_tracker*,int ) ;

bool btracker_promotion_already_present(struct background_tracker *b,
     dm_oblock_t oblock)
{
 return __find_pending(b, oblock) != ((void*)0);
}
