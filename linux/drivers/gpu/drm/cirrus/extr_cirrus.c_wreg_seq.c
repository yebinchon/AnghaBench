
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cirrus_device {scalar_t__ mmio; } ;


 scalar_t__ SEQ_DATA ;
 scalar_t__ SEQ_INDEX ;
 int iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static void wreg_seq(struct cirrus_device *cirrus, u8 reg, u8 val)
{
 iowrite8(reg, cirrus->mmio + SEQ_INDEX);
 iowrite8(val, cirrus->mmio + SEQ_DATA);
}
