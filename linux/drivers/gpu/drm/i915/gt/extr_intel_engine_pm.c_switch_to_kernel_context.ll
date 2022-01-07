; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_pm.c_switch_to_kernel_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_pm.c_switch_to_kernel_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i64, i64, i32, i32, i32 }
%struct.i915_request = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@I915_PRIORITY_UNPREEMPTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_cs*)* @switch_to_kernel_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switch_to_kernel_context(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  store i32 1, i32* %6, align 4
  %7 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %8 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %11 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %68

15:                                               ; preds = %1
  %16 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %17 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @intel_gt_is_wedged(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %68

22:                                               ; preds = %15
  %23 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %24 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @__timeline_mark_lock(i32 %25)
  store i64 %26, i64* %5, align 8
  %27 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %28 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @GFP_NOWAIT, align 4
  %31 = call %struct.i915_request* @__i915_request_create(i32 %29, i32 %30)
  store %struct.i915_request* %31, %struct.i915_request** %4, align 8
  %32 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %33 = call i64 @IS_ERR(%struct.i915_request* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %61

36:                                               ; preds = %22
  %37 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %38 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @intel_timeline_enter(i32 %39)
  %41 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %42 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  %45 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %46 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %48 = call i32 @i915_request_add_active_barriers(%struct.i915_request* %47)
  %49 = load i32, i32* @I915_PRIORITY_UNPREEMPTABLE, align 4
  %50 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %51 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  %54 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %55 = call i32 @__i915_request_commit(%struct.i915_request* %54)
  %56 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %57 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %56, i32 0, i32 3
  %58 = call i32 @__intel_wakeref_defer_park(i32* %57)
  %59 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %60 = call i32 @__i915_request_queue(%struct.i915_request* %59, i32* null)
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %36, %35
  %62 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %63 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @__timeline_mark_unlock(i32 %64, i64 %65)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %61, %21, %14
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @intel_gt_is_wedged(i32) #1

declare dso_local i64 @__timeline_mark_lock(i32) #1

declare dso_local %struct.i915_request* @__i915_request_create(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_request*) #1

declare dso_local i32 @intel_timeline_enter(i32) #1

declare dso_local i32 @i915_request_add_active_barriers(%struct.i915_request*) #1

declare dso_local i32 @__i915_request_commit(%struct.i915_request*) #1

declare dso_local i32 @__intel_wakeref_defer_park(i32*) #1

declare dso_local i32 @__i915_request_queue(%struct.i915_request*, i32*) #1

declare dso_local i32 @__timeline_mark_unlock(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
