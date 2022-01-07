; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c___i915_gem_context_pin_hw_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c___i915_gem_context_pin_hw_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gem_context = type { i32, i32, i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__i915_gem_context_pin_hw_id(%struct.i915_gem_context* %0) #0 {
  %2 = alloca %struct.i915_gem_context*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.i915_gem_context* %0, %struct.i915_gem_context** %2, align 8
  %5 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %6 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %5, i32 0, i32 3
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %13 = call i32 @i915_gem_context_is_closed(%struct.i915_gem_context* %12)
  %14 = call i32 @GEM_BUG_ON(i32 %13)
  %15 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %16 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %15, i32 0, i32 1
  %17 = call i64 @list_empty(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %1
  %20 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %21 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %20, i32 0, i32 0
  %22 = call i32 @atomic_read(i32* %21)
  %23 = call i32 @GEM_BUG_ON(i32 %22)
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %25 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %26 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %25, i32 0, i32 2
  %27 = call i32 @assign_hw_id(%struct.drm_i915_private* %24, i32* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %48

31:                                               ; preds = %19
  %32 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %33 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %32, i32 0, i32 1
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %35 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = call i32 @list_add_tail(i32* %33, i32* %36)
  br label %38

38:                                               ; preds = %31, %1
  %39 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %40 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %39, i32 0, i32 0
  %41 = call i32 @atomic_read(i32* %40)
  %42 = icmp eq i32 %41, -1
  %43 = zext i1 %42 to i32
  %44 = call i32 @GEM_BUG_ON(i32 %43)
  %45 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %46 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %45, i32 0, i32 0
  %47 = call i32 @atomic_inc(i32* %46)
  br label %48

48:                                               ; preds = %38, %30
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %50 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_gem_context_is_closed(%struct.i915_gem_context*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @assign_hw_id(%struct.drm_i915_private*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
