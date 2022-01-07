
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at_xdmac_chan {int mask; } ;


 int AT_XDMAC_GS ;
 int at_xdmac_chan_read (struct at_xdmac_chan*,int ) ;

__attribute__((used)) static bool at_xdmac_chan_is_enabled(struct at_xdmac_chan *atchan)
{
 return at_xdmac_chan_read(atchan, AT_XDMAC_GS) & atchan->mask;
}
