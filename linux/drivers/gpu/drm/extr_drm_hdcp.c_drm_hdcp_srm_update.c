
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hdcp_srm_header {int dummy; } ;


 int drm_hdcp_parse_hdcp1_srm (int const*,size_t) ;
 int drm_hdcp_parse_hdcp2_srm (int const*,size_t) ;
 scalar_t__ is_srm_version_hdcp1 (int const*) ;
 scalar_t__ is_srm_version_hdcp2 (int const*) ;

__attribute__((used)) static void drm_hdcp_srm_update(const u8 *buf, size_t count)
{
 if (count < sizeof(struct hdcp_srm_header))
  return;

 if (is_srm_version_hdcp1(buf))
  drm_hdcp_parse_hdcp1_srm(buf, count);
 else if (is_srm_version_hdcp2(buf))
  drm_hdcp_parse_hdcp2_srm(buf, count);
}
