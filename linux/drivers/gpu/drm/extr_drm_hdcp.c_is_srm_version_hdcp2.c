
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u8 ;


 int DRM_HDCP_2_INDICATOR ;
 int DRM_HDCP_2_SRM_ID ;

__attribute__((used)) static inline bool is_srm_version_hdcp2(const u8 *buf)
{
 return *buf == (u8)(DRM_HDCP_2_SRM_ID << 4 | DRM_HDCP_2_INDICATOR);
}
