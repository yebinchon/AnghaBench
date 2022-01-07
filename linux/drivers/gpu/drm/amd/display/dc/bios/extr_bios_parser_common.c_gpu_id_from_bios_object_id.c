
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int OBJECT_ID_MASK ;
 int OBJECT_ID_SHIFT ;

__attribute__((used)) static uint32_t gpu_id_from_bios_object_id(uint32_t bios_object_id)
{
 return (bios_object_id & OBJECT_ID_MASK) >> OBJECT_ID_SHIFT;
}
