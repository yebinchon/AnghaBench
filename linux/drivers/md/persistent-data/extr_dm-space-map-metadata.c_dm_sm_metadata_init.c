
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_space_map {int dummy; } ;
struct sm_metadata {struct dm_space_map sm; } ;


 int ENOMEM ;
 struct dm_space_map* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct sm_metadata* kmalloc (int,int ) ;
 int memcpy (struct dm_space_map*,int *,int) ;
 int ops ;

struct dm_space_map *dm_sm_metadata_init(void)
{
 struct sm_metadata *smm;

 smm = kmalloc(sizeof(*smm), GFP_KERNEL);
 if (!smm)
  return ERR_PTR(-ENOMEM);

 memcpy(&smm->sm, &ops, sizeof(smm->sm));

 return &smm->sm;
}
