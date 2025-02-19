; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_assert_hdmi_port_disabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_assert_hdmi_port_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_hdmi = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { i32 }

@DDI_BUF_CTL_ENABLE = common dso_local global i32 0, align 4
@SDVO_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"HDMI port enabled, expecting disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_hdmi*)* @assert_hdmi_port_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_hdmi_port_disabled(%struct.intel_hdmi* %0) #0 {
  %2 = alloca %struct.intel_hdmi*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_hdmi* %0, %struct.intel_hdmi** %2, align 8
  %6 = load %struct.intel_hdmi*, %struct.intel_hdmi** %2, align 8
  %7 = call %struct.drm_device* @intel_hdmi_to_dev(%struct.intel_hdmi* %6)
  store %struct.drm_device* %7, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %8)
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %4, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %11 = call i64 @HAS_DDI(%struct.drm_i915_private* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @DDI_BUF_CTL_ENABLE, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @SDVO_ENABLE, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %5, align 4
  %19 = load %struct.intel_hdmi*, %struct.intel_hdmi** %2, align 8
  %20 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @I915_READ(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @WARN(i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.drm_device* @intel_hdmi_to_dev(%struct.intel_hdmi*) #1

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i64 @HAS_DDI(%struct.drm_i915_private*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
