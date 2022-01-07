; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_edp_panel_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_edp_panel_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Turn eDP port %c panel power on\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"eDP port %c panel power already on\0A\00", align 1
@PANEL_POWER_RESET = common dso_local global i32 0, align 4
@PANEL_POWER_ON = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @edp_panel_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edp_panel_on(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %6 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %7 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %6)
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %12 = call i32 @intel_dp_is_edp(%struct.intel_dp* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %88

15:                                               ; preds = %1
  %16 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %17 = call %struct.TYPE_4__* @dp_to_dig_port(%struct.intel_dp* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @port_name(i32 %20)
  %22 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %24 = call i32 @edp_have_panel_power(%struct.intel_dp* %23)
  %25 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %26 = call %struct.TYPE_4__* @dp_to_dig_port(%struct.intel_dp* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @port_name(i32 %29)
  %31 = call i64 @WARN(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %15
  br label %88

34:                                               ; preds = %15
  %35 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %36 = call i32 @wait_panel_power_cycle(%struct.intel_dp* %35)
  %37 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %38 = call i32 @_pp_ctrl_reg(%struct.intel_dp* %37)
  store i32 %38, i32* %5, align 4
  %39 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %40 = call i32 @ironlake_get_pp_control(%struct.intel_dp* %39)
  store i32 %40, i32* %4, align 4
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %42 = call i64 @IS_GEN(%struct.drm_i915_private* %41, i32 5)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %34
  %45 = load i32, i32* @PANEL_POWER_RESET, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @I915_WRITE(i32 %49, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @POSTING_READ(i32 %52)
  br label %54

54:                                               ; preds = %44, %34
  %55 = load i32, i32* @PANEL_POWER_ON, align 4
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %59 = call i64 @IS_GEN(%struct.drm_i915_private* %58, i32 5)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* @PANEL_POWER_RESET, align 4
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %54
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @I915_WRITE(i32 %66, i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @POSTING_READ(i32 %69)
  %71 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %72 = call i32 @wait_panel_on(%struct.intel_dp* %71)
  %73 = load i32, i32* @jiffies, align 4
  %74 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %75 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %77 = call i64 @IS_GEN(%struct.drm_i915_private* %76, i32 5)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %65
  %80 = load i32, i32* @PANEL_POWER_RESET, align 4
  %81 = load i32, i32* %4, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @I915_WRITE(i32 %83, i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @POSTING_READ(i32 %86)
  br label %88

88:                                               ; preds = %14, %33, %79, %65
  ret void
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @intel_dp_is_edp(%struct.intel_dp*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local %struct.TYPE_4__* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i64 @WARN(i32, i8*, i32) #1

declare dso_local i32 @edp_have_panel_power(%struct.intel_dp*) #1

declare dso_local i32 @wait_panel_power_cycle(%struct.intel_dp*) #1

declare dso_local i32 @_pp_ctrl_reg(%struct.intel_dp*) #1

declare dso_local i32 @ironlake_get_pp_control(%struct.intel_dp*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @wait_panel_on(%struct.intel_dp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
