
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bpmp_channel {int * ob; int ivc; } ;


 scalar_t__ IS_ERR (void*) ;
 void* tegra_ivc_write_get_next_frame (int ) ;

__attribute__((used)) static bool tegra186_bpmp_is_channel_free(struct tegra_bpmp_channel *channel)
{
 void *frame;

 frame = tegra_ivc_write_get_next_frame(channel->ivc);
 if (IS_ERR(frame)) {
  channel->ob = ((void*)0);
  return 0;
 }

 channel->ob = frame;

 return 1;
}
