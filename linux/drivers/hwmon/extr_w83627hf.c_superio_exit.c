
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83627hf_sio_data {int sioaddr; } ;


 int outb (int,int ) ;
 int release_region (int ,int) ;

__attribute__((used)) static inline void
superio_exit(struct w83627hf_sio_data *sio)
{
 outb(0xAA, sio->sioaddr);
 release_region(sio->sioaddr, 2);
}
