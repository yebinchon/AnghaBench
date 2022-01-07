; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_shmem.c___i915_gem_object_release_shmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_shmem.c___i915_gem_object_release_shmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.sg_table = type { i32 }

@__I915_MADV_PURGED = common dso_local global i64 0, align 8
@I915_MADV_DONTNEED = common dso_local global i64 0, align 8
@I915_GEM_DOMAIN_CPU = common dso_local global i32 0, align 4
@I915_BO_CACHE_COHERENT_FOR_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__i915_gem_object_release_shmem(%struct.drm_i915_gem_object* %0, %struct.sg_table* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca %struct.sg_table*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %4, align 8
  store %struct.sg_table* %1, %struct.sg_table** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %8 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @__I915_MADV_PURGED, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @GEM_BUG_ON(i32 %13)
  %15 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %16 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @I915_MADV_DONTNEED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %23 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 0, i32* %24, align 8
  br label %25

25:                                               ; preds = %21, %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %30 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @I915_GEM_DOMAIN_CPU, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %37 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @I915_BO_CACHE_COHERENT_FOR_READ, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %44 = call i32 @drm_clflush_sg(%struct.sg_table* %43)
  br label %45

45:                                               ; preds = %42, %35, %28, %25
  %46 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %47 = call i32 @__start_cpu_write(%struct.drm_i915_gem_object* %46)
  ret void
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @drm_clflush_sg(%struct.sg_table*) #1

declare dso_local i32 @__start_cpu_write(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
