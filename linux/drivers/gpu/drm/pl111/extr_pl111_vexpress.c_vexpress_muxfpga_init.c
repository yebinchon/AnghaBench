
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int platform_driver_register (int *) ;
 int vexpress_muxfpga_driver ;

int vexpress_muxfpga_init(void)
{
 int ret;

 ret = platform_driver_register(&vexpress_muxfpga_driver);

 if (ret == -EBUSY)
  ret = 0;
 return ret;
}
