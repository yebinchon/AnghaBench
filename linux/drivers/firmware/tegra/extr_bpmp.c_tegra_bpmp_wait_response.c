
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
 int ktime_add_us (int ,unsigned long) ;
 scalar_t__ ktime_before (int ,int ) ;
 int ktime_get () ;
 scalar_t__ tegra_bpmp_is_response_ready (struct tegra_bpmp_channel*) ;

__attribute__((used)) static int tegra_bpmp_wait_response(struct tegra_bpmp_channel *channel)
{
 unsigned long timeout = channel->bpmp->soc->channels.cpu_tx.timeout;
 ktime_t end;

 end = ktime_add_us(ktime_get(), timeout);

 do {
  if (tegra_bpmp_is_response_ready(channel))
   return 0;
 } while (ktime_before(ktime_get(), end));

 return -ETIMEDOUT;
}
