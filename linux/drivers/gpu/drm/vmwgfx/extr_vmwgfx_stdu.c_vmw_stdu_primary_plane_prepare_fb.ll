; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_stdu.c_vmw_stdu_primary_plane_prepare_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_stdu.c_vmw_stdu_primary_plane_prepare_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i64, i64, %struct.drm_crtc*, %struct.drm_framebuffer* }
%struct.drm_crtc = type { i32 }
%struct.drm_framebuffer = type { i32*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.vmw_private = type { i32 }
%struct.vmw_framebuffer = type { i64 }
%struct.vmw_plane_state = type { i64, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, %struct.drm_vmw_size }
%struct.drm_vmw_size = type { i64, i64, i32, i32 }
%struct.vmw_framebuffer_surface = type { %struct.vmw_surface* }
%struct.vmw_surface = type { i64, i32*, i32, i32, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@SAME_AS_DISPLAY = common dso_local global i32 0, align 4
@SEPARATE_BO = common dso_local global i32 0, align 4
@SEPARATE_SURFACE = common dso_local global i32 0, align 4
@SVGA3D_X8R8G8B8 = common dso_local global i64 0, align 8
@SVGA3D_R5G6B5 = common dso_local global i64 0, align 8
@SVGA3D_P8 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Invalid format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SVGA3D_MS_PATTERN_NONE = common dso_local global i32 0, align 4
@SVGA3D_MS_QUALITY_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Couldn't allocate STDU surface.\0A\00", align 1
@SVGA_CAP_3D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @vmw_stdu_primary_plane_prepare_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_stdu_primary_plane_prepare_fb(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca %struct.vmw_framebuffer*, align 8
  %9 = alloca %struct.vmw_plane_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vmw_framebuffer_surface*, align 8
  %12 = alloca %struct.drm_crtc*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.vmw_surface, align 8
  %17 = alloca %struct.drm_vmw_size, align 8
  %18 = alloca %struct.drm_vmw_size, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %19 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %20 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.vmw_private* @vmw_priv(i32 %21)
  store %struct.vmw_private* %22, %struct.vmw_private** %6, align 8
  %23 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %24 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %23, i32 0, i32 3
  %25 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %24, align 8
  store %struct.drm_framebuffer* %25, %struct.drm_framebuffer** %7, align 8
  %26 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %27 = call %struct.vmw_plane_state* @vmw_plane_state_to_vps(%struct.drm_plane_state* %26)
  store %struct.vmw_plane_state* %27, %struct.vmw_plane_state** %9, align 8
  %28 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %29 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %28, i32 0, i32 2
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %29, align 8
  store %struct.drm_crtc* %30, %struct.drm_crtc** %12, align 8
  %31 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %32 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %13, align 8
  %34 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %35 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %14, align 8
  %37 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %38 = icmp ne %struct.drm_framebuffer* %37, null
  br i1 %38, label %55, label %39

39:                                               ; preds = %2
  %40 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %9, align 8
  %41 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %40, i32 0, i32 3
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = icmp ne %struct.TYPE_8__* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %9, align 8
  %46 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @WARN_ON(i32 %49)
  %51 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %9, align 8
  %52 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %51, i32 0, i32 3
  %53 = call i32 @vmw_surface_unreference(%struct.TYPE_8__** %52)
  br label %54

54:                                               ; preds = %44, %39
  store i32 0, i32* %3, align 4
  br label %303

55:                                               ; preds = %2
  %56 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %57 = call %struct.vmw_framebuffer* @vmw_framebuffer_to_vfb(%struct.drm_framebuffer* %56)
  store %struct.vmw_framebuffer* %57, %struct.vmw_framebuffer** %8, align 8
  %58 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %8, align 8
  %59 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %66

63:                                               ; preds = %55
  %64 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %65 = call %struct.vmw_framebuffer_surface* @vmw_framebuffer_to_vfbs(%struct.drm_framebuffer* %64)
  br label %66

66:                                               ; preds = %63, %62
  %67 = phi %struct.vmw_framebuffer_surface* [ null, %62 ], [ %65, %63 ]
  store %struct.vmw_framebuffer_surface* %67, %struct.vmw_framebuffer_surface** %11, align 8
  %68 = load %struct.vmw_framebuffer_surface*, %struct.vmw_framebuffer_surface** %11, align 8
  %69 = icmp ne %struct.vmw_framebuffer_surface* %68, null
  br i1 %69, label %70, label %90

70:                                               ; preds = %66
  %71 = load %struct.vmw_framebuffer_surface*, %struct.vmw_framebuffer_surface** %11, align 8
  %72 = getelementptr inbounds %struct.vmw_framebuffer_surface, %struct.vmw_framebuffer_surface* %71, i32 0, i32 0
  %73 = load %struct.vmw_surface*, %struct.vmw_surface** %72, align 8
  %74 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %13, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %70
  %80 = load %struct.vmw_framebuffer_surface*, %struct.vmw_framebuffer_surface** %11, align 8
  %81 = getelementptr inbounds %struct.vmw_framebuffer_surface, %struct.vmw_framebuffer_surface* %80, i32 0, i32 0
  %82 = load %struct.vmw_surface*, %struct.vmw_surface** %81, align 8
  %83 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %14, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* @SAME_AS_DISPLAY, align 4
  store i32 %89, i32* %10, align 4
  br label %100

90:                                               ; preds = %79, %70, %66
  %91 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %8, align 8
  %92 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @SEPARATE_BO, align 4
  store i32 %96, i32* %10, align 4
  br label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @SEPARATE_SURFACE, align 4
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %97, %95
  br label %100

100:                                              ; preds = %99, %88
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @SAME_AS_DISPLAY, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %228

104:                                              ; preds = %100
  %105 = bitcast %struct.drm_vmw_size* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %105, i8 0, i64 24, i1 false)
  %106 = load i64, i64* %13, align 8
  %107 = getelementptr inbounds %struct.drm_vmw_size, %struct.drm_vmw_size* %17, i32 0, i32 0
  store i64 %106, i64* %107, align 8
  %108 = load i64, i64* %14, align 8
  %109 = getelementptr inbounds %struct.drm_vmw_size, %struct.drm_vmw_size* %17, i32 0, i32 1
  store i64 %108, i64* %109, align 8
  %110 = getelementptr inbounds %struct.drm_vmw_size, %struct.drm_vmw_size* %17, i32 0, i32 2
  store i32 1, i32* %110, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @SEPARATE_BO, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %146

114:                                              ; preds = %104
  %115 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %116 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %115, i32 0, i32 2
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %121, 8
  switch i32 %122, label %132 [
    i32 32, label %123
    i32 16, label %126
    i32 8, label %129
  ]

123:                                              ; preds = %114
  %124 = load i64, i64* @SVGA3D_X8R8G8B8, align 8
  %125 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %16, i32 0, i32 0
  store i64 %124, i64* %125, align 8
  br label %136

126:                                              ; preds = %114
  %127 = load i64, i64* @SVGA3D_R5G6B5, align 8
  %128 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %16, i32 0, i32 0
  store i64 %127, i64* %128, align 8
  br label %136

129:                                              ; preds = %114
  %130 = load i64, i64* @SVGA3D_P8, align 8
  %131 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %16, i32 0, i32 0
  store i64 %130, i64* %131, align 8
  br label %136

132:                                              ; preds = %114
  %133 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %303

136:                                              ; preds = %129, %126, %123
  %137 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %16, i32 0, i32 5
  store i64 0, i64* %137, align 8
  %138 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %16, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  store i32 1, i32* %140, align 4
  %141 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %16, i32 0, i32 4
  store i64 0, i64* %141, align 8
  %142 = load i32, i32* @SVGA3D_MS_PATTERN_NONE, align 4
  %143 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %16, i32 0, i32 3
  store i32 %142, i32* %143, align 4
  %144 = load i32, i32* @SVGA3D_MS_QUALITY_NONE, align 4
  %145 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %16, i32 0, i32 2
  store i32 %144, i32* %145, align 8
  br label %152

146:                                              ; preds = %104
  %147 = load %struct.vmw_framebuffer_surface*, %struct.vmw_framebuffer_surface** %11, align 8
  %148 = getelementptr inbounds %struct.vmw_framebuffer_surface, %struct.vmw_framebuffer_surface* %147, i32 0, i32 0
  %149 = load %struct.vmw_surface*, %struct.vmw_surface** %148, align 8
  %150 = bitcast %struct.vmw_surface* %16 to i8*
  %151 = bitcast %struct.vmw_surface* %149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %150, i8* align 8 %151, i64 56, i1 false)
  br label %152

152:                                              ; preds = %146, %136
  %153 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %9, align 8
  %154 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %153, i32 0, i32 3
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = icmp ne %struct.TYPE_8__* %155, null
  br i1 %156, label %157, label %195

157:                                              ; preds = %152
  %158 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %9, align 8
  %159 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %158, i32 0, i32 3
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  %162 = bitcast %struct.drm_vmw_size* %18 to i8*
  %163 = bitcast %struct.drm_vmw_size* %161 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %162, i8* align 8 %163, i64 24, i1 false)
  %164 = getelementptr inbounds %struct.drm_vmw_size, %struct.drm_vmw_size* %18, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.drm_vmw_size, %struct.drm_vmw_size* %17, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %165, %167
  br i1 %168, label %184, label %169

