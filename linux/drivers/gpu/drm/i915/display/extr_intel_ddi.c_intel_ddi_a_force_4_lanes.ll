; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_a_force_4_lanes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_a_force_4_lanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@PORT_A = common dso_local global i64 0, align 8
@DDI_A_4_LANES = common dso_local global i32 0, align 4
@PORT_E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*)* @intel_ddi_a_force_4_lanes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ddi_a_force_4_lanes(%struct.intel_digital_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %3, align 8
  %5 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %6 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.drm_i915_private* @to_i915(i32 %9)
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %4, align 8
  %11 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %12 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PORT_A, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

18:                                               ; preds = %1
  %19 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %20 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DDI_A_4_LANES, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %42

26:                                               ; preds = %18
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %28 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %42

31:                                               ; preds = %26
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %33 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %37 = load i32, i32* @PORT_E, align 4
  %38 = call i32 @intel_bios_is_port_present(%struct.drm_i915_private* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %42

41:                                               ; preds = %35, %31
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %40, %30, %25, %17
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_bios_is_port_present(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
