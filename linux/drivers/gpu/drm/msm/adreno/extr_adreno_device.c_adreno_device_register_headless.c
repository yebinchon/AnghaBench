
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device_info {char* name; int id; int dma_mask; int size_data; int * data; int num_res; int * res; int * parent; } ;


 int platform_device_register_full (struct platform_device_info*) ;

__attribute__((used)) static void adreno_device_register_headless(void)
{



 struct platform_device_info dummy_info = {
  .parent = ((void*)0),
  .name = "msm",
  .id = -1,
  .res = ((void*)0),
  .num_res = 0,
  .data = ((void*)0),
  .size_data = 0,
  .dma_mask = ~0,
 };
 platform_device_register_full(&dummy_info);
}
