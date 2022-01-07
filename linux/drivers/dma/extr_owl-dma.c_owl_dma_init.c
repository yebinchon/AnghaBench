
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int owl_dma_driver ;
 int platform_driver_register (int *) ;

__attribute__((used)) static int owl_dma_init(void)
{
 return platform_driver_register(&owl_dma_driver);
}
