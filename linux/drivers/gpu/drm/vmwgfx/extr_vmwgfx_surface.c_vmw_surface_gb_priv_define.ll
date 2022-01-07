; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_surface.c_vmw_surface_gb_priv_define.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_surface.c_vmw_surface_gb_priv_define.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_operation_ctx = type { i32, i32 }
%struct.drm_device = type { i32 }
%struct.drm_vmw_size = type { i64, i64 }
%struct.vmw_surface = type { i32, i32, i32, i32, %struct.TYPE_6__, i64*, %struct.drm_vmw_size, i32, i32, i32, i64, i32, i32*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.vmw_private = type { i64, i64, i64, i64, i64, i32, i32 }
%struct.vmw_user_surface = type { %struct.vmw_surface, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.svga3d_surface_desc = type { i64 }

@__const.vmw_surface_gb_priv_define.ctx = private unnamed_addr constant %struct.ttm_operation_ctx { i32 1, i32 0 }, align 4
@.str = private unnamed_addr constant [38 x i8] c"Invalid Screen Target surface format.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%ux%u\0A, exceeds max surface size %ux%u\00", align 1
@SVGA3DBLOCKDESC_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Invalid surface format.\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Tried to create DX surface on non-DX host.\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"Out of graphics memory for surface creation.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SVGA3D_TEX_FILTER_NONE = common dso_local global i32 0, align 4
@SVGA3D_SURFACE_CUBEMAP = common dso_local global i32 0, align 4
@SVGA3D_MAX_SURFACE_FACES = common dso_local global i32 0, align 4
@SVGA3D_SURFACE_MULTISAMPLE = common dso_local global i32 0, align 4
@SVGA3D_SURFACE_BIND_STREAM_OUTPUT = common dso_local global i32 0, align 4
@vmw_du_screen_target = common dso_local global i64 0, align 8
@SVGA3D_SURFACE_SCREENTARGET = common dso_local global i32 0, align 4
@vmw_user_surface_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_surface_gb_priv_define(%struct.drm_device* %0, i64 %1, i32 %2, i32 %3, i32 %4, i64 %5, i64 %6, i64 %7, %struct.drm_vmw_size* byval(%struct.drm_vmw_size) align 8 %8, i32 %9, i32 %10, %struct.vmw_surface** %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.drm_device*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.vmw_surface**, align 8
  %25 = alloca %struct.vmw_private*, align 8
  %26 = alloca %struct.vmw_user_surface*, align 8
  %27 = alloca %struct.ttm_operation_ctx, align 4
  %28 = alloca %struct.vmw_surface*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.svga3d_surface_desc*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %14, align 8
  store i64 %1, i64* %15, align 8
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i64 %5, i64* %19, align 8
  store i64 %6, i64* %20, align 8
  store i64 %7, i64* %21, align 8
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store %struct.vmw_surface** %11, %struct.vmw_surface*** %24, align 8
  %33 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %34 = call %struct.vmw_private* @vmw_priv(%struct.drm_device* %33)
  store %struct.vmw_private* %34, %struct.vmw_private** %25, align 8
  %35 = bitcast %struct.ttm_operation_ctx* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 bitcast (%struct.ttm_operation_ctx* @__const.vmw_surface_gb_priv_define.ctx to i8*), i64 8, i1 false)
  store i32 1, i32* %30, align 4
  store i32 1, i32* %31, align 4
  %36 = load %struct.vmw_surface**, %struct.vmw_surface*** %24, align 8
  store %struct.vmw_surface* null, %struct.vmw_surface** %36, align 8
  %37 = load i32, i32* %18, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %12
  %40 = load i32, i32* %17, align 4
  %41 = call i32 @svga3dsurface_is_screen_target_format(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = call i32 (i8*, ...) @VMW_DEBUG_USER(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %13, align 4
  br label %310

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.drm_vmw_size, %struct.drm_vmw_size* %8, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.vmw_private*, %struct.vmw_private** %25, align 8
  %51 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %49, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.drm_vmw_size, %struct.drm_vmw_size* %8, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.vmw_private*, %struct.vmw_private** %25, align 8
  %58 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %54, %47
  %62 = getelementptr inbounds %struct.drm_vmw_size, %struct.drm_vmw_size* %8, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.drm_vmw_size, %struct.drm_vmw_size* %8, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.vmw_private*, %struct.vmw_private** %25, align 8
  %67 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.vmw_private*, %struct.vmw_private** %25, align 8
  %70 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i8*, ...) @VMW_DEBUG_USER(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %63, i64 %65, i64 %68, i64 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %13, align 4
  br label %310

75:                                               ; preds = %54
  br label %92

76:                                               ; preds = %12
  %77 = load i32, i32* %17, align 4
  %78 = call %struct.svga3d_surface_desc* @svga3dsurface_get_desc(i32 %77)
  store %struct.svga3d_surface_desc* %78, %struct.svga3d_surface_desc** %32, align 8
  %79 = load %struct.svga3d_surface_desc*, %struct.svga3d_surface_desc** %32, align 8
  %80 = getelementptr inbounds %struct.svga3d_surface_desc, %struct.svga3d_surface_desc* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SVGA3DBLOCKDESC_NONE, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %76
  %88 = call i32 (i8*, ...) @VMW_DEBUG_USER(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %13, align 4
  br label %310

91:                                               ; preds = %76
  br label %92

92:                                               ; preds = %91, %75
  %93 = load i64, i64* %21, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load %struct.vmw_private*, %struct.vmw_private** %25, align 8
  %97 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %95
  %101 = call i32 (i8*, ...) @VMW_DEBUG_USER(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %13, align 4
  br label %310

104:                                              ; preds = %95, %92
  %105 = load %struct.vmw_private*, %struct.vmw_private** %25, align 8
  %106 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %105, i32 0, i32 5
  %107 = call i32 @ttm_read_lock(i32* %106, i32 1)
  store i32 %107, i32* %29, align 4
  %108 = load i32, i32* %29, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %104
  %114 = load i32, i32* %29, align 4
  store i32 %114, i32* %13, align 4
  br label %310

115:                                              ; preds = %104
  %116 = load %struct.vmw_private*, %struct.vmw_private** %25, align 8
  %117 = call i32 @vmw_mem_glob(%struct.vmw_private* %116)
  %118 = load i64, i64* %15, align 8
  %119 = call i32 @ttm_mem_global_alloc(i32 %117, i64 %118, %struct.ttm_operation_ctx* %27)
  store i32 %119, i32* %29, align 4
  %120 = load i32, i32* %29, align 4
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i32
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %115
  %126 = load i32, i32* %29, align 4
  %127 = load i32, i32* @ERESTARTSYS, align 4
  %128 = sub nsw i32 0, %127
  %129 = icmp ne i32 %126, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %125
  br label %305

133:                                              ; preds = %115
  %134 = load i32, i32* @GFP_KERNEL, align 4
  %135 = call %struct.vmw_user_surface* @kzalloc(i32 120, i32 %134)
  store %struct.vmw_user_surface* %135, %struct.vmw_user_surface** %26, align 8
  %136 = load %struct.vmw_user_surface*, %struct.vmw_user_surface** %26, align 8
  %137 = icmp ne %struct.vmw_user_surface* %136, null
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call i64 @unlikely(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %133
  %143 = load i32, i32* @ENOMEM, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %29, align 4
  br label %300

145:                                              ; preds = %133
  %146 = load %struct.vmw_user_surface*, %struct.vmw_user_surface** %26, align 8
  %147 = getelementptr inbounds %struct.vmw_user_surface, %struct.vmw_user_surface* %146, i32 0, i32 0
  %148 = load %struct.vmw_surface**, %struct.vmw_surface*** %24, align 8
  store %struct.vmw_surface* %147, %struct.vmw_surface** %148, align 8
  %149 = load i64, i64* %15, align 8
  %150 = load %struct.vmw_user_surface*, %struct.vmw_user_surface** %26, align 8
  %151 = getelementptr inbounds %struct.vmw_user_surface, %struct.vmw_user_surface* %150, i32 0, i32 2
  store i64 %149, i64* %151, align 8
  %152 = load %struct.vmw_user_surface*, %struct.vmw_user_surface** %26, align 8
  %153 = getelementptr inbounds %struct.vmw_user_surface, %struct.vmw_user_surface* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  store i32 0, i32* %155, align 8
  %156 = load %struct.vmw_user_surface*, %struct.vmw_user_surface** %26, align 8
  %157 = getelementptr inbounds %struct.vmw_user_surface, %struct.vmw_user_surface* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  store i32* null, i32** %159, align 8
  %160 = load %struct.vmw_user_surface*, %struct.vmw_user_surface** %26, align 8
  %161 = getelementptr inbounds %struct.vmw_user_surface, %struct.vmw_user_surface* %160, i32 0, i32 0
  store %struct.vmw_surface* %161, %struct.vmw_surface** %28, align 8
  %162 = load i32, i32* %16, align 4
  %163 = load %struct.vmw_surface*, %struct.vmw_surface** %28, align 8
  %164 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* %17, align 4
  %166 = load %struct.vmw_surface*, %struct.vmw_surface** %28, align 8
  %167 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %166, i32 0, i32 7
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* %18, align 4
  %169 = load %struct.vmw_surface*, %struct.vmw_surface** %28, align 8
  %170 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load i64, i64* %19, align 8
  %172 = load %struct.vmw_surface*, %struct.vmw_surface** %28, align 8
  %173 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %172, i32 0, i32 5
  %174 = load i64*, i64** %173, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 0
  store i64 %171, i64* %175, align 8
  %176 = load %struct.vmw_surface*, %struct.vmw_surface** %28, align 8
  %177 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %176, i32 0, i32 2
  store i32 1, i32* %177, align 8
  %178 = load %struct.vmw_surface*, %struct.vmw_surface** %28, align 8
  %179 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %178, i32 0, i32 13
  store i32* null, i32** %179, align 8
  %180 = load %struct.vmw_surface*, %struct.vmw_surface** %28, align 8
  %181 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %180, i32 0, i32 12
  store i32* null, i32** %181, align 8
  %182 = load %struct.vmw_surface*, %struct.vmw_surface** %28, align 8
  %183 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %182, i32 0, i32 6
  %184 = bitcast %struct.drm_vmw_size* %183 to i8*
  %185 = bitcast %struct.drm_vmw_size* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %184, i8* align 8 %185, i64 16, i1 false)
  %186 = load i32, i32* @SVGA3D_TEX_FILTER_NONE, align 4
  %187 = load %struct.vmw_surface*, %struct.vmw_surface** %28, align 8
  %188 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %187, i32 0, i32 11
  store i32 %186, i32* %188, align 8
  %189 = load i64, i64* %21, align 8
  %190 = load %struct.vmw_surface*, %struct.vmw_surface** %28, align 8
  %191 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %190, i32 0, i32 10
  store i64 %189, i64* %191, align 8
  %192 = load i64, i64* %20, align 8
  %193 = trunc i64 %192 to i32
  %194 = load %struct.vmw_surface*, %struct.vmw_surface** %28, align 8
  %195 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %194, i32 0, i32 3
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* %22, align 4
  %197 = load %struct.vmw_surface*, %struct.vmw_surface** %28, align 8
  %198 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %197, i32 0, i32 9
  store i32 %196, i32* %198, align 8
  %199 = load i32, i32* %23, align 4
  %200 = load %struct.vmw_surface*, %struct.vmw_surface** %28, align 8
  %201 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %200, i32 0, i32 8
  store i32 %199, i32* %201, align 4
  %202 = load i64, i64* %21, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %145
  %205 = load i64, i64* %21, align 8
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %30, align 4
  br label %215

207:                                              ; preds = %145
  %208 = load i32, i32* %16, align 4
  %209 = load i32, i32* @SVGA3D_SURFACE_CUBEMAP, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = load i32, i32* @SVGA3D_MAX_SURFACE_FACES, align 4
  store i32 %213, i32* %30, align 4
  br label %214

214:                                              ; preds = %212, %207
  br label %215

215:                                              ; preds = %214, %204
  %216 = load %struct.vmw_surface*, %struct.vmw_surface** %28, align 8
  %217 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @SVGA3D_SURFACE_MULTISAMPLE, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %215
  %223 = load %struct.vmw_surface*, %struct.vmw_surface** %28, align 8
  %224 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %31, align 4
  br label %226

226:                                              ; preds = %222, %215
  %227 = load %struct.vmw_surface*, %struct.vmw_surface** %28, align 8
  %228 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %227, i32 0, i32 7
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.vmw_surface*, %struct.vmw_surface** %28, align 8
  %231 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %230, i32 0, i32 6
  %232 = load %struct.vmw_surface*, %struct.vmw_surface** %28, align 8
  %233 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %232, i32 0, i32 5
  %234 = load i64*, i64** %233, align 8
  %235 = getelementptr inbounds i64, i64* %234, i64 0
  %236 = load i64, i64* %235, align 8
  %237 = load i32, i32* %30, align 4
  %238 = load i32, i32* %31, align 4
  %239 = bitcast %struct.drm_vmw_size* %231 to { i64, i64 }*
  %240 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %239, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = call i32 @svga3dsurface_get_serialized_size_extended(i32 %229, i64 %241, i64 %243, i64 %236, i32 %237, i32 %238)
  %245 = load %struct.vmw_surface*, %struct.vmw_surface** %28, align 8
  %246 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %245, i32 0, i32 4
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  store i32 %244, i32* %247, align 8
  %248 = load %struct.vmw_surface*, %struct.vmw_surface** %28, align 8
  %249 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @SVGA3D_SURFACE_BIND_STREAM_OUTPUT, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %262

254:                                              ; preds = %226
  %255 = load %struct.vmw_surface*, %struct.vmw_surface** %28, align 8
  %256 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %255, i32 0, i32 4
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = sext i32 %258 to i64
  %260 = add i64 %259, 4
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %257, align 8
  br label %262

262:                                              ; preds = %254, %226
  %263 = load %struct.vmw_private*, %struct.vmw_private** %25, align 8
  %264 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @vmw_du_screen_target, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %291

268:                                              ; preds = %262
  %269 = load i32, i32* %18, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %291

271:                                              ; preds = %268
  %272 = getelementptr inbounds %struct.drm_vmw_size, %struct.drm_vmw_size* %8, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load %struct.vmw_private*, %struct.vmw_private** %25, align 8
  %275 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %274, i32 0, i32 3
  %276 = load i64, i64* %275, align 8
  %277 = icmp sle i64 %273, %276
  br i1 %277, label %278, label %291

278:                                              ; preds = %271
  %279 = getelementptr inbounds %struct.drm_vmw_size, %struct.drm_vmw_size* %8, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.vmw_private*, %struct.vmw_private** %25, align 8
  %282 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %281, i32 0, i32 4
  %283 = load i64, i64* %282, align 8
  %284 = icmp sle i64 %280, %283
  br i1 %284, label %285, label %291

285:                                              ; preds = %278
  %286 = load i32, i32* @SVGA3D_SURFACE_SCREENTARGET, align 4
  %287 = load %struct.vmw_surface*, %struct.vmw_surface** %28, align 8
  %288 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = or i32 %289, %286
  store i32 %290, i32* %288, align 8
  br label %291

291:                                              ; preds = %285, %278, %271, %268, %262
  %292 = load %struct.vmw_private*, %struct.vmw_private** %25, align 8
  %293 = load %struct.vmw_surface*, %struct.vmw_surface** %28, align 8
  %294 = load i32, i32* @vmw_user_surface_free, align 4
  %295 = call i32 @vmw_surface_init(%struct.vmw_private* %292, %struct.vmw_surface* %293, i32 %294)
  store i32 %295, i32* %29, align 4
  %296 = load %struct.vmw_private*, %struct.vmw_private** %25, align 8
  %297 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %296, i32 0, i32 5
  %298 = call i32 @ttm_read_unlock(i32* %297)
  %299 = load i32, i32* %29, align 4
  store i32 %299, i32* %13, align 4
  br label %310

300:                                              ; preds = %142
  %301 = load %struct.vmw_private*, %struct.vmw_private** %25, align 8
  %302 = call i32 @vmw_mem_glob(%struct.vmw_private* %301)
  %303 = load i64, i64* %15, align 8
  %304 = call i32 @ttm_mem_global_free(i32 %302, i64 %303)
  br label %305

305:                                              ; preds = %300, %132
  %306 = load %struct.vmw_private*, %struct.vmw_private** %25, align 8
  %307 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %306, i32 0, i32 5
  %308 = call i32 @ttm_read_unlock(i32* %307)
  %309 = load i32, i32* %29, align 4
  store i32 %309, i32* %13, align 4
  br label %310

310:                                              ; preds = %305, %291, %113, %100, %87, %61, %43
  %311 = load i32, i32* %13, align 4
  ret i32 %311
}

declare dso_local %struct.vmw_private* @vmw_priv(%struct.drm_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @svga3dsurface_is_screen_target_format(i32) #1

declare dso_local i32 @VMW_DEBUG_USER(i8*, ...) #1

declare dso_local %struct.svga3d_surface_desc* @svga3dsurface_get_desc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ttm_read_lock(i32*, i32) #1

declare dso_local i32 @ttm_mem_global_alloc(i32, i64, %struct.ttm_operation_ctx*) #1

declare dso_local i32 @vmw_mem_glob(%struct.vmw_private*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.vmw_user_surface* @kzalloc(i32, i32) #1

declare dso_local i32 @svga3dsurface_get_serialized_size_extended(i32, i64, i64, i64, i32, i32) #1

declare dso_local i32 @vmw_surface_init(%struct.vmw_private*, %struct.vmw_surface*, i32) #1

declare dso_local i32 @ttm_read_unlock(i32*) #1

declare dso_local i32 @ttm_mem_global_free(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
