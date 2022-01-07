
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DRM_HDCP_KSV_LEN ;
 scalar_t__ hweight8 (int ) ;

__attribute__((used)) static
bool intel_hdcp_is_ksv_valid(u8 *ksv)
{
 int i, ones = 0;

 for (i = 0; i < DRM_HDCP_KSV_LEN; i++)
  ones += hweight8(ksv[i]);
 if (ones != 20)
  return 0;

 return 1;
}
