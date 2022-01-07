
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct fw_ohci {int mc_channels; } ;


 int OHCI1394_IRMultiChanMaskHiClear ;
 int OHCI1394_IRMultiChanMaskHiSet ;
 int OHCI1394_IRMultiChanMaskLoClear ;
 int OHCI1394_IRMultiChanMaskLoSet ;
 int reg_write (struct fw_ohci*,int ,int) ;

__attribute__((used)) static void set_multichannel_mask(struct fw_ohci *ohci, u64 channels)
{
 u32 hi = channels >> 32, lo = channels;

 reg_write(ohci, OHCI1394_IRMultiChanMaskHiClear, ~hi);
 reg_write(ohci, OHCI1394_IRMultiChanMaskLoClear, ~lo);
 reg_write(ohci, OHCI1394_IRMultiChanMaskHiSet, hi);
 reg_write(ohci, OHCI1394_IRMultiChanMaskLoSet, lo);
 ohci->mc_channels = channels;
}
