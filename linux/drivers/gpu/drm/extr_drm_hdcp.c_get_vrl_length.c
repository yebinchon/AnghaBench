
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int drm_hdcp_be24_to_cpu (int const*) ;

__attribute__((used)) static inline u32 get_vrl_length(const u8 *buf)
{
 return drm_hdcp_be24_to_cpu(buf);
}
