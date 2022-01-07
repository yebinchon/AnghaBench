; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_aux_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_aux_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { %struct.intel_encoder }
%struct.intel_encoder = type { i32 }

@skl_aux_ctl_reg = common dso_local global i32 0, align 4
@skl_aux_data_reg = common dso_local global i32 0, align 4
@ilk_aux_ctl_reg = common dso_local global i32 0, align 4
@ilk_aux_data_reg = common dso_local global i32 0, align 4
@g4x_aux_ctl_reg = common dso_local global i32 0, align 4
@g4x_aux_data_reg = common dso_local global i32 0, align 4
@skl_get_aux_clock_divider = common dso_local global i32 0, align 4
@hsw_get_aux_clock_divider = common dso_local global i32 0, align 4
@ilk_get_aux_clock_divider = common dso_local global i32 0, align 4
@g4x_get_aux_clock_divider = common dso_local global i32 0, align 4
@skl_get_aux_send_ctl = common dso_local global i32 0, align 4
@g4x_get_aux_send_ctl = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"DPDDC-%c\00", align 1
@intel_dp_aux_transfer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @intel_dp_aux_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_aux_init(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_digital_port*, align 8
  %5 = alloca %struct.intel_encoder*, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %6 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %7 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %6)
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %9 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %8)
  store %struct.intel_digital_port* %9, %struct.intel_digital_port** %4, align 8
  %10 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %11 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %10, i32 0, i32 0
  store %struct.intel_encoder* %11, %struct.intel_encoder** %5, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = call i32 @INTEL_GEN(%struct.drm_i915_private* %12)
  %14 = icmp sge i32 %13, 9
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load i32, i32* @skl_aux_ctl_reg, align 4
  %17 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %18 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @skl_aux_data_reg, align 4
  %20 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %21 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  br label %41

22:                                               ; preds = %1
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %24 = call i64 @HAS_PCH_SPLIT(%struct.drm_i915_private* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i32, i32* @ilk_aux_ctl_reg, align 4
  %28 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %29 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @ilk_aux_data_reg, align 4
  %31 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %32 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  br label %40

33:                                               ; preds = %22
  %34 = load i32, i32* @g4x_aux_ctl_reg, align 4
  %35 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %36 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @g4x_aux_data_reg, align 4
  %38 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %39 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %33, %26
  br label %41

41:                                               ; preds = %40, %15
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %43 = call i32 @INTEL_GEN(%struct.drm_i915_private* %42)
  %44 = icmp sge i32 %43, 9
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* @skl_get_aux_clock_divider, align 4
  %47 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %48 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  br label %75

49:                                               ; preds = %41
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %51 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %55 = call i64 @IS_HASWELL(%struct.drm_i915_private* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53, %49
  %58 = load i32, i32* @hsw_get_aux_clock_divider, align 4
  %59 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %60 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  br label %74

61:                                               ; preds = %53
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %63 = call i64 @HAS_PCH_SPLIT(%struct.drm_i915_private* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* @ilk_get_aux_clock_divider, align 4
  %67 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %68 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  br label %73

69:                                               ; preds = %61
  %70 = load i32, i32* @g4x_get_aux_clock_divider, align 4
  %71 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %72 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %65
  br label %74

74:                                               ; preds = %73, %57
  br label %75

75:                                               ; preds = %74, %45
  %76 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %77 = call i32 @INTEL_GEN(%struct.drm_i915_private* %76)
  %78 = icmp sge i32 %77, 9
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* @skl_get_aux_send_ctl, align 4
  %81 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %82 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %87

83:                                               ; preds = %75
  %84 = load i32, i32* @g4x_get_aux_send_ctl, align 4
  %85 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %86 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %83, %79
  %88 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %89 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %88, i32 0, i32 0
  %90 = call i32 @drm_dp_aux_init(%struct.TYPE_2__* %89)
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %93 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @port_name(i32 %94)
  %96 = call i32 @kasprintf(i32 %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %98 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* @intel_dp_aux_transfer, align 4
  %101 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %102 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  ret void
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_dp_aux_init(%struct.TYPE_2__*) #1

declare dso_local i32 @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @port_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
