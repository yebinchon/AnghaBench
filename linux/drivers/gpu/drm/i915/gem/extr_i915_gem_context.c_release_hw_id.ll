; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_release_hw_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_release_hw_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gem_context = type { i32, i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_gem_context*)* @release_hw_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_hw_id(%struct.i915_gem_context* %0) #0 {
  %2 = alloca %struct.i915_gem_context*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.i915_gem_context* %0, %struct.i915_gem_context** %2, align 8
  %4 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %5 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %4, i32 0, i32 2
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %8 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %7, i32 0, i32 0
  %9 = call i64 @list_empty(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %37

12:                                               ; preds = %1
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %18 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %17, i32 0, i32 0
  %19 = call i64 @list_empty(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %12
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %26 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ida_simple_remove(i32* %24, i32 %27)
  %29 = load %struct.i915_gem_context*, %struct.i915_gem_context** %2, align 8
  %30 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %29, i32 0, i32 0
  %31 = call i32 @list_del_init(i32* %30)
  br label %32

32:                                               ; preds = %21, %12
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %34 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  br label %37

37:                                               ; preds = %32, %11
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
