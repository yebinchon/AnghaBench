; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_g4x_aux_data_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_g4x_aux_data_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*, i32)* @g4x_aux_data_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g4x_aux_data_reg(%struct.intel_dp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_dp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_digital_port*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %10 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %9)
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %6, align 8
  %11 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %12 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %11)
  store %struct.intel_digital_port* %12, %struct.intel_digital_port** %7, align 8
  %13 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %14 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %21 [
    i32 130, label %17
    i32 129, label %17
    i32 128, label %17
  ]

17:                                               ; preds = %2, %2, %2
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @DP_AUX_CH_DATA(i32 %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %26

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @MISSING_CASE(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @DP_AUX_CH_DATA(i32 130, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %21, %17
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i32 @DP_AUX_CH_DATA(i32, i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
