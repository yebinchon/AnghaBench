
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int KBUILD_MODNAME ;
 int REG ;
 int outb (int,int ) ;
 int request_muxed_region (int ,int,int ) ;

__attribute__((used)) static inline int superio_enter(void)
{



 if (!request_muxed_region(REG, 2, KBUILD_MODNAME))
  return -EBUSY;

 outb(0x87, REG);
 outb(0x01, REG);
 outb(0x55, REG);
 outb(0x55, REG);
 return 0;
}
