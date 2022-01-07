; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_intel_fbc_can_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_intel_fbc_can_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_14__, %struct.intel_fbc }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.intel_fbc = type { i8*, i32, %struct.intel_fbc_state_cache, %struct.TYPE_15__, i64 }
%struct.intel_fbc_state_cache = type { i32, %struct.TYPE_16__, %struct.TYPE_12__, %struct.TYPE_11__, i32 }
%struct.TYPE_16__ = type { i64, i64, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"underrun detected\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"primary plane not visible\00", align 1
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"incompatible mode\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"mode too large for compression\00", align 1
@PLANE_HAS_FENCE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"framebuffer not tiled or fenced\00", align 1
@DRM_MODE_ROTATE_0 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"rotation unsupported\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"framebuffer stride not supported\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"pixel format is invalid\00", align 1
@DRM_MODE_BLEND_PIXEL_NONE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [50 x i8] c"per-pixel alpha blending is incompatible with FBC\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"pixel rate is too big\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"CFB requirements changed\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"plane Y offset is misaligned\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc*)* @intel_fbc_can_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_fbc_can_activate(%struct.intel_crtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_fbc*, align 8
  %6 = alloca %struct.intel_fbc_state_cache*, align 8
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  %7 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %8 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.drm_i915_private* @to_i915(i32 %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %4, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 1
  store %struct.intel_fbc* %13, %struct.intel_fbc** %5, align 8
  %14 = load %struct.intel_fbc*, %struct.intel_fbc** %5, align 8
  %15 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %14, i32 0, i32 2
  store %struct.intel_fbc_state_cache* %15, %struct.intel_fbc_state_cache** %6, align 8
  %16 = load %struct.intel_fbc*, %struct.intel_fbc** %5, align 8
  %17 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.intel_fbc*, %struct.intel_fbc** %5, align 8
  %22 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  store i32 0, i32* %2, align 4
  br label %176

23:                                               ; preds = %1
  %24 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %6, align 8
  %25 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load %struct.intel_fbc*, %struct.intel_fbc** %5, align 8
  %30 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8** %30, align 8
  store i32 0, i32* %2, align 4
  br label %176

31:                                               ; preds = %23
  %32 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %6, align 8
  %33 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.intel_fbc*, %struct.intel_fbc** %5, align 8
  %41 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %41, align 8
  store i32 0, i32* %2, align 4
  br label %176

42:                                               ; preds = %31
  %43 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %44 = call i32 @intel_fbc_hw_tracking_covers_screen(%struct.intel_crtc* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load %struct.intel_fbc*, %struct.intel_fbc** %5, align 8
  %48 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %47, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8** %48, align 8
  store i32 0, i32* %2, align 4
  br label %176

49:                                               ; preds = %42
  %50 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %6, align 8
  %51 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @PLANE_HAS_FENCE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = load %struct.intel_fbc*, %struct.intel_fbc** %5, align 8
  %58 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8** %58, align 8
  store i32 0, i32* %2, align 4
  br label %176

59:                                               ; preds = %49
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %61 = call i32 @INTEL_GEN(%struct.drm_i915_private* %60)
  %62 = icmp sle i32 %61, 4
  br i1 %62, label %63, label %77

63:                                               ; preds = %59
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %65 = call i32 @IS_G4X(%struct.drm_i915_private* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %63
  %68 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %6, align 8
  %69 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DRM_MODE_ROTATE_0, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.intel_fbc*, %struct.intel_fbc** %5, align 8
  %76 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %75, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8** %76, align 8
  store i32 0, i32* %2, align 4
  br label %176

77:                                               ; preds = %67, %63, %59
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %79 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %6, align 8
  %80 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @stride_is_valid(%struct.drm_i915_private* %78, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %77
  %86 = load %struct.intel_fbc*, %struct.intel_fbc** %5, align 8
  %87 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %86, i32 0, i32 0
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8** %87, align 8
  store i32 0, i32* %2, align 4
  br label %176

88:                                               ; preds = %77
  %89 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %90 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %6, align 8
  %91 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @pixel_format_is_valid(%struct.drm_i915_private* %89, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %88
  %99 = load %struct.intel_fbc*, %struct.intel_fbc** %5, align 8
  %100 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %99, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8** %100, align 8
  store i32 0, i32* %2, align 4
  br label %176

101:                                              ; preds = %88
  %102 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %6, align 8
  %103 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @DRM_MODE_BLEND_PIXEL_NONE, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %101
  %109 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %6, align 8
  %110 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %108
  %117 = load %struct.intel_fbc*, %struct.intel_fbc** %5, align 8
  %118 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %117, i32 0, i32 0
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i8** %118, align 8
  store i32 0, i32* %2, align 4
  br label %176

119:                                              ; preds = %108, %101
  %120 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %121 = call i64 @IS_HASWELL(%struct.drm_i915_private* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %125 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %143

127:                                              ; preds = %123, %119
  %128 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %6, align 8
  %129 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %133 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = mul nsw i32 %136, 95
  %138 = sdiv i32 %137, 100
  %139 = icmp sge i32 %131, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %127
  %141 = load %struct.intel_fbc*, %struct.intel_fbc** %5, align 8
  %142 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %141, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8** %142, align 8
  store i32 0, i32* %2, align 4
  br label %176

143:                                              ; preds = %127, %123
  %144 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %145 = load %struct.intel_fbc*, %struct.intel_fbc** %5, align 8
  %146 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %145, i32 0, i32 2
  %147 = call i32 @intel_fbc_calculate_cfb_size(%struct.drm_i915_private* %144, %struct.intel_fbc_state_cache* %146)
  %148 = load %struct.intel_fbc*, %struct.intel_fbc** %5, align 8
  %149 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.intel_fbc*, %struct.intel_fbc** %5, align 8
  %153 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = mul nsw i32 %151, %154
  %156 = icmp sgt i32 %147, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %143
  %158 = load %struct.intel_fbc*, %struct.intel_fbc** %5, align 8
  %159 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %158, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8** %159, align 8
  store i32 0, i32* %2, align 4
  br label %176

160:                                              ; preds = %143
  %161 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %162 = call i64 @IS_GEN_RANGE(%struct.drm_i915_private* %161, i32 9, i32 10)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %160
  %165 = load %struct.intel_fbc*, %struct.intel_fbc** %5, align 8
  %166 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = and i32 %169, 3
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %164
  %173 = load %struct.intel_fbc*, %struct.intel_fbc** %5, align 8
  %174 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %173, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8** %174, align 8
  store i32 0, i32* %2, align 4
  br label %176

175:                                              ; preds = %164, %160
  store i32 1, i32* %2, align 4
  br label %176

176:                                              ; preds = %175, %172, %157, %140, %116, %98, %85, %74, %56, %46, %39, %28, %20
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_fbc_hw_tracking_covers_screen(%struct.intel_crtc*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i32 @stride_is_valid(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @pixel_format_is_valid(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_fbc_calculate_cfb_size(%struct.drm_i915_private*, %struct.intel_fbc_state_cache*) #1

declare dso_local i64 @IS_GEN_RANGE(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
