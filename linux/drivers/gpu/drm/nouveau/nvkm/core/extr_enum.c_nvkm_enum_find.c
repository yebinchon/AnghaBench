
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nvkm_enum {scalar_t__ value; scalar_t__ name; } ;



const struct nvkm_enum *
nvkm_enum_find(const struct nvkm_enum *en, u32 value)
{
 while (en->name) {
  if (en->value == value)
   return en;
  en++;
 }

 return ((void*)0);
}
