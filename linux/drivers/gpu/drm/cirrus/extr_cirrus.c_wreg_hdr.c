
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cirrus_device {scalar_t__ mmio; } ;


 scalar_t__ VGA_DAC_MASK ;
 int ioread8 (scalar_t__) ;
 int iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static void wreg_hdr(struct cirrus_device *cirrus, u8 val)
{
 ioread8(cirrus->mmio + VGA_DAC_MASK);
 ioread8(cirrus->mmio + VGA_DAC_MASK);
 ioread8(cirrus->mmio + VGA_DAC_MASK);
 ioread8(cirrus->mmio + VGA_DAC_MASK);
 iowrite8(val, cirrus->mmio + VGA_DAC_MASK);
}
