
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int AT_XDMAC_CC_DWIDTH_MASK ;
 int AT_XDMAC_CC_DWIDTH_OFFSET ;

__attribute__((used)) static inline u8 at_xdmac_get_dwidth(u32 cfg)
{
 return (cfg & AT_XDMAC_CC_DWIDTH_MASK) >> AT_XDMAC_CC_DWIDTH_OFFSET;
}
