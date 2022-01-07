; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_dp_dual_mode_set_tmds_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_dp_dual_mode_set_tmds_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_hdmi = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.drm_i915_private = type { i32 }
%struct.i2c_adapter = type { i32 }

@DRM_DP_DUAL_MODE_TYPE2_DVI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"%s DP dual mode adaptor TMDS output\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Enabling\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Disabling\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_dp_dual_mode_set_tmds_output(%struct.intel_hdmi* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_hdmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  store %struct.intel_hdmi* %0, %struct.intel_hdmi** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.intel_hdmi*, %struct.intel_hdmi** %3, align 8
  %8 = call i32 @intel_hdmi_to_dev(%struct.intel_hdmi* %7)
  %9 = call %struct.drm_i915_private* @to_i915(i32 %8)
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %5, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %11 = load %struct.intel_hdmi*, %struct.intel_hdmi** %3, align 8
  %12 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.i2c_adapter* @intel_gmbus_get_adapter(%struct.drm_i915_private* %10, i32 %13)
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %6, align 8
  %15 = load %struct.intel_hdmi*, %struct.intel_hdmi** %3, align 8
  %16 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DRM_DP_DUAL_MODE_TYPE2_DVI, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %35

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load %struct.intel_hdmi*, %struct.intel_hdmi** %3, align 8
  %29 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @drm_dp_dual_mode_set_tmds_output(i64 %31, %struct.i2c_adapter* %32, i32 %33)
  br label %35

35:                                               ; preds = %22, %21
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_hdmi_to_dev(%struct.intel_hdmi*) #1

declare dso_local %struct.i2c_adapter* @intel_gmbus_get_adapter(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i8*) #1

declare dso_local i32 @drm_dp_dual_mode_set_tmds_output(i64, %struct.i2c_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
