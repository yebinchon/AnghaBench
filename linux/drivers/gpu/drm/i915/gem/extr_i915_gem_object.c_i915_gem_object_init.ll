; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_object.c_i915_gem_object_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_object.c_i915_gem_object_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { %struct.TYPE_6__, %struct.drm_i915_gem_object_ops*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.drm_i915_gem_object_ops = type { i32 }

@I915_MADV_WILLNEED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_gem_object_init(%struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object_ops* %1) #0 {
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.drm_i915_gem_object_ops*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %3, align 8
  store %struct.drm_i915_gem_object_ops* %1, %struct.drm_i915_gem_object_ops** %4, align 8
  %5 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %6 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %8 = call i32 @mutex_init(i32* %7)
  %9 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %10 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %14 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %18 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %22 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %21, i32 0, i32 3
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %25 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %24, i32 0, i32 2
  %26 = call i32 @init_rcu_head(i32* %25)
  %27 = load %struct.drm_i915_gem_object_ops*, %struct.drm_i915_gem_object_ops** %4, align 8
  %28 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %29 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %28, i32 0, i32 1
  store %struct.drm_i915_gem_object_ops* %27, %struct.drm_i915_gem_object_ops** %29, align 8
  %30 = load i32, i32* @I915_MADV_WILLNEED, align 4
  %31 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %32 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 8
  %34 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %35 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = load i32, i32* @__GFP_NOWARN, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @INIT_RADIX_TREE(i32* %37, i32 %40)
  %42 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %43 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = call i32 @mutex_init(i32* %45)
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_rcu_head(i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
