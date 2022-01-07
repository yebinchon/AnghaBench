; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_breadcrumbs.c_i915_request_cancel_breadcrumb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_breadcrumbs.c_i915_request_cancel_breadcrumb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.TYPE_3__, i32, %struct.intel_context*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.intel_context = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.intel_breadcrumbs }
%struct.intel_breadcrumbs = type { i32 }

@I915_FENCE_FLAG_SIGNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_request_cancel_breadcrumb(%struct.i915_request* %0) #0 {
  %2 = alloca %struct.i915_request*, align 8
  %3 = alloca %struct.intel_breadcrumbs*, align 8
  %4 = alloca %struct.intel_context*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %2, align 8
  %5 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %6 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %5, i32 0, i32 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.intel_breadcrumbs* %8, %struct.intel_breadcrumbs** %3, align 8
  %9 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %10 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %9, i32 0, i32 3
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = call i32 (...) @lockdep_assert_irqs_disabled()
  %13 = load %struct.intel_breadcrumbs*, %struct.intel_breadcrumbs** %3, align 8
  %14 = getelementptr inbounds %struct.intel_breadcrumbs, %struct.intel_breadcrumbs* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load i32, i32* @I915_FENCE_FLAG_SIGNAL, align 4
  %17 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %18 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i64 @test_bit(i32 %16, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %1
  %23 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %24 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %23, i32 0, i32 2
  %25 = load %struct.intel_context*, %struct.intel_context** %24, align 8
  store %struct.intel_context* %25, %struct.intel_context** %4, align 8
  %26 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %27 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %26, i32 0, i32 1
  %28 = call i32 @list_del(i32* %27)
  %29 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %30 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %29, i32 0, i32 1
  %31 = call i64 @list_empty(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %35 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %34, i32 0, i32 0
  %36 = call i32 @list_del_init(i32* %35)
  br label %37

37:                                               ; preds = %33, %22
  %38 = load i32, i32* @I915_FENCE_FLAG_SIGNAL, align 4
  %39 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %40 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @clear_bit(i32 %38, i32* %41)
  br label %43

43:                                               ; preds = %37, %1
  %44 = load %struct.intel_breadcrumbs*, %struct.intel_breadcrumbs** %3, align 8
  %45 = getelementptr inbounds %struct.intel_breadcrumbs, %struct.intel_breadcrumbs* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock(i32* %45)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @lockdep_assert_irqs_disabled(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
