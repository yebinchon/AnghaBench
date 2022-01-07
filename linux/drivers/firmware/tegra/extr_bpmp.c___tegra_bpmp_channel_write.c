
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_bpmp_channel {TYPE_1__* ob; } ;
typedef int ssize_t ;
struct TYPE_2__ {unsigned int code; unsigned long flags; int data; } ;


 int memcpy (int ,void const*,size_t) ;
 int tegra_bpmp_post_request (struct tegra_bpmp_channel*) ;

__attribute__((used)) static ssize_t __tegra_bpmp_channel_write(struct tegra_bpmp_channel *channel,
       unsigned int mrq, unsigned long flags,
       const void *data, size_t size)
{
 channel->ob->code = mrq;
 channel->ob->flags = flags;

 if (data && size > 0)
  memcpy(channel->ob->data, data, size);

 return tegra_bpmp_post_request(channel);
}
