
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int u32 ;
typedef int SVGA3dVertexBuffer ;
typedef int SVGA3dSoTarget ;


 int BUILD_BUG_ON (int) ;
 scalar_t__ SVGA3D_DX_MAX_CONSTBUFFERS ;
 int SVGA3D_DX_MAX_SOTARGETS ;
 scalar_t__ SVGA3D_DX_MAX_SRVIEWS ;
 int SVGA3D_DX_MAX_VERTEXBUFFERS ;
 scalar_t__ SVGA3D_MAX_SIMULTANEOUS_RENDER_TARGETS ;
 int SVGA3D_NUM_SHADERTYPE_DX10 ;
 scalar_t__ SVGA3D_RT_MAX ;
 scalar_t__ VMW_MAX_VIEW_BINDINGS ;

__attribute__((used)) static void vmw_binding_build_asserts(void)
{
 BUILD_BUG_ON(SVGA3D_NUM_SHADERTYPE_DX10 != 3);
 BUILD_BUG_ON(SVGA3D_MAX_SIMULTANEOUS_RENDER_TARGETS > SVGA3D_RT_MAX);
 BUILD_BUG_ON(sizeof(uint32) != sizeof(u32));





 BUILD_BUG_ON(VMW_MAX_VIEW_BINDINGS < SVGA3D_RT_MAX);
 BUILD_BUG_ON(VMW_MAX_VIEW_BINDINGS < SVGA3D_DX_MAX_SRVIEWS);
 BUILD_BUG_ON(VMW_MAX_VIEW_BINDINGS < SVGA3D_DX_MAX_CONSTBUFFERS);





 BUILD_BUG_ON(SVGA3D_DX_MAX_SOTARGETS*sizeof(SVGA3dSoTarget) >
       VMW_MAX_VIEW_BINDINGS*sizeof(u32));
 BUILD_BUG_ON(SVGA3D_DX_MAX_VERTEXBUFFERS*sizeof(SVGA3dVertexBuffer) >
       VMW_MAX_VIEW_BINDINGS*sizeof(u32));
}
