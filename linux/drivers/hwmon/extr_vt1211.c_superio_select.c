
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIO_VT1211_LDN ;
 int outb (int,int) ;

__attribute__((used)) static inline void superio_select(int sio_cip, int ldn)
{
 outb(SIO_VT1211_LDN, sio_cip);
 outb(ldn, sio_cip + 1);
}
