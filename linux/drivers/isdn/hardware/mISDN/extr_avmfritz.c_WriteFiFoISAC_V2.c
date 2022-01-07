
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fritzcard {scalar_t__ addr; } ;


 scalar_t__ AVM_ISACX_DATA ;
 scalar_t__ AVM_ISACX_INDEX ;
 int outl (int ,scalar_t__) ;

__attribute__((used)) static void
WriteFiFoISAC_V2(void *p, u8 off, u8 *data, int size)
{
 struct fritzcard *fc = p;
 int i;

 outl(off, fc->addr + AVM_ISACX_INDEX);
 for (i = 0; i < size; i++)
  outl(data[i], fc->addr + AVM_ISACX_DATA);
}
