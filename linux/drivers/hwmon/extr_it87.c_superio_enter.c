
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRVNAME ;
 int EBUSY ;
 int REG_4E ;
 int outb (int,int) ;
 int request_muxed_region (int,int,int ) ;

__attribute__((used)) static inline int superio_enter(int ioreg)
{



 if (!request_muxed_region(ioreg, 2, DRVNAME))
  return -EBUSY;

 outb(0x87, ioreg);
 outb(0x01, ioreg);
 outb(0x55, ioreg);
 outb(ioreg == REG_4E ? 0xaa : 0x55, ioreg);
 return 0;
}
