
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int sysmmu_iova_t ;


 int SECT_ORDER ;

__attribute__((used)) static u32 lv1ent_offset(sysmmu_iova_t iova)
{
 return iova >> SECT_ORDER;
}
