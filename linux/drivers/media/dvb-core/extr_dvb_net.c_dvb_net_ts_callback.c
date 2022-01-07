
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct dmx_ts_feed {struct net_device* priv; } ;


 int dvb_net_ule (struct net_device*,int const*,size_t) ;
 int pr_warn (char*,size_t) ;

__attribute__((used)) static int dvb_net_ts_callback(const u8 *buffer1, size_t buffer1_len,
          const u8 *buffer2, size_t buffer2_len,
          struct dmx_ts_feed *feed,
          u32 *buffer_flags)
{
 struct net_device *dev = feed->priv;

 if (buffer2)
  pr_warn("buffer2 not NULL: %p.\n", buffer2);
 if (buffer1_len > 32768)
  pr_warn("length > 32k: %zu.\n", buffer1_len);


 dvb_net_ule(dev, buffer1, buffer1_len);
 return 0;
}
