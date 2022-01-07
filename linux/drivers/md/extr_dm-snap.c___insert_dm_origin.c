
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct dm_origin {int hash_list; TYPE_1__* dev; } ;
struct TYPE_2__ {int bdev; } ;


 struct list_head* _dm_origins ;
 int list_add_tail (int *,struct list_head*) ;
 size_t origin_hash (int ) ;

__attribute__((used)) static void __insert_dm_origin(struct dm_origin *o)
{
 struct list_head *sl = &_dm_origins[origin_hash(o->dev->bdev)];
 list_add_tail(&o->hash_list, sl);
}
