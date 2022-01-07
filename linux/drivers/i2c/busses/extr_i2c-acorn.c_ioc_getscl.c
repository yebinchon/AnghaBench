
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOC_CONTROL ;
 int SCL ;
 int ioc_readb (int ) ;

__attribute__((used)) static int ioc_getscl(void *data)
{
 return (ioc_readb(IOC_CONTROL) & SCL) != 0;
}
