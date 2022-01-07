
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int dummy; } ;
struct dm_table {unsigned int num_allocated; struct dm_target* targets; int * highs; } ;
typedef int sector_t ;


 int ENOMEM ;
 scalar_t__ dm_vcalloc (unsigned int,int) ;
 int memset (int *,int,int) ;
 int vfree (int *) ;

__attribute__((used)) static int alloc_targets(struct dm_table *t, unsigned int num)
{
 sector_t *n_highs;
 struct dm_target *n_targets;




 n_highs = (sector_t *) dm_vcalloc(num, sizeof(struct dm_target) +
       sizeof(sector_t));
 if (!n_highs)
  return -ENOMEM;

 n_targets = (struct dm_target *) (n_highs + num);

 memset(n_highs, -1, sizeof(*n_highs) * num);
 vfree(t->highs);

 t->num_allocated = num;
 t->highs = n_highs;
 t->targets = n_targets;

 return 0;
}
