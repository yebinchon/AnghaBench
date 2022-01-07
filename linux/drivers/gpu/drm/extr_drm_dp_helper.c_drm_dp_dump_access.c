
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef scalar_t__ u8 ;
struct drm_dp_aux {int name; } ;


 scalar_t__ DP_AUX_NATIVE_READ ;
 int DRM_DEBUG_DP (char*,int ,int ,char const*,int,...) ;
 int min (int,int) ;

__attribute__((used)) static inline void
drm_dp_dump_access(const struct drm_dp_aux *aux,
     u8 request, uint offset, void *buffer, int ret)
{
 const char *arrow = request == DP_AUX_NATIVE_READ ? "->" : "<-";

 if (ret > 0)
  DRM_DEBUG_DP("%s: 0x%05x AUX %s (ret=%3d) %*ph\n",
        aux->name, offset, arrow, ret, min(ret, 20), buffer);
 else
  DRM_DEBUG_DP("%s: 0x%05x AUX %s (ret=%3d)\n",
        aux->name, offset, arrow, ret);
}
