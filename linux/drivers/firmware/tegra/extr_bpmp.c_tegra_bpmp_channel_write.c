
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bpmp_channel {int dummy; } ;
typedef int ssize_t ;


 int __tegra_bpmp_channel_write (struct tegra_bpmp_channel*,unsigned int,unsigned long,void const*,size_t) ;
 int tegra_bpmp_wait_request_channel_free (struct tegra_bpmp_channel*) ;

__attribute__((used)) static ssize_t tegra_bpmp_channel_write(struct tegra_bpmp_channel *channel,
     unsigned int mrq, unsigned long flags,
     const void *data, size_t size)
{
 int err;

 err = tegra_bpmp_wait_request_channel_free(channel);
 if (err < 0)
  return err;

 return __tegra_bpmp_channel_write(channel, mrq, flags, data, size);
}
