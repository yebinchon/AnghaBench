; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_aux_backlight.c_intel_dp_aux_enable_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_aux_backlight.c_intel_dp_aux_enable_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_connector = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.intel_dp = type { i32*, i32 }

@DP_EDP_BACKLIGHT_MODE_SET_REGISTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to read DPCD register 0x%x\0A\00", align 1
@DP_EDP_BACKLIGHT_CONTROL_MODE_MASK = common dso_local global i32 0, align 4
@DP_EDP_BACKLIGHT_FREQ_AUX_SET_CAP = common dso_local global i32 0, align 4
@DP_EDP_BACKLIGHT_FREQ_AUX_SET_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to write aux backlight mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_dp_aux_enable_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_aux_enable_backlight(%struct.intel_crtc_state* %0, %struct.drm_connector_state* %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.drm_connector_state*, align 8
  %5 = alloca %struct.intel_connector*, align 8
  %6 = alloca %struct.intel_dp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %4, align 8
  %10 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %11 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.intel_connector* @to_intel_connector(i32 %12)
  store %struct.intel_connector* %13, %struct.intel_connector** %5, align 8
  %14 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %15 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call %struct.intel_dp* @enc_to_intel_dp(i32* %17)
  store %struct.intel_dp* %18, %struct.intel_dp** %6, align 8
  %19 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %20 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %19, i32 0, i32 1
  %21 = load i32, i32* @DP_EDP_BACKLIGHT_MODE_SET_REGISTER, align 4
  %22 = call i32 @drm_dp_dpcd_readb(i32* %20, i32 %21, i32* %7)
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @DP_EDP_BACKLIGHT_MODE_SET_REGISTER, align 4
  %26 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %84

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @DP_EDP_BACKLIGHT_CONTROL_MODE_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  switch i32 %32, label %41 [
    i32 128, label %33
    i32 130, label %33
    i32 129, label %33
    i32 131, label %40
  ]

33:                                               ; preds = %27, %27, %27
  %34 = load i32, i32* @DP_EDP_BACKLIGHT_CONTROL_MODE_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, 131
  store i32 %39, i32* %8, align 4
  br label %42

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %27, %40
  br label %42

42:                                               ; preds = %41, %33
  %43 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %44 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DP_EDP_BACKLIGHT_FREQ_AUX_SET_CAP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %42
  %52 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %53 = call i64 @intel_dp_aux_set_pwm_freq(%struct.intel_connector* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* @DP_EDP_BACKLIGHT_FREQ_AUX_SET_ENABLE, align 4
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %55, %51
  br label %60

60:                                               ; preds = %59, %42
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %66 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %65, i32 0, i32 1
  %67 = load i32, i32* @DP_EDP_BACKLIGHT_MODE_SET_REGISTER, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @drm_dp_dpcd_writeb(i32* %66, i32 %67, i32 %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %64
  br label %74

74:                                               ; preds = %73, %60
  %75 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %76 = call i32 @set_aux_backlight_enable(%struct.intel_dp* %75, i32 1)
  %77 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %78 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %79 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @intel_dp_aux_set_backlight(%struct.drm_connector_state* %77, i32 %82)
  br label %84

84:                                               ; preds = %74, %24
  ret void
}

declare dso_local %struct.intel_connector* @to_intel_connector(i32) #1

declare dso_local %struct.intel_dp* @enc_to_intel_dp(i32*) #1

declare dso_local i32 @drm_dp_dpcd_readb(i32*, i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i64 @intel_dp_aux_set_pwm_freq(%struct.intel_connector*) #1

declare dso_local i64 @drm_dp_dpcd_writeb(i32*, i32, i32) #1

declare dso_local i32 @set_aux_backlight_enable(%struct.intel_dp*, i32) #1

declare dso_local i32 @intel_dp_aux_set_backlight(%struct.drm_connector_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
