; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_domain.c_i915_gem_object_set_to_cpu_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_domain.c_i915_gem_object_set_to_cpu_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32, i32 }

@I915_WAIT_INTERRUPTIBLE = common dso_local global i32 0, align 4
@I915_WAIT_ALL = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_CPU = common dso_local global i32 0, align 4
@I915_CLFLUSH_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_object_set_to_cpu_domain(%struct.drm_i915_gem_object* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %8 = call i32 @assert_object_held(%struct.drm_i915_gem_object* %7)
  %9 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %10 = load i32, i32* @I915_WAIT_INTERRUPTIBLE, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @I915_WAIT_ALL, align 4
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %15 ]
  %18 = or i32 %10, %17
  %19 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %20 = call i32 @i915_gem_object_wait(%struct.drm_i915_gem_object* %9, i32 %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %59

25:                                               ; preds = %16
  %26 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %27 = load i32, i32* @I915_GEM_DOMAIN_CPU, align 4
  %28 = xor i32 %27, -1
  %29 = call i32 @i915_gem_object_flush_write_domain(%struct.drm_i915_gem_object* %26, i32 %28)
  %30 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %31 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @I915_GEM_DOMAIN_CPU, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %25
  %37 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %38 = load i32, i32* @I915_CLFLUSH_SYNC, align 4
  %39 = call i32 @i915_gem_clflush_object(%struct.drm_i915_gem_object* %37, i32 %38)
  %40 = load i32, i32* @I915_GEM_DOMAIN_CPU, align 4
  %41 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %42 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %36, %25
  %46 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %47 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @I915_GEM_DOMAIN_CPU, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = call i32 @GEM_BUG_ON(i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %57 = call i32 @__start_cpu_write(%struct.drm_i915_gem_object* %56)
  br label %58

58:                                               ; preds = %55, %45
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %23
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @assert_object_held(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_wait(%struct.drm_i915_gem_object*, i32, i32) #1

declare dso_local i32 @i915_gem_object_flush_write_domain(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_clflush_object(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @__start_cpu_write(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
