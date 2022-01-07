; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tc.c___intel_tc_port_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tc.c___intel_tc_port_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@POWER_DOMAIN_DISPLAY_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_digital_port*, i32)* @__intel_tc_port_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__intel_tc_port_lock(%struct.intel_digital_port* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %8 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_i915_private* @to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %5, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %14 = load i32, i32* @POWER_DOMAIN_DISPLAY_CORE, align 4
  %15 = call i32 @intel_display_power_get(%struct.drm_i915_private* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %17 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %20 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %2
  %24 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %25 = call i64 @intel_tc_port_needs_reset(%struct.intel_digital_port* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @intel_tc_port_reset_mode(%struct.intel_digital_port* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %23, %2
  %32 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %33 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %38 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_display_power_get(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @intel_tc_port_needs_reset(%struct.intel_digital_port*) #1

declare dso_local i32 @intel_tc_port_reset_mode(%struct.intel_digital_port*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
