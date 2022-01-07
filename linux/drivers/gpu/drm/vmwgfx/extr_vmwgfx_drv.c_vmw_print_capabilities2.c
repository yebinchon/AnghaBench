
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DRM_INFO (char*) ;
 int SVGA_CAP2_GROW_OTABLE ;
 int SVGA_CAP2_INTRA_SURFACE_COPY ;

__attribute__((used)) static void vmw_print_capabilities2(uint32_t capabilities2)
{
 DRM_INFO("Capabilities2:\n");
 if (capabilities2 & SVGA_CAP2_GROW_OTABLE)
  DRM_INFO("  Grow oTable.\n");
 if (capabilities2 & SVGA_CAP2_INTRA_SURFACE_COPY)
  DRM_INFO("  IntraSurface copy.\n");
}
