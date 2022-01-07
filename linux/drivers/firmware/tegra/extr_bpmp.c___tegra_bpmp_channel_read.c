
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_bpmp_channel {TYPE_1__* ib; } ;
typedef int ssize_t ;
struct TYPE_2__ {int code; int data; } ;


 int memcpy (void*,int ,size_t) ;
 int tegra_bpmp_ack_response (struct tegra_bpmp_channel*) ;

__attribute__((used)) static ssize_t __tegra_bpmp_channel_read(struct tegra_bpmp_channel *channel,
      void *data, size_t size, int *ret)
{
 int err;

 if (data && size > 0)
  memcpy(data, channel->ib->data, size);

 err = tegra_bpmp_ack_response(channel);
 if (err < 0)
  return err;

 *ret = channel->ib->code;

 return 0;
}
