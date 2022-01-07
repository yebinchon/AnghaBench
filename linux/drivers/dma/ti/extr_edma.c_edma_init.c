
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int edma_driver ;
 int edma_tptc_driver ;
 int platform_driver_register (int *) ;

__attribute__((used)) static int edma_init(void)
{
 int ret;

 ret = platform_driver_register(&edma_tptc_driver);
 if (ret)
  return ret;

 return platform_driver_register(&edma_driver);
}
