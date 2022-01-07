
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AT_XDMAC_CC_TYPE_PER_TRAN ;

__attribute__((used)) static inline bool at_xdmac_chan_is_peripheral_xfer(u32 cfg)
{
 return cfg & AT_XDMAC_CC_TYPE_PER_TRAN;
}
