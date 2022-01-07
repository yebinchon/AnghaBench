
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct dmx_section_filter {struct net_device* priv; } ;


 int dvb_net_sec (struct net_device*,int const*,size_t) ;

__attribute__((used)) static int dvb_net_sec_callback(const u8 *buffer1, size_t buffer1_len,
   const u8 *buffer2, size_t buffer2_len,
   struct dmx_section_filter *filter, u32 *buffer_flags)
{
 struct net_device *dev = filter->priv;





 dvb_net_sec (dev, buffer1, buffer1_len);
 return 0;
}
