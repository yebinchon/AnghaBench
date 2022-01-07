; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_intel_power_well_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_intel_power_well_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i915_power_well = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Use count on power well %s is already zero\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.i915_power_well*)* @intel_power_well_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_power_well_put(%struct.drm_i915_private* %0, %struct.i915_power_well* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_power_well*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.i915_power_well* %1, %struct.i915_power_well** %4, align 8
  %5 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %6 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %12 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @WARN(i32 %10, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %18 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %24 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %25 = call i32 @intel_power_well_disable(%struct.drm_i915_private* %23, %struct.i915_power_well* %24)
  br label %26

26:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @intel_power_well_disable(%struct.drm_i915_private*, %struct.i915_power_well*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
