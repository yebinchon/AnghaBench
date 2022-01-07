; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_scheduler.c_i915_sched_node_add_dependency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_scheduler.c_i915_sched_node_add_dependency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_sched_node = type { i32 }
%struct.i915_dependency = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@I915_DEPENDENCY_EXTERNAL = common dso_local global i32 0, align 4
@I915_DEPENDENCY_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_sched_node_add_dependency(%struct.i915_sched_node* %0, %struct.i915_sched_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_sched_node*, align 8
  %5 = alloca %struct.i915_sched_node*, align 8
  %6 = alloca %struct.i915_dependency*, align 8
  store %struct.i915_sched_node* %0, %struct.i915_sched_node** %4, align 8
  store %struct.i915_sched_node* %1, %struct.i915_sched_node** %5, align 8
  %7 = call %struct.i915_dependency* (...) @i915_dependency_alloc()
  store %struct.i915_dependency* %7, %struct.i915_dependency** %6, align 8
  %8 = load %struct.i915_dependency*, %struct.i915_dependency** %6, align 8
  %9 = icmp ne %struct.i915_dependency* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.i915_sched_node*, %struct.i915_sched_node** %4, align 8
  %15 = load %struct.i915_sched_node*, %struct.i915_sched_node** %5, align 8
  %16 = load %struct.i915_dependency*, %struct.i915_dependency** %6, align 8
  %17 = load i32, i32* @I915_DEPENDENCY_EXTERNAL, align 4
  %18 = load i32, i32* @I915_DEPENDENCY_ALLOC, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @__i915_sched_node_add_dependency(%struct.i915_sched_node* %14, %struct.i915_sched_node* %15, %struct.i915_dependency* %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = load %struct.i915_dependency*, %struct.i915_dependency** %6, align 8
  %24 = call i32 @i915_dependency_free(%struct.i915_dependency* %23)
  br label %25

25:                                               ; preds = %22, %13
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %10
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.i915_dependency* @i915_dependency_alloc(...) #1

declare dso_local i32 @__i915_sched_node_add_dependency(%struct.i915_sched_node*, %struct.i915_sched_node*, %struct.i915_dependency*, i32) #1

declare dso_local i32 @i915_dependency_free(%struct.i915_dependency*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
