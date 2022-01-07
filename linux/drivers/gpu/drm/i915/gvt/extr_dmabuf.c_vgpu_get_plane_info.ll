; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_dmabuf.c_vgpu_get_plane_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_dmabuf.c_vgpu_get_plane_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.intel_vgpu = type { i32 }
%struct.intel_vgpu_fb_info = type { i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i64, i32, i32 }
%struct.intel_vgpu_primary_plane_format = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.intel_vgpu_cursor_plane_format = type { i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32 }

@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@DRM_FORMAT_MOD_LINEAR = common dso_local global i64 0, align 8
@I915_FORMAT_MOD_X_TILED = common dso_local global i64 0, align 8
@I915_FORMAT_MOD_Y_TILED = common dso_local global i64 0, align 8
@I915_FORMAT_MOD_Yf_TILED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"invalid tiling mode: %x\0A\00", align 1
@DRM_PLANE_TYPE_CURSOR = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid plane id:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"fb size is zero\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Not aligned fb address:0x%llx\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"invalid gma addr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.intel_vgpu*, %struct.intel_vgpu_fb_info*, i32)* @vgpu_get_plane_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgpu_get_plane_info(%struct.drm_device* %0, %struct.intel_vgpu* %1, %struct.intel_vgpu_fb_info* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.intel_vgpu*, align 8
  %8 = alloca %struct.intel_vgpu_fb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.intel_vgpu_primary_plane_format, align 4
  %11 = alloca %struct.intel_vgpu_cursor_plane_format, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.intel_vgpu* %1, %struct.intel_vgpu** %7, align 8
  store %struct.intel_vgpu_fb_info* %2, %struct.intel_vgpu_fb_info** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %13, align 4
  %14 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %15 = call i32 @memset(%struct.intel_vgpu_fb_info* %14, i32 0, i32 64)
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %74

19:                                               ; preds = %4
  %20 = load %struct.intel_vgpu*, %struct.intel_vgpu** %7, align 8
  %21 = call i32 @intel_vgpu_decode_primary_plane(%struct.intel_vgpu* %20, %struct.intel_vgpu_primary_plane_format* %10)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %5, align 4
  br label %199

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.intel_vgpu_primary_plane_format, %struct.intel_vgpu_primary_plane_format* %10, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %30 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = getelementptr inbounds %struct.intel_vgpu_primary_plane_format, %struct.intel_vgpu_primary_plane_format* %10, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %34 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %33, i32 0, i32 11
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds %struct.intel_vgpu_primary_plane_format, %struct.intel_vgpu_primary_plane_format* %10, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %38 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct.intel_vgpu_primary_plane_format, %struct.intel_vgpu_primary_plane_format* %10, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %42 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = getelementptr inbounds %struct.intel_vgpu_primary_plane_format, %struct.intel_vgpu_primary_plane_format* %10, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %46 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = getelementptr inbounds %struct.intel_vgpu_primary_plane_format, %struct.intel_vgpu_primary_plane_format* %10, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %50 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %49, i32 0, i32 10
  store i32 %48, i32* %50, align 8
  %51 = getelementptr inbounds %struct.intel_vgpu_primary_plane_format, %struct.intel_vgpu_primary_plane_format* %10, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %69 [
    i32 131, label %53
    i32 130, label %57
    i32 129, label %61
    i32 128, label %65
  ]

53:                                               ; preds = %26
  %54 = load i64, i64* @DRM_FORMAT_MOD_LINEAR, align 8
  %55 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %56 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %55, i32 0, i32 9
  store i64 %54, i64* %56, align 8
  br label %73

57:                                               ; preds = %26
  %58 = load i64, i64* @I915_FORMAT_MOD_X_TILED, align 8
  %59 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %60 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %59, i32 0, i32 9
  store i64 %58, i64* %60, align 8
  store i32 8, i32* %13, align 4
  br label %73

61:                                               ; preds = %26
  %62 = load i64, i64* @I915_FORMAT_MOD_Y_TILED, align 8
  %63 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %64 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %63, i32 0, i32 9
  store i64 %62, i64* %64, align 8
  store i32 32, i32* %13, align 4
  br label %73

65:                                               ; preds = %26
  %66 = load i64, i64* @I915_FORMAT_MOD_Yf_TILED, align 8
  %67 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %68 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %67, i32 0, i32 9
  store i64 %66, i64* %68, align 8
  store i32 32, i32* %13, align 4
  br label %73

69:                                               ; preds = %26
  %70 = getelementptr inbounds %struct.intel_vgpu_primary_plane_format, %struct.intel_vgpu_primary_plane_format* %10, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %69, %65, %61, %57, %53
  br label %149

74:                                               ; preds = %4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @DRM_PLANE_TYPE_CURSOR, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %143

78:                                               ; preds = %74
  %79 = load %struct.intel_vgpu*, %struct.intel_vgpu** %7, align 8
  %80 = call i32 @intel_vgpu_decode_cursor_plane(%struct.intel_vgpu* %79, %struct.intel_vgpu_cursor_plane_format* %11)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %5, align 4
  br label %199

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.intel_vgpu_cursor_plane_format, %struct.intel_vgpu_cursor_plane_format* %11, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %89 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = getelementptr inbounds %struct.intel_vgpu_cursor_plane_format, %struct.intel_vgpu_cursor_plane_format* %11, i32 0, i32 9
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %93 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %92, i32 0, i32 11
  store i32 %91, i32* %93, align 4
  %94 = getelementptr inbounds %struct.intel_vgpu_cursor_plane_format, %struct.intel_vgpu_cursor_plane_format* %11, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %97 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = getelementptr inbounds %struct.intel_vgpu_cursor_plane_format, %struct.intel_vgpu_cursor_plane_format* %11, i32 0, i32 8
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %101 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 8
  %102 = getelementptr inbounds %struct.intel_vgpu_cursor_plane_format, %struct.intel_vgpu_cursor_plane_format* %11, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.intel_vgpu_cursor_plane_format, %struct.intel_vgpu_cursor_plane_format* %11, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = sdiv i32 %105, 8
  %107 = mul nsw i32 %103, %106
  %108 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %109 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = getelementptr inbounds %struct.intel_vgpu_cursor_plane_format, %struct.intel_vgpu_cursor_plane_format* %11, i32 0, i32 7
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %113 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %112, i32 0, i32 10
  store i32 %111, i32* %113, align 8
  %114 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %115 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %114, i32 0, i32 9
  store i64 0, i64* %115, align 8
  %116 = getelementptr inbounds %struct.intel_vgpu_cursor_plane_format, %struct.intel_vgpu_cursor_plane_format* %11, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %119 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %118, i32 0, i32 8
  store i32 %117, i32* %119, align 4
  %120 = getelementptr inbounds %struct.intel_vgpu_cursor_plane_format, %struct.intel_vgpu_cursor_plane_format* %11, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %123 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %122, i32 0, i32 7
  store i32 %121, i32* %123, align 8
  %124 = call i64 @validate_hotspot(%struct.intel_vgpu_cursor_plane_format* %11)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %85
  %127 = getelementptr inbounds %struct.intel_vgpu_cursor_plane_format, %struct.intel_vgpu_cursor_plane_format* %11, i32 0, i32 4
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %130 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %129, i32 0, i32 6
  store i8* %128, i8** %130, align 8
  %131 = getelementptr inbounds %struct.intel_vgpu_cursor_plane_format, %struct.intel_vgpu_cursor_plane_format* %11, i32 0, i32 3
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %134 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %133, i32 0, i32 5
  store i8* %132, i8** %134, align 8
  br label %142

135:                                              ; preds = %85
  %136 = load i8*, i8** @UINT_MAX, align 8
  %137 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %138 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %137, i32 0, i32 6
  store i8* %136, i8** %138, align 8
  %139 = load i8*, i8** @UINT_MAX, align 8
  %140 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %141 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %140, i32 0, i32 5
  store i8* %139, i8** %141, align 8
  br label %142

142:                                              ; preds = %135, %126
  br label %148

143:                                              ; preds = %74
  %144 = load i32, i32* %9, align 4
  %145 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %5, align 4
  br label %199

148:                                              ; preds = %142
  br label %149

149:                                              ; preds = %148, %73
  %150 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %151 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %154 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @roundup(i32 %155, i32 %156)
  %158 = mul nsw i32 %152, %157
  %159 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %160 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 4
  %161 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %162 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %149
  %166 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %5, align 4
  br label %199

169:                                              ; preds = %149
  %170 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %171 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @PAGE_SIZE, align 4
  %174 = sub nsw i32 %173, 1
  %175 = and i32 %172, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %169
  %178 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %179 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* @EFAULT, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %5, align 4
  br label %199

184:                                              ; preds = %169
  %185 = load %struct.intel_vgpu*, %struct.intel_vgpu** %7, align 8
  %186 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %187 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %8, align 8
  %190 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @intel_gvt_ggtt_validate_range(%struct.intel_vgpu* %185, i32 %188, i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %184
  %195 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %196 = load i32, i32* @EFAULT, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %5, align 4
  br label %199

198:                                              ; preds = %184
  store i32 0, i32* %5, align 4
  br label %199

199:                                              ; preds = %198, %194, %177, %165, %143, %83, %24
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i32 @memset(%struct.intel_vgpu_fb_info*, i32, i32) #1

declare dso_local i32 @intel_vgpu_decode_primary_plane(%struct.intel_vgpu*, %struct.intel_vgpu_primary_plane_format*) #1

declare dso_local i32 @gvt_vgpu_err(i8*, ...) #1

declare dso_local i32 @intel_vgpu_decode_cursor_plane(%struct.intel_vgpu*, %struct.intel_vgpu_cursor_plane_format*) #1

declare dso_local i64 @validate_hotspot(%struct.intel_vgpu_cursor_plane_format*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @intel_gvt_ggtt_validate_range(%struct.intel_vgpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
