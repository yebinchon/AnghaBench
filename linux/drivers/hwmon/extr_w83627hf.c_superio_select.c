
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83627hf_sio_data {scalar_t__ sioaddr; } ;


 int DEV ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static inline void
superio_select(struct w83627hf_sio_data *sio, int ld)
{
 outb(DEV, sio->sioaddr);
 outb(ld, sio->sioaddr + 1);
}
