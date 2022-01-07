; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_pmu.c_free_event_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_pmu.c_free_event_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.attribute** }
%struct.attribute = type { %struct.attribute** }
%struct.i915_pmu = type { %struct.attribute**, %struct.attribute** }

@i915_pmu_events_attr_group = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_pmu*)* @free_event_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_event_attributes(%struct.i915_pmu* %0) #0 {
  %2 = alloca %struct.i915_pmu*, align 8
  %3 = alloca %struct.attribute**, align 8
  store %struct.i915_pmu* %0, %struct.i915_pmu** %2, align 8
  %4 = load %struct.attribute**, %struct.attribute*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i915_pmu_events_attr_group, i32 0, i32 0), align 8
  store %struct.attribute** %4, %struct.attribute*** %3, align 8
  br label %5

5:                                                ; preds = %15, %1
  %6 = load %struct.attribute**, %struct.attribute*** %3, align 8
  %7 = load %struct.attribute*, %struct.attribute** %6, align 8
  %8 = icmp ne %struct.attribute* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = load %struct.attribute**, %struct.attribute*** %3, align 8
  %11 = load %struct.attribute*, %struct.attribute** %10, align 8
  %12 = getelementptr inbounds %struct.attribute, %struct.attribute* %11, i32 0, i32 0
  %13 = load %struct.attribute**, %struct.attribute*** %12, align 8
  %14 = call i32 @kfree(%struct.attribute** %13)
  br label %15

15:                                               ; preds = %9
  %16 = load %struct.attribute**, %struct.attribute*** %3, align 8
  %17 = getelementptr inbounds %struct.attribute*, %struct.attribute** %16, i32 1
  store %struct.attribute** %17, %struct.attribute*** %3, align 8
  br label %5

18:                                               ; preds = %5
  %19 = load %struct.attribute**, %struct.attribute*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i915_pmu_events_attr_group, i32 0, i32 0), align 8
  %20 = call i32 @kfree(%struct.attribute** %19)
  %21 = load %struct.i915_pmu*, %struct.i915_pmu** %2, align 8
  %22 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %21, i32 0, i32 1
  %23 = load %struct.attribute**, %struct.attribute*** %22, align 8
  %24 = call i32 @kfree(%struct.attribute** %23)
  %25 = load %struct.i915_pmu*, %struct.i915_pmu** %2, align 8
  %26 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %25, i32 0, i32 0
  %27 = load %struct.attribute**, %struct.attribute*** %26, align 8
  %28 = call i32 @kfree(%struct.attribute** %27)
  store %struct.attribute** null, %struct.attribute*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i915_pmu_events_attr_group, i32 0, i32 0), align 8
  %29 = load %struct.i915_pmu*, %struct.i915_pmu** %2, align 8
  %30 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %29, i32 0, i32 1
  store %struct.attribute** null, %struct.attribute*** %30, align 8
  %31 = load %struct.i915_pmu*, %struct.i915_pmu** %2, align 8
  %32 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %31, i32 0, i32 0
  store %struct.attribute** null, %struct.attribute*** %32, align 8
  ret void
}

declare dso_local i32 @kfree(%struct.attribute**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
