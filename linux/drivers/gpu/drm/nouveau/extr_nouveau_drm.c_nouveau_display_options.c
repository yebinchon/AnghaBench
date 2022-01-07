
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRM_DEBUG_DRIVER (char*,...) ;
 int nouveau_config ;
 int nouveau_debug ;
 int nouveau_duallink ;
 int nouveau_hdmimhz ;
 int nouveau_ignorelid ;
 int nouveau_modeset ;
 int nouveau_noaccel ;
 int nouveau_nofbaccel ;
 int nouveau_runtime_pm ;
 int nouveau_tv_disable ;
 int nouveau_vram_pushbuf ;

__attribute__((used)) static void nouveau_display_options(void)
{
 DRM_DEBUG_DRIVER("Loading Nouveau with parameters:\n");

 DRM_DEBUG_DRIVER("... tv_disable   : %d\n", nouveau_tv_disable);
 DRM_DEBUG_DRIVER("... ignorelid    : %d\n", nouveau_ignorelid);
 DRM_DEBUG_DRIVER("... duallink     : %d\n", nouveau_duallink);
 DRM_DEBUG_DRIVER("... nofbaccel    : %d\n", nouveau_nofbaccel);
 DRM_DEBUG_DRIVER("... config       : %s\n", nouveau_config);
 DRM_DEBUG_DRIVER("... debug        : %s\n", nouveau_debug);
 DRM_DEBUG_DRIVER("... noaccel      : %d\n", nouveau_noaccel);
 DRM_DEBUG_DRIVER("... modeset      : %d\n", nouveau_modeset);
 DRM_DEBUG_DRIVER("... runpm        : %d\n", nouveau_runtime_pm);
 DRM_DEBUG_DRIVER("... vram_pushbuf : %d\n", nouveau_vram_pushbuf);
 DRM_DEBUG_DRIVER("... hdmimhz      : %d\n", nouveau_hdmimhz);
}
