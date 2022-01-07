; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic.c_intel_atomic_setup_scalers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic.c_intel_atomic_setup_scalers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_9__, %struct.intel_crtc_scaler_state }
%struct.TYPE_9__ = type { i32, %struct.drm_atomic_state* }
%struct.drm_atomic_state = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.drm_plane* }
%struct.drm_plane = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.intel_crtc_scaler_state = type { i32, i32 }
%struct.intel_plane = type { i64 }
%struct.intel_plane_state = type { i32 }
%struct.intel_atomic_state = type { i32 }
%struct.drm_plane_state = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Too many scaling requests %d > %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SKL_CRTC_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"CRTC\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"PLANE\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to add [PLANE:%d] to drm_state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_atomic_setup_scalers(%struct.drm_i915_private* %0, %struct.intel_crtc* %1, %struct.intel_crtc_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca %struct.intel_crtc_state*, align 8
  %8 = alloca %struct.drm_plane*, align 8
  %9 = alloca %struct.intel_plane*, align 8
  %10 = alloca %struct.intel_plane_state*, align 8
  %11 = alloca %struct.intel_crtc_scaler_state*, align 8
  %12 = alloca %struct.drm_atomic_state*, align 8
  %13 = alloca %struct.intel_atomic_state*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.drm_plane_state*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store %struct.intel_crtc* %1, %struct.intel_crtc** %6, align 8
  store %struct.intel_crtc_state* %2, %struct.intel_crtc_state** %7, align 8
  store %struct.drm_plane* null, %struct.drm_plane** %8, align 8
  store %struct.intel_plane_state* null, %struct.intel_plane_state** %10, align 8
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %21 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %20, i32 0, i32 1
  store %struct.intel_crtc_scaler_state* %21, %struct.intel_crtc_scaler_state** %11, align 8
  %22 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %23 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %24, align 8
  store %struct.drm_atomic_state* %25, %struct.drm_atomic_state** %12, align 8
  %26 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %12, align 8
  %27 = call %struct.intel_atomic_state* @to_intel_atomic_state(%struct.drm_atomic_state* %26)
  store %struct.intel_atomic_state* %27, %struct.intel_atomic_state** %13, align 8
  %28 = load %struct.intel_crtc_scaler_state*, %struct.intel_crtc_scaler_state** %11, align 8
  %29 = getelementptr inbounds %struct.intel_crtc_scaler_state, %struct.intel_crtc_scaler_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @hweight32(i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %34 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %32, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %3
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %40 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %142

45:                                               ; preds = %3
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %138, %45
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ult i64 %48, 32
  br i1 %49, label %50, label %141

50:                                               ; preds = %46
  %51 = load %struct.intel_crtc_scaler_state*, %struct.intel_crtc_scaler_state** %11, align 8
  %52 = getelementptr inbounds %struct.intel_crtc_scaler_state, %struct.intel_crtc_scaler_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %15, align 4
  %55 = shl i32 1, %54
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  br label %138

59:                                               ; preds = %50
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @SKL_CRTC_INDEX, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  %64 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %65 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %18, align 4
  %69 = load %struct.intel_crtc_scaler_state*, %struct.intel_crtc_scaler_state** %11, align 8
  %70 = getelementptr inbounds %struct.intel_crtc_scaler_state, %struct.intel_crtc_scaler_state* %69, i32 0, i32 1
  store i32* %70, i32** %16, align 8
  br label %129

71:                                               ; preds = %59
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  %72 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %12, align 8
  %73 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load %struct.drm_plane*, %struct.drm_plane** %78, align 8
  store %struct.drm_plane* %79, %struct.drm_plane** %8, align 8
  %80 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %81 = icmp ne %struct.drm_plane* %80, null
  br i1 %81, label %105, label %82

82:                                               ; preds = %71
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %84 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %83, i32 0, i32 0
  %85 = load i32, i32* %15, align 4
  %86 = call %struct.drm_plane* @drm_plane_from_index(i32* %84, i32 %85)
  store %struct.drm_plane* %86, %struct.drm_plane** %8, align 8
  %87 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %12, align 8
  %88 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %89 = call %struct.drm_plane_state* @drm_atomic_get_plane_state(%struct.drm_atomic_state* %87, %struct.drm_plane* %88)
  store %struct.drm_plane_state* %89, %struct.drm_plane_state** %19, align 8
  %90 = load %struct.drm_plane_state*, %struct.drm_plane_state** %19, align 8
  %91 = call i64 @IS_ERR(%struct.drm_plane_state* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %82
  %94 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %95 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  %99 = load %struct.drm_plane_state*, %struct.drm_plane_state** %19, align 8
  %100 = call i32 @PTR_ERR(%struct.drm_plane_state* %99)
  store i32 %100, i32* %4, align 4
  br label %142

101:                                              ; preds = %82
  %102 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %103 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  br label %105

105:                                              ; preds = %101, %71
  %106 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %107 = call %struct.intel_plane* @to_intel_plane(%struct.drm_plane* %106)
  store %struct.intel_plane* %107, %struct.intel_plane** %9, align 8
  %108 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %109 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %18, align 4
  %112 = load %struct.intel_plane*, %struct.intel_plane** %9, align 8
  %113 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %116 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  %119 = zext i1 %118 to i32
  %120 = call i64 @WARN_ON(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %105
  br label %138

123:                                              ; preds = %105
  %124 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %13, align 8
  %125 = load %struct.intel_plane*, %struct.intel_plane** %9, align 8
  %126 = call %struct.intel_plane_state* @intel_atomic_get_new_plane_state(%struct.intel_atomic_state* %124, %struct.intel_plane* %125)
  store %struct.intel_plane_state* %126, %struct.intel_plane_state** %10, align 8
  %127 = load %struct.intel_plane_state*, %struct.intel_plane_state** %10, align 8
  %128 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %127, i32 0, i32 0
  store i32* %128, i32** %16, align 8
  br label %129

129:                                              ; preds = %123, %63
  %130 = load %struct.intel_crtc_scaler_state*, %struct.intel_crtc_scaler_state** %11, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %133 = load i8*, i8** %17, align 8
  %134 = load i32, i32* %18, align 4
  %135 = load %struct.intel_plane_state*, %struct.intel_plane_state** %10, align 8
  %136 = load i32*, i32** %16, align 8
  %137 = call i32 @intel_atomic_setup_scaler(%struct.intel_crtc_scaler_state* %130, i32 %131, %struct.intel_crtc* %132, i8* %133, i32 %134, %struct.intel_plane_state* %135, i32* %136)
  br label %138

138:                                              ; preds = %129, %122, %58
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %15, align 4
  br label %46

141:                                              ; preds = %46
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %141, %93, %37
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local %struct.intel_atomic_state* @to_intel_atomic_state(%struct.drm_atomic_state*) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local %struct.drm_plane* @drm_plane_from_index(i32*, i32) #1

declare dso_local %struct.drm_plane_state* @drm_atomic_get_plane_state(%struct.drm_atomic_state*, %struct.drm_plane*) #1

declare dso_local i64 @IS_ERR(%struct.drm_plane_state*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_plane_state*) #1

declare dso_local %struct.intel_plane* @to_intel_plane(%struct.drm_plane*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.intel_plane_state* @intel_atomic_get_new_plane_state(%struct.intel_atomic_state*, %struct.intel_plane*) #1

declare dso_local i32 @intel_atomic_setup_scaler(%struct.intel_crtc_scaler_state*, i32, %struct.intel_crtc*, i8*, i32, %struct.intel_plane_state*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
