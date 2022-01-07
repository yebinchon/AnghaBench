; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_bxt_signal_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_bxt_signal_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.intel_digital_port = type { %struct.intel_encoder }
%struct.intel_encoder = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bxt_signal_levels(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %7 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %8 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %7)
  store %struct.intel_digital_port* %8, %struct.intel_digital_port** %3, align 8
  %9 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %10 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %4, align 8
  %15 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %16 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %15, i32 0, i32 0
  store %struct.intel_encoder* %16, %struct.intel_encoder** %5, align 8
  %17 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %18 = call i32 @intel_ddi_dp_level(%struct.intel_dp* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %20 = call i32 @INTEL_GEN(%struct.drm_i915_private* %19)
  %21 = icmp sge i32 %20, 11
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %24 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %25 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %29 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @icl_ddi_vswing_sequence(%struct.intel_encoder* %23, i32 %26, i32 %27, i32 %30)
  br label %51

32:                                               ; preds = %1
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %34 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %40 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cnl_ddi_vswing_sequence(%struct.intel_encoder* %37, i32 %38, i32 %41)
  br label %50

43:                                               ; preds = %32
  %44 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %47 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bxt_ddi_vswing_sequence(%struct.intel_encoder* %44, i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %43, %36
  br label %51

51:                                               ; preds = %50, %22
  ret i32 0
}

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_ddi_dp_level(%struct.intel_dp*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @icl_ddi_vswing_sequence(%struct.intel_encoder*, i32, i32, i32) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @cnl_ddi_vswing_sequence(%struct.intel_encoder*, i32, i32) #1

declare dso_local i32 @bxt_ddi_vswing_sequence(%struct.intel_encoder*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
