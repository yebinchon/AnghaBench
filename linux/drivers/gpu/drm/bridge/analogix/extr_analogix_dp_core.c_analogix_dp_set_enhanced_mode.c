
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct analogix_dp_device {int dummy; } ;


 int analogix_dp_enable_enhanced_mode (struct analogix_dp_device*,int ) ;
 int analogix_dp_enable_rx_to_enhanced_mode (struct analogix_dp_device*,int ) ;
 int analogix_dp_is_enhanced_mode_available (struct analogix_dp_device*,int *) ;

__attribute__((used)) static int analogix_dp_set_enhanced_mode(struct analogix_dp_device *dp)
{
 u8 data;
 int ret;

 ret = analogix_dp_is_enhanced_mode_available(dp, &data);
 if (ret < 0)
  return ret;

 ret = analogix_dp_enable_rx_to_enhanced_mode(dp, data);
 if (ret < 0)
  return ret;

 analogix_dp_enable_enhanced_mode(dp, data);

 return 0;
}
