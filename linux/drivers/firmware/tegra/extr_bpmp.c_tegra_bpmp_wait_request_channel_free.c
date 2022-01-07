
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tegra_bpmp_channel {TYPE_4__* bpmp; } ;
typedef int ktime_t ;
struct TYPE_8__ {TYPE_3__* soc; } ;
struct TYPE_5__ {unsigned long timeout; } ;
struct TYPE_6__ {TYPE_1__ cpu_tx; } ;
struct TYPE_7__ {TYPE_2__ channels; } ;


 int ETIMEDOUT ;
 unsigned long ktime_us_delta (int ,int ) ;
 int local_clock () ;
 int ns_to_ktime (int ) ;
 scalar_t__ tegra_bpmp_is_request_channel_free (struct tegra_bpmp_channel*) ;

__attribute__((used)) static int
tegra_bpmp_wait_request_channel_free(struct tegra_bpmp_channel *channel)
{
 unsigned long timeout = channel->bpmp->soc->channels.cpu_tx.timeout;
 ktime_t start, now;

 start = ns_to_ktime(local_clock());

 do {
  if (tegra_bpmp_is_request_channel_free(channel))
   return 0;

  now = ns_to_ktime(local_clock());
 } while (ktime_us_delta(now, start) < timeout);

 return -ETIMEDOUT;
}
