
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvif_sclass {int dummy; } ;


 int kfree (struct nvif_sclass*) ;

void
nvif_object_sclass_put(struct nvif_sclass **psclass)
{
 kfree(*psclass);
 *psclass = ((void*)0);
}
