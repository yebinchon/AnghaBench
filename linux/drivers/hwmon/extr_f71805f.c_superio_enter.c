
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRVNAME ;
 int EBUSY ;
 int outb (int,int) ;
 int request_muxed_region (int,int,int ) ;

__attribute__((used)) static inline int
superio_enter(int base)
{
 if (!request_muxed_region(base, 2, DRVNAME))
  return -EBUSY;

 outb(0x87, base);
 outb(0x87, base);

 return 0;
}
