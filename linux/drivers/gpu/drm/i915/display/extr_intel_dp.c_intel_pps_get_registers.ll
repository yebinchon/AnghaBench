; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_pps_get_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_pps_get_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.pps_registers = type { i32, i32, i32, i32, i32 }
%struct.drm_i915_private = type { i32 }

@PCH_CNP = common dso_local global i64 0, align 8
@INVALID_MMIO_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*, %struct.pps_registers*)* @intel_pps_get_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pps_get_registers(%struct.intel_dp* %0, %struct.pps_registers* %1) #0 {
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca %struct.pps_registers*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  store %struct.pps_registers* %1, %struct.pps_registers** %4, align 8
  %7 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %8 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %7)
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.pps_registers*, %struct.pps_registers** %4, align 8
  %10 = call i32 @memset(%struct.pps_registers* %9, i32 0, i32 20)
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %12 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %16 = call i32 @bxt_power_sequencer_idx(%struct.intel_dp* %15)
  store i32 %16, i32* %6, align 4
  br label %29

17:                                               ; preds = %2
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %19 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %23 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %17
  %26 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %27 = call i32 @vlv_power_sequencer_pipe(%struct.intel_dp* %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %21
  br label %29

29:                                               ; preds = %28, %14
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @PP_CONTROL(i32 %30)
  %32 = load %struct.pps_registers*, %struct.pps_registers** %4, align 8
  %33 = getelementptr inbounds %struct.pps_registers, %struct.pps_registers* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @PP_STATUS(i32 %34)
  %36 = load %struct.pps_registers*, %struct.pps_registers** %4, align 8
  %37 = getelementptr inbounds %struct.pps_registers, %struct.pps_registers* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @PP_ON_DELAYS(i32 %38)
  %40 = load %struct.pps_registers*, %struct.pps_registers** %4, align 8
  %41 = getelementptr inbounds %struct.pps_registers, %struct.pps_registers* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @PP_OFF_DELAYS(i32 %42)
  %44 = load %struct.pps_registers*, %struct.pps_registers** %4, align 8
  %45 = getelementptr inbounds %struct.pps_registers, %struct.pps_registers* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %47 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %29
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %51 = call i64 @INTEL_PCH_TYPE(%struct.drm_i915_private* %50)
  %52 = load i64, i64* @PCH_CNP, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %49, %29
  %55 = load i32, i32* @INVALID_MMIO_REG, align 4
  %56 = load %struct.pps_registers*, %struct.pps_registers** %4, align 8
  %57 = getelementptr inbounds %struct.pps_registers, %struct.pps_registers* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %63

58:                                               ; preds = %49
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @PP_DIVISOR(i32 %59)
  %61 = load %struct.pps_registers*, %struct.pps_registers** %4, align 8
  %62 = getelementptr inbounds %struct.pps_registers, %struct.pps_registers* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %58, %54
  ret void
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local i32 @memset(%struct.pps_registers*, i32, i32) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @bxt_power_sequencer_idx(%struct.intel_dp*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_power_sequencer_pipe(%struct.intel_dp*) #1

declare dso_local i32 @PP_CONTROL(i32) #1

declare dso_local i32 @PP_STATUS(i32) #1

declare dso_local i32 @PP_ON_DELAYS(i32) #1

declare dso_local i32 @PP_OFF_DELAYS(i32) #1

declare dso_local i64 @INTEL_PCH_TYPE(%struct.drm_i915_private*) #1

declare dso_local i32 @PP_DIVISOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
