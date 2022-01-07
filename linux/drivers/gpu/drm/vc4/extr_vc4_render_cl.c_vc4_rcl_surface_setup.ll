; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_render_cl.c_vc4_rcl_surface_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_render_cl.c_vc4_rcl_surface_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_exec_info = type { %struct.TYPE_2__*, i32, %struct.drm_gem_cma_object** }
%struct.TYPE_2__ = type { i32, i32, %struct.drm_vc4_submit_rcl_surface }
%struct.drm_vc4_submit_rcl_surface = type { i32, i32, i32, i32 }
%struct.drm_gem_cma_object = type { i32 }

@VC4_LOADSTORE_TILE_BUFFER_TILING = common dso_local global i32 0, align 4
@VC4_LOADSTORE_TILE_BUFFER_BUFFER = common dso_local global i32 0, align 4
@VC4_LOADSTORE_TILE_BUFFER_FORMAT = common dso_local global i32 0, align 4
@VC4_SUBMIT_RCL_SURFACE_READ_IS_FULL_RES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Extra flags set\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"general zs write may not be a full-res.\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"load/store general bits set with full res load/store.\0A\00", align 1
@VC4_LOADSTORE_TILE_BUFFER_TILING_MASK = common dso_local global i32 0, align 4
@VC4_LOADSTORE_TILE_BUFFER_BUFFER_MASK = common dso_local global i32 0, align 4
@VC4_LOADSTORE_TILE_BUFFER_FORMAT_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Unknown bits in load/store: 0x%04x\0A\00", align 1
@VC4_TILING_FORMAT_LT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"Bad tiling format\0A\00", align 1
@VC4_LOADSTORE_TILE_BUFFER_ZS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"No color format should be set for ZS\0A\00", align 1
@VC4_LOADSTORE_TILE_BUFFER_COLOR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"Bad tile buffer format\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Bad load/store buffer %d.\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"load/store buffer must be 16b aligned.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc4_exec_info*, %struct.drm_gem_cma_object**, %struct.drm_vc4_submit_rcl_surface*, i32)* @vc4_rcl_surface_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_rcl_surface_setup(%struct.vc4_exec_info* %0, %struct.drm_gem_cma_object** %1, %struct.drm_vc4_submit_rcl_surface* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vc4_exec_info*, align 8
  %7 = alloca %struct.drm_gem_cma_object**, align 8
  %8 = alloca %struct.drm_vc4_submit_rcl_surface*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vc4_exec_info* %0, %struct.vc4_exec_info** %6, align 8
  store %struct.drm_gem_cma_object** %1, %struct.drm_gem_cma_object*** %7, align 8
  store %struct.drm_vc4_submit_rcl_surface* %2, %struct.drm_vc4_submit_rcl_surface** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %8, align 8
  %16 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @VC4_LOADSTORE_TILE_BUFFER_TILING, align 4
  %19 = call i64 @VC4_GET_FIELD(i32 %17, i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %8, align 8
  %21 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @VC4_LOADSTORE_TILE_BUFFER_BUFFER, align 4
  %24 = call i64 @VC4_GET_FIELD(i32 %22, i32 %23)
  store i64 %24, i64* %11, align 8
  %25 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %8, align 8
  %26 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @VC4_LOADSTORE_TILE_BUFFER_FORMAT, align 4
  %29 = call i64 @VC4_GET_FIELD(i32 %27, i32 %28)
  store i64 %29, i64* %12, align 8
  %30 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %8, align 8
  %31 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @VC4_SUBMIT_RCL_SURFACE_READ_IS_FULL_RES, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %4
  %38 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %206

41:                                               ; preds = %4
  %42 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %8, align 8
  %43 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %206

47:                                               ; preds = %41
  %48 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %49 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %8, align 8
  %50 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.drm_gem_cma_object* @vc4_use_bo(%struct.vc4_exec_info* %48, i32 %51)
  %53 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %7, align 8
  store %struct.drm_gem_cma_object* %52, %struct.drm_gem_cma_object** %53, align 8
  %54 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %7, align 8
  %55 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %54, align 8
  %56 = icmp ne %struct.drm_gem_cma_object* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %206

60:                                               ; preds = %47
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %7, align 8
  %65 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %64, align 8
  %66 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %67 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %66, i32 0, i32 2
  %68 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %67, align 8
  %69 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %70 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %68, i64 %73
  store %struct.drm_gem_cma_object* %65, %struct.drm_gem_cma_object** %74, align 8
  br label %75

75:                                               ; preds = %63, %60
  %76 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %8, align 8
  %77 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @VC4_SUBMIT_RCL_SURFACE_READ_IS_FULL_RES, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %113

82:                                               ; preds = %75
  %83 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %8, align 8
  %84 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %85 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = icmp eq %struct.drm_vc4_submit_rcl_surface* %83, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %206

93:                                               ; preds = %82
  %94 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %8, align 8
  %95 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %206

102:                                              ; preds = %93
  %103 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %104 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %7, align 8
  %105 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %104, align 8
  %106 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %8, align 8
  %107 = call i32 @vc4_full_res_bounds_check(%struct.vc4_exec_info* %103, %struct.drm_gem_cma_object* %105, %struct.drm_vc4_submit_rcl_surface* %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %5, align 4
  br label %206

112:                                              ; preds = %102
  store i32 0, i32* %5, align 4
  br label %206

113:                                              ; preds = %75
  %114 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %8, align 8
  %115 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @VC4_LOADSTORE_TILE_BUFFER_TILING_MASK, align 4
  %118 = load i32, i32* @VC4_LOADSTORE_TILE_BUFFER_BUFFER_MASK, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @VC4_LOADSTORE_TILE_BUFFER_FORMAT_MASK, align 4
  %121 = or i32 %119, %120
  %122 = xor i32 %121, -1
  %123 = and i32 %116, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %113
  %126 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %8, align 8
  %127 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %5, align 4
  br label %206

132:                                              ; preds = %113
  %133 = load i64, i64* %10, align 8
  %134 = load i64, i64* @VC4_TILING_FORMAT_LT, align 8
  %135 = icmp sgt i64 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %5, align 4
  br label %206

140:                                              ; preds = %132
  %141 = load i64, i64* %11, align 8
  %142 = load i64, i64* @VC4_LOADSTORE_TILE_BUFFER_ZS, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %140
  %145 = load i64, i64* %12, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %5, align 4
  br label %206

151:                                              ; preds = %144
  store i32 4, i32* %13, align 4
  br label %171

152:                                              ; preds = %140
  %153 = load i64, i64* %11, align 8
  %154 = load i64, i64* @VC4_LOADSTORE_TILE_BUFFER_COLOR, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %152
  %157 = load i64, i64* %12, align 8
  switch i64 %157, label %160 [
    i64 130, label %158
    i64 129, label %158
    i64 128, label %159
  ]

158:                                              ; preds = %156, %156
  store i32 2, i32* %13, align 4
  br label %164

159:                                              ; preds = %156
  store i32 4, i32* %13, align 4
  br label %164

160:                                              ; preds = %156
  %161 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %5, align 4
  br label %206

164:                                              ; preds = %159, %158
  br label %170

165:                                              ; preds = %152
  %166 = load i64, i64* %11, align 8
  %167 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i64 %166)
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %5, align 4
  br label %206

170:                                              ; preds = %164
  br label %171

171:                                              ; preds = %170, %151
  %172 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %8, align 8
  %173 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %174, 15
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %171
  %178 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %5, align 4
  br label %206

181:                                              ; preds = %171
  %182 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %183 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %7, align 8
  %184 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %183, align 8
  %185 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %8, align 8
  %186 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load i64, i64* %10, align 8
  %189 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %190 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %189, i32 0, i32 0
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %195 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %194, i32 0, i32 0
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %13, align 4
  %200 = call i32 @vc4_check_tex_size(%struct.vc4_exec_info* %182, %struct.drm_gem_cma_object* %184, i32 %187, i64 %188, i32 %193, i32 %198, i32 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %181
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %5, align 4
  br label %206

205:                                              ; preds = %181
  store i32 0, i32* %5, align 4
  br label %206

206:                                              ; preds = %205, %202, %177, %165, %160, %147, %136, %125, %112, %110, %98, %89, %57, %46, %37
  %207 = load i32, i32* %5, align 4
  ret i32 %207
}

declare dso_local i64 @VC4_GET_FIELD(i32, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local %struct.drm_gem_cma_object* @vc4_use_bo(%struct.vc4_exec_info*, i32) #1

declare dso_local i32 @vc4_full_res_bounds_check(%struct.vc4_exec_info*, %struct.drm_gem_cma_object*, %struct.drm_vc4_submit_rcl_surface*) #1

declare dso_local i32 @vc4_check_tex_size(%struct.vc4_exec_info*, %struct.drm_gem_cma_object*, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
