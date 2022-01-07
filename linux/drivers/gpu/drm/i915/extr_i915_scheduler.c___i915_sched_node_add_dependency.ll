; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_scheduler.c___i915_sched_node_add_dependency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_scheduler.c___i915_sched_node_add_dependency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_sched_node = type { i32, i32, i32 }
%struct.i915_dependency = type { i64, %struct.i915_sched_node*, %struct.i915_sched_node*, i32, i32, i32 }

@schedule_lock = common dso_local global i32 0, align 4
@I915_SCHED_HAS_SEMAPHORE_CHAIN = common dso_local global i32 0, align 4
@__NO_PREEMPTION = common dso_local global i32 0, align 4
@I915_PRIORITY_MASK = common dso_local global i32 0, align 4
@I915_DEPENDENCY_EXTERNAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__i915_sched_node_add_dependency(%struct.i915_sched_node* %0, %struct.i915_sched_node* %1, %struct.i915_dependency* %2, i64 %3) #0 {
  %5 = alloca %struct.i915_sched_node*, align 8
  %6 = alloca %struct.i915_sched_node*, align 8
  %7 = alloca %struct.i915_dependency*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.i915_sched_node* %0, %struct.i915_sched_node** %5, align 8
  store %struct.i915_sched_node* %1, %struct.i915_sched_node** %6, align 8
  store %struct.i915_dependency* %2, %struct.i915_dependency** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %10 = call i32 @spin_lock_irq(i32* @schedule_lock)
  %11 = load %struct.i915_sched_node*, %struct.i915_sched_node** %6, align 8
  %12 = call i32 @node_signaled(%struct.i915_sched_node* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %68, label %14

14:                                               ; preds = %4
  %15 = load %struct.i915_dependency*, %struct.i915_dependency** %7, align 8
  %16 = getelementptr inbounds %struct.i915_dependency, %struct.i915_dependency* %15, i32 0, i32 5
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.i915_dependency*, %struct.i915_dependency** %7, align 8
  %19 = getelementptr inbounds %struct.i915_dependency, %struct.i915_dependency* %18, i32 0, i32 4
  %20 = load %struct.i915_sched_node*, %struct.i915_sched_node** %6, align 8
  %21 = getelementptr inbounds %struct.i915_sched_node, %struct.i915_sched_node* %20, i32 0, i32 2
  %22 = call i32 @list_add(i32* %19, i32* %21)
  %23 = load %struct.i915_dependency*, %struct.i915_dependency** %7, align 8
  %24 = getelementptr inbounds %struct.i915_dependency, %struct.i915_dependency* %23, i32 0, i32 3
  %25 = load %struct.i915_sched_node*, %struct.i915_sched_node** %5, align 8
  %26 = getelementptr inbounds %struct.i915_sched_node, %struct.i915_sched_node* %25, i32 0, i32 1
  %27 = call i32 @list_add(i32* %24, i32* %26)
  %28 = load %struct.i915_sched_node*, %struct.i915_sched_node** %6, align 8
  %29 = load %struct.i915_dependency*, %struct.i915_dependency** %7, align 8
  %30 = getelementptr inbounds %struct.i915_dependency, %struct.i915_dependency* %29, i32 0, i32 2
  store %struct.i915_sched_node* %28, %struct.i915_sched_node** %30, align 8
  %31 = load %struct.i915_sched_node*, %struct.i915_sched_node** %5, align 8
  %32 = load %struct.i915_dependency*, %struct.i915_dependency** %7, align 8
  %33 = getelementptr inbounds %struct.i915_dependency, %struct.i915_dependency* %32, i32 0, i32 1
  store %struct.i915_sched_node* %31, %struct.i915_sched_node** %33, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.i915_dependency*, %struct.i915_dependency** %7, align 8
  %36 = getelementptr inbounds %struct.i915_dependency, %struct.i915_dependency* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.i915_sched_node*, %struct.i915_sched_node** %6, align 8
  %38 = getelementptr inbounds %struct.i915_sched_node, %struct.i915_sched_node* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @I915_SCHED_HAS_SEMAPHORE_CHAIN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %14
  %44 = load %struct.i915_sched_node*, %struct.i915_sched_node** %6, align 8
  %45 = call i32 @node_started(%struct.i915_sched_node* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @I915_SCHED_HAS_SEMAPHORE_CHAIN, align 4
  %49 = load %struct.i915_sched_node*, %struct.i915_sched_node** %5, align 8
  %50 = getelementptr inbounds %struct.i915_sched_node, %struct.i915_sched_node* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %43, %14
  %54 = load i32, i32* @__NO_PREEMPTION, align 4
  %55 = load i32, i32* @I915_PRIORITY_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = call i32 @BUILD_BUG_ON(i32 %57)
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @I915_DEPENDENCY_EXTERNAL, align 8
  %61 = and i64 %59, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = load %struct.i915_sched_node*, %struct.i915_sched_node** %6, align 8
  %65 = load i32, i32* @__NO_PREEMPTION, align 4
  %66 = call i32 @__bump_priority(%struct.i915_sched_node* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %53
  store i32 1, i32* %9, align 4
  br label %68

68:                                               ; preds = %67, %4
  %69 = call i32 @spin_unlock_irq(i32* @schedule_lock)
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @node_signaled(%struct.i915_sched_node*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @node_started(%struct.i915_sched_node*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @__bump_priority(%struct.i915_sched_node*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
