
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bpmp_channel {unsigned int index; int bpmp; } ;


 scalar_t__ MA_ACKD (unsigned int) ;
 scalar_t__ bpmp_channel_status (int ,unsigned int) ;

__attribute__((used)) static bool tegra210_bpmp_is_response_ready(struct tegra_bpmp_channel *channel)
{
 unsigned int index = channel->index;

 return bpmp_channel_status(channel->bpmp, index) == MA_ACKD(index);
}
