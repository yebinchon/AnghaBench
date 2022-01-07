
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cirrus_device {scalar_t__ mmio; } ;


 scalar_t__ CRT_DATA ;
 scalar_t__ CRT_INDEX ;
 int iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static void wreg_crt(struct cirrus_device *cirrus, u8 reg, u8 val)
{
 iowrite8(reg, cirrus->mmio + CRT_INDEX);
 iowrite8(val, cirrus->mmio + CRT_DATA);
}
