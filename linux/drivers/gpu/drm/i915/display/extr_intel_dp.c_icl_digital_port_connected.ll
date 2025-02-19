; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_icl_digital_port_connected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_icl_digital_port_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_encoder*)* @icl_digital_port_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_digital_port_connected(%struct.intel_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_digital_port*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  %7 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %8 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.drm_i915_private* @to_i915(i32 %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %4, align 8
  %12 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %13 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %12, i32 0, i32 2
  %14 = call %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_2__* %13)
  store %struct.intel_digital_port* %14, %struct.intel_digital_port** %5, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %16 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %17 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @intel_port_to_phy(%struct.drm_i915_private* %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @intel_phy_is_combo(%struct.drm_i915_private* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %26 = load %struct.intel_digital_port*, %struct.intel_digital_port** %5, align 8
  %27 = call i32 @icl_combo_port_connected(%struct.drm_i915_private* %25, %struct.intel_digital_port* %26)
  store i32 %27, i32* %2, align 4
  br label %43

28:                                               ; preds = %1
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @intel_phy_is_tc(%struct.drm_i915_private* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.intel_digital_port*, %struct.intel_digital_port** %5, align 8
  %35 = call i32 @intel_tc_port_connected(%struct.intel_digital_port* %34)
  store i32 %35, i32* %2, align 4
  br label %43

36:                                               ; preds = %28
  %37 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %38 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @MISSING_CASE(i32 %39)
  br label %41

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %33, %24
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_2__*) #1

declare dso_local i32 @intel_port_to_phy(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @intel_phy_is_combo(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @icl_combo_port_connected(%struct.drm_i915_private*, %struct.intel_digital_port*) #1

declare dso_local i64 @intel_phy_is_tc(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_tc_port_connected(%struct.intel_digital_port*) #1

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
