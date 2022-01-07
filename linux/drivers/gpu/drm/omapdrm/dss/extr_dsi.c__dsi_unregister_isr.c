
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dsi_isr_data {void* arg; scalar_t__ mask; int * isr; } ;
typedef int * omap_dsi_isr_t ;


 int EINVAL ;

__attribute__((used)) static int _dsi_unregister_isr(omap_dsi_isr_t isr, void *arg, u32 mask,
  struct dsi_isr_data *isr_array, unsigned int isr_array_size)
{
 struct dsi_isr_data *isr_data;
 int i;

 for (i = 0; i < isr_array_size; i++) {
  isr_data = &isr_array[i];
  if (isr_data->isr != isr || isr_data->arg != arg ||
    isr_data->mask != mask)
   continue;

  isr_data->isr = ((void*)0);
  isr_data->arg = ((void*)0);
  isr_data->mask = 0;

  return 0;
 }

 return -EINVAL;
}
