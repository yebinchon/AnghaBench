; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tc.c_intel_tc_port_get_lane_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tc.c_intel_tc_port_get_lane_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { %struct.intel_uncore }
%struct.intel_uncore = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_tc_port_get_lane_mask(%struct.intel_digital_port* %0) #0 {
  %2 = alloca %struct.intel_digital_port*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_uncore*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %2, align 8
  %7 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %8 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_i915_private* @to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %3, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %14 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %15 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @intel_port_to_tc(%struct.drm_i915_private* %13, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  store %struct.intel_uncore* %20, %struct.intel_uncore** %5, align 8
  %21 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %22 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %23 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @PORT_TX_DFLEXDPSP(i32 %24)
  %26 = call i32 @intel_uncore_read(%struct.intel_uncore* %21, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, -1
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @DP_LANE_ASSIGNMENT_MASK(i32 %32)
  %34 = and i32 %31, %33
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @DP_LANE_ASSIGNMENT_SHIFT(i32 %35)
  %37 = ashr i32 %34, %36
  ret i32 %37
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_port_to_tc(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_uncore_read(%struct.intel_uncore*, i32) #1

declare dso_local i32 @PORT_TX_DFLEXDPSP(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @DP_LANE_ASSIGNMENT_MASK(i32) #1

declare dso_local i32 @DP_LANE_ASSIGNMENT_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