169:                                              ; preds = %157
  %170 = getelementptr inbounds %struct.drm_vmw_size, %struct.drm_vmw_size* %18, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.drm_vmw_size, %struct.drm_vmw_size* %17, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %171, %173
  br i1 %174, label %184, label %175

175:                                              ; preds = %169
  %176 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %9, align 8
  %177 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %176, i32 0, i32 3
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %16, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %180, %182
  br i1 %183, label %184, label %194

184:                                              ; preds = %175, %169, %157
  %185 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %9, align 8
  %186 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  %189 = zext i1 %188 to i32
  %190 = call i32 @WARN_ON(i32 %189)
  %191 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %9, align 8
  %192 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %191, i32 0, i32 3
  %193 = call i32 @vmw_surface_unreference(%struct.TYPE_8__** %192)
  br label %194

194:                                              ; preds = %184, %175
  br label %195

195:                                              ; preds = %194, %152
  %196 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %9, align 8
  %197 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %196, i32 0, i32 3
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = icmp ne %struct.TYPE_8__* %198, null
  br i1 %199, label %227, label %200

200:                                              ; preds = %195
  %201 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %202 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %16, i32 0, i32 5
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %16, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %16, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %16, i32 0, i32 4
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %16, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %16, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %9, align 8
  %219 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %218, i32 0, i32 3
  %220 = call i32 @vmw_surface_gb_priv_define(i32 %203, i32 0, i64 %205, i64 %207, i32 1, i32 %211, i64 %213, i32 0, %struct.drm_vmw_size* byval(%struct.drm_vmw_size) align 8 %17, i32 %215, i32 %217, %struct.TYPE_8__** %219)
  store i32 %220, i32* %15, align 4
  %221 = load i32, i32* %15, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %200
  %224 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %225 = load i32, i32* %15, align 4
  store i32 %225, i32* %3, align 4
  br label %303

