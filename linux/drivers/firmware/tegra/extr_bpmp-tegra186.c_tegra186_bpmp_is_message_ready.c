
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bpmp_channel {int * ib; int ivc; } ;


 scalar_t__ IS_ERR (void*) ;
 void* tegra_ivc_read_get_next_frame (int ) ;

__attribute__((used)) static bool tegra186_bpmp_is_message_ready(struct tegra_bpmp_channel *channel)
{
 void *frame;

 frame = tegra_ivc_read_get_next_frame(channel->ivc);
 if (IS_ERR(frame)) {
  channel->ib = ((void*)0);
  return 0;
 }

 channel->ib = frame;

 return 1;
}
