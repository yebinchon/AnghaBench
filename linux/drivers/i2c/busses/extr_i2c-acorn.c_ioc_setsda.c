
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int IOC_CONTROL ;
 int SCL ;
 int SDA ;
 int force_ones ;
 int ioc_readb (int ) ;
 int ioc_writeb (int,int ) ;

__attribute__((used)) static void ioc_setsda(void *data, int state)
{
 u_int ioc_control = ioc_readb(IOC_CONTROL) & ~(SCL | SDA);
 u_int ones = force_ones;

 if (state)
  ones |= SDA;
 else
  ones &= ~SDA;

 force_ones = ones;

  ioc_writeb(ioc_control | ones, IOC_CONTROL);
}
