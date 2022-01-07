
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int WB_GPIO_DRIVER_NAME ;
 int WB_SIO_EXT_ENTER_KEY ;
 int outb (int ,unsigned long) ;
 int request_muxed_region (unsigned long,int,int ) ;

__attribute__((used)) static int winbond_sio_enter(unsigned long base)
{
 if (!request_muxed_region(base, 2, WB_GPIO_DRIVER_NAME))
  return -EBUSY;





 outb(WB_SIO_EXT_ENTER_KEY, base);
 outb(WB_SIO_EXT_ENTER_KEY, base);

 return 0;
}
