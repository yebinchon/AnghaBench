
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cdn_dp_device {int dummy; } ;


 int DP_GET_SINK_COUNT (int ) ;
 int DP_SINK_COUNT ;
 int cdn_dp_dpcd_read (struct cdn_dp_device*,int ,int *,int) ;

__attribute__((used)) static int cdn_dp_get_sink_count(struct cdn_dp_device *dp, u8 *sink_count)
{
 int ret;
 u8 value;

 *sink_count = 0;
 ret = cdn_dp_dpcd_read(dp, DP_SINK_COUNT, &value, 1);
 if (ret)
  return ret;

 *sink_count = DP_GET_SINK_COUNT(value);
 return 0;
}
