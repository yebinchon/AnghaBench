; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_domain.c_i915_gem_get_caching_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_domain.c_i915_gem_get_caching_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_gem_caching = type { i32, i32 }
%struct.drm_i915_gem_object = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@I915_CACHING_CACHED = common dso_local global i32 0, align 4
@I915_CACHING_DISPLAY = common dso_local global i32 0, align 4
@I915_CACHING_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_get_caching_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_i915_gem_caching*, align 8
  %8 = alloca %struct.drm_i915_gem_object*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.drm_file* %2, %struct.drm_file** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.drm_i915_gem_caching*
  store %struct.drm_i915_gem_caching* %11, %struct.drm_i915_gem_caching** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %14 = load %struct.drm_i915_gem_caching*, %struct.drm_i915_gem_caching** %7, align 8
  %15 = getelementptr inbounds %struct.drm_i915_gem_caching, %struct.drm_i915_gem_caching* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.drm_i915_gem_object* @i915_gem_object_lookup_rcu(%struct.drm_file* %13, i32 %16)
  store %struct.drm_i915_gem_object* %17, %struct.drm_i915_gem_object** %8, align 8
  %18 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %19 = icmp ne %struct.drm_i915_gem_object* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %9, align 4
  br label %40

23:                                               ; preds = %3
  %24 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %25 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %35 [
    i32 129, label %27
    i32 130, label %27
    i32 128, label %31
  ]

27:                                               ; preds = %23, %23
  %28 = load i32, i32* @I915_CACHING_CACHED, align 4
  %29 = load %struct.drm_i915_gem_caching*, %struct.drm_i915_gem_caching** %7, align 8
  %30 = getelementptr inbounds %struct.drm_i915_gem_caching, %struct.drm_i915_gem_caching* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %39

31:                                               ; preds = %23
  %32 = load i32, i32* @I915_CACHING_DISPLAY, align 4
  %33 = load %struct.drm_i915_gem_caching*, %struct.drm_i915_gem_caching** %7, align 8
  %34 = getelementptr inbounds %struct.drm_i915_gem_caching, %struct.drm_i915_gem_caching* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %39

35:                                               ; preds = %23
  %36 = load i32, i32* @I915_CACHING_NONE, align 4
  %37 = load %struct.drm_i915_gem_caching*, %struct.drm_i915_gem_caching** %7, align 8
  %38 = getelementptr inbounds %struct.drm_i915_gem_caching, %struct.drm_i915_gem_caching* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %31, %27
  br label %40

40:                                               ; preds = %39, %20
  %41 = call i32 (...) @rcu_read_unlock()
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_lookup_rcu(%struct.drm_file*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
