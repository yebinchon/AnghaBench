
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DRM_DEBUG (char*,int const,int const,int const,int const,int const) ;

__attribute__((used)) static inline void drm_hdcp_print_ksv(const u8 *ksv)
{
 DRM_DEBUG("\t%#02x, %#02x, %#02x, %#02x, %#02x\n",
    ksv[0], ksv[1], ksv[2], ksv[3], ksv[4]);
}
