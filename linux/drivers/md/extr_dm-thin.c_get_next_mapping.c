
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {struct dm_thin_new_mapping* next_mapping; } ;
struct dm_thin_new_mapping {int * bio; int list; } ;


 int BUG_ON (int) ;
 int INIT_LIST_HEAD (int *) ;
 int memset (struct dm_thin_new_mapping*,int ,int) ;

__attribute__((used)) static struct dm_thin_new_mapping *get_next_mapping(struct pool *pool)
{
 struct dm_thin_new_mapping *m = pool->next_mapping;

 BUG_ON(!pool->next_mapping);

 memset(m, 0, sizeof(struct dm_thin_new_mapping));
 INIT_LIST_HEAD(&m->list);
 m->bio = ((void*)0);

 pool->next_mapping = ((void*)0);

 return m;
}
