; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_connector_verify_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_connector_verify_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.drm_connector_state = type { i64, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.intel_connector = type { %struct.intel_encoder*, i64 (%struct.intel_connector*)*, %struct.TYPE_6__ }
%struct.intel_encoder = type { i64, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"[CONNECTOR:%d:%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"connector enabled without attached crtc\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"connector is active, but attached crtc isn't\0A\00", align 1
@INTEL_OUTPUT_DP_MST = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c"atomic encoder doesn't match attached encoder\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"attached encoder crtc differs from connector crtc\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"attached crtc is active, but connector isn't\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"best encoder set without crtc!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_connector_verify_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_connector_verify_state(%struct.intel_crtc_state* %0, %struct.drm_connector_state* %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.drm_connector_state*, align 8
  %5 = alloca %struct.intel_connector*, align 8
  %6 = alloca %struct.intel_encoder*, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %4, align 8
  %7 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %8 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.intel_connector* @to_intel_connector(i32 %9)
  store %struct.intel_connector* %10, %struct.intel_connector** %5, align 8
  %11 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %12 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %17 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19)
  %21 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %22 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %21, i32 0, i32 1
  %23 = load i64 (%struct.intel_connector*)*, i64 (%struct.intel_connector*)** %22, align 8
  %24 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %25 = call i64 %23(%struct.intel_connector* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %76

27:                                               ; preds = %2
  %28 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %29 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %28, i32 0, i32 0
  %30 = load %struct.intel_encoder*, %struct.intel_encoder** %29, align 8
  store %struct.intel_encoder* %30, %struct.intel_encoder** %6, align 8
  %31 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %32 = icmp ne %struct.intel_crtc_state* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @I915_STATE_WARN(i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %37 = icmp ne %struct.intel_crtc_state* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  br label %100

39:                                               ; preds = %27
  %40 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %41 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @I915_STATE_WARN(i32 %46, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %49 = icmp ne %struct.intel_encoder* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %39
  %51 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %52 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @INTEL_OUTPUT_DP_MST, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %39
  br label %100

57:                                               ; preds = %50
  %58 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %59 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %62 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %61, i32 0, i32 1
  %63 = icmp ne %struct.TYPE_8__* %60, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @I915_STATE_WARN(i32 %64, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %66 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %67 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %70 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %68, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @I915_STATE_WARN(i32 %74, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  br label %100

76:                                               ; preds = %2
  %77 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %78 = icmp ne %struct.intel_crtc_state* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %81 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br label %85

85:                                               ; preds = %79, %76
  %86 = phi i1 [ false, %76 ], [ %84, %79 ]
  %87 = zext i1 %86 to i32
  %88 = call i32 @I915_STATE_WARN(i32 %87, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %89 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %90 = icmp ne %struct.intel_crtc_state* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %85
  %92 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %93 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %92, i32 0, i32 1
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = icmp ne %struct.TYPE_8__* %94, null
  br label %96

96:                                               ; preds = %91, %85
  %97 = phi i1 [ false, %85 ], [ %95, %91 ]
  %98 = zext i1 %97 to i32
  %99 = call i32 @I915_STATE_WARN(i32 %98, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %100

100:                                              ; preds = %38, %56, %96, %57
  ret void
}

declare dso_local %struct.intel_connector* @to_intel_connector(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @I915_STATE_WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
