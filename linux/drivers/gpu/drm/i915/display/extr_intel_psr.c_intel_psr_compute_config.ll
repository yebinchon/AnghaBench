; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_psr.c_intel_psr_compute_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_psr.c_intel_psr_compute_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32* }
%struct.intel_crtc_state = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.intel_digital_port = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.drm_i915_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.intel_dp* }

@PORT_A = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"PSR condition failed: Port not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"PSR sink implementation is not reliable\0A\00", align 1
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"PSR condition failed: Interlaced mode enabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"PSR condition failed: Invalid PSR setup time (0x%02x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"PSR condition failed: PSR setup time (%d us) too long\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_psr_compute_config(%struct.intel_dp* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_digital_port*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %9 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %10 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %9)
  store %struct.intel_digital_port* %10, %struct.intel_digital_port** %5, align 8
  %11 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %12 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %6, align 8
  %13 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %14 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.drm_display_mode* %15, %struct.drm_display_mode** %7, align 8
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %17 = call i32 @CAN_PSR(%struct.drm_i915_private* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %92

20:                                               ; preds = %2
  %21 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.intel_dp*, %struct.intel_dp** %24, align 8
  %26 = icmp ne %struct.intel_dp* %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %92

28:                                               ; preds = %20
  %29 = load %struct.intel_digital_port*, %struct.intel_digital_port** %5, align 8
  %30 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PORT_A, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %92

37:                                               ; preds = %28
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %39 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %92

45:                                               ; preds = %37
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %92

54:                                               ; preds = %45
  %55 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %56 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @drm_dp_psr_setup_time(i32* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %63 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  br label %92

68:                                               ; preds = %54
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @intel_usecs_to_scanlines(%struct.drm_display_mode* %69, i32 %70)
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %73 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %76 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %74, %77
  %79 = sub nsw i32 %78, 1
  %80 = icmp sgt i32 %71, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %68
  %82 = load i32, i32* %8, align 4
  %83 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  br label %92

84:                                               ; preds = %68
  %85 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %86 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  %87 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %88 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %89 = call i32 @intel_psr2_config_valid(%struct.intel_dp* %87, %struct.intel_crtc_state* %88)
  %90 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %91 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %84, %81, %61, %52, %43, %35, %27, %19
  ret void
}

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local i32 @CAN_PSR(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @drm_dp_psr_setup_time(i32*) #1

declare dso_local i32 @intel_usecs_to_scanlines(%struct.drm_display_mode*, i32) #1

declare dso_local i32 @intel_psr2_config_valid(%struct.intel_dp*, %struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
