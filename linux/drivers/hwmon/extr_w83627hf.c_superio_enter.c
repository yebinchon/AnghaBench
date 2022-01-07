
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83627hf_sio_data {int sioaddr; } ;


 int DRVNAME ;
 int EBUSY ;
 int outb (int,int ) ;
 int request_muxed_region (int ,int,int ) ;

__attribute__((used)) static inline int
superio_enter(struct w83627hf_sio_data *sio)
{
 if (!request_muxed_region(sio->sioaddr, 2, DRVNAME))
  return -EBUSY;

 outb(0x87, sio->sioaddr);
 outb(0x87, sio->sioaddr);

 return 0;
}
