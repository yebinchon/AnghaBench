
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRVNAME ;
 int EBUSY ;
 int outb (int,int) ;
 int request_muxed_region (int,int,int ) ;

__attribute__((used)) static inline int superio_enter(int sio_cip)
{
 if (!request_muxed_region(sio_cip, 2, DRVNAME))
  return -EBUSY;

 outb(0x87, sio_cip);
 outb(0x87, sio_cip);

 return 0;
}