226:                                              ; preds = %200
  br label %227

227:                                              ; preds = %226, %195
  br label %250

228:                                              ; preds = %100
  %229 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %9, align 8
  %230 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %229, i32 0, i32 3
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %230, align 8
  %232 = icmp ne %struct.TYPE_8__* %231, null
  br i1 %232, label %233, label %243

233:                                              ; preds = %228
  %234 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %9, align 8
  %235 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  %238 = zext i1 %237 to i32
  %239 = call i32 @WARN_ON(i32 %238)
  %240 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %9, align 8
  %241 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %240, i32 0, i32 3
  %242 = call i32 @vmw_surface_unreference(%struct.TYPE_8__** %241)
  br label %243

243:                                              ; preds = %233, %228
  %244 = load %struct.vmw_framebuffer_surface*, %struct.vmw_framebuffer_surface** %11, align 8
  %245 = getelementptr inbounds %struct.vmw_framebuffer_surface, %struct.vmw_framebuffer_surface* %244, i32 0, i32 0
  %246 = load %struct.vmw_surface*, %struct.vmw_surface** %245, align 8
  %247 = call %struct.TYPE_8__* @vmw_surface_reference(%struct.vmw_surface* %246)
  %248 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %9, align 8
  %249 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %248, i32 0, i32 3
  store %struct.TYPE_8__* %247, %struct.TYPE_8__** %249, align 8
  br label %250

