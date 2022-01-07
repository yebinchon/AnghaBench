
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_space_map {int dummy; } ;


 int DMERR (char*) ;
 int EINVAL ;

__attribute__((used)) static int sm_bootstrap_copy_root(struct dm_space_map *sm, void *where,
      size_t max)
{
 DMERR("bootstrap doesn't support copy_root");

 return -EINVAL;
}
