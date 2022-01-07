
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int USB_DMAC_XFER_SIZE ;

__attribute__((used)) static u32 usb_dmac_calc_tend(u32 size)
{




 return 0xffffffff << (32 - (size % USB_DMAC_XFER_SIZE ? :
      USB_DMAC_XFER_SIZE));
}