250:                                              ; preds = %243, %227
  %251 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %9, align 8
  %252 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %251, i32 0, i32 3
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %252, align 8
  %254 = icmp ne %struct.TYPE_8__* %253, null
  br i1 %254, label %255, label %269

255:                                              ; preds = %250
  %256 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %9, align 8
  %257 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %256, i32 0, i32 3
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 1
  %260 = call i32 @vmw_resource_pin(i32* %259, i32 0)
  store i32 %260, i32* %15, align 4
  %261 = load i32, i32* %15, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %255
  br label %298

264:                                              ; preds = %255
  %265 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %9, align 8
  %266 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = add nsw i64 %267, 1
  store i64 %268, i64* %266, align 8
  br label %269

269:                                              ; preds = %264, %250
  %270 = load i32, i32* %10, align 4
  %271 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %9, align 8
  %272 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %271, i32 0, i32 1
  store i32 %270, i32* %272, align 8
  %273 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %9, align 8
  %274 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @SEPARATE_BO, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %278, label %297

278:                                              ; preds = %269
  %279 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %280 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @SVGA_CAP_3D, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %297, label %285

285:                                              ; preds = %278
  %286 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %287 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %292 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = sdiv i32 %290, %293
  %295 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %9, align 8
  %296 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %295, i32 0, i32 2
  store i32 %294, i32* %296, align 4
  br label %297

297:                                              ; preds = %285, %278, %269
  store i32 0, i32* %3, align 4
  br label %303

298:                                              ; preds = %263
  %299 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %9, align 8
  %300 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %299, i32 0, i32 3
  %301 = call i32 @vmw_surface_unreference(%struct.TYPE_8__** %300)
  %302 = load i32, i32* %15, align 4
  store i32 %302, i32* %3, align 4
  br label %303

303:                                              ; preds = %298, %297, %223, %132, %54
  %304 = load i32, i32* %3, align 4
  ret i32 %304
}

declare dso_local %struct.vmw_private* @vmw_priv(i32) #1

declare dso_local %struct.vmw_plane_state* @vmw_plane_state_to_vps(%struct.drm_plane_state*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @vmw_surface_unreference(%struct.TYPE_8__**) #1

declare dso_local %struct.vmw_framebuffer* @vmw_framebuffer_to_vfb(%struct.drm_framebuffer*) #1

declare dso_local %struct.vmw_framebuffer_surface* @vmw_framebuffer_to_vfbs(%struct.drm_framebuffer*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @DRM_ERROR(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vmw_surface_gb_priv_define(i32, i32, i64, i64, i32, i32, i64, i32, %struct.drm_vmw_size* byval(%struct.drm_vmw_size) align 8, i32, i32, %struct.TYPE_8__**) #1

declare dso_local %struct.TYPE_8__* @vmw_surface_reference(%struct.vmw_surface*) #1

declare dso_local i32 @vmw_resource_pin(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
