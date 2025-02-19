; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_ilk_get_aux_clock_divider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_ilk_get_aux_clock_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.drm_i915_private = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_digital_port = type { i64 }

@AUX_CH_A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*, i32)* @ilk_get_aux_clock_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ilk_get_aux_clock_divider(%struct.intel_dp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_dp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_digital_port*, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %9 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %8)
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %6, align 8
  %10 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %11 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %10)
  store %struct.intel_digital_port* %11, %struct.intel_digital_port** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

15:                                               ; preds = %2
  %16 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %17 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AUX_CH_A, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @DIV_ROUND_CLOSEST(i32 %26, i32 2000)
  store i32 %27, i32* %3, align 4
  br label %33

28:                                               ; preds = %15
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %30 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @DIV_ROUND_CLOSEST(i32 %31, i32 2000)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %28, %21, %14
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
