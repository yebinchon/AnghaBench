
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct ib_vl_weight_elem {int vl; scalar_t__ weight; } ;
struct hfi1_devdata {int dummy; } ;



__attribute__((used)) static void get_vlarb_preempt(struct hfi1_devdata *dd, u32 nelems,
         struct ib_vl_weight_elem *vl)
{
 unsigned int i;

 for (i = 0; i < nelems; i++, vl++) {
  vl->vl = 0xf;
  vl->weight = 0;
 }
}
