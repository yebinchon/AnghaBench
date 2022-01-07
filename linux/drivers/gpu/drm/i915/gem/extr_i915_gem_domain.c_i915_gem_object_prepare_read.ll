; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_domain.c_i915_gem_object_prepare_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_domain.c_i915_gem_object_prepare_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@I915_WAIT_INTERRUPTIBLE = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@I915_BO_CACHE_COHERENT_FOR_READ = common dso_local global i32 0, align 4
@X86_FEATURE_CLFLUSH = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_CPU = common dso_local global i32 0, align 4
@CLFLUSH_BEFORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_object_prepare_read(%struct.drm_i915_gem_object* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %9 = call i32 @i915_gem_object_has_struct_page(%struct.drm_i915_gem_object* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %81

14:                                               ; preds = %2
  %15 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %16 = call i32 @i915_gem_object_lock_interruptible(%struct.drm_i915_gem_object* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %81

21:                                               ; preds = %14
  %22 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %23 = load i32, i32* @I915_WAIT_INTERRUPTIBLE, align 4
  %24 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %25 = call i32 @i915_gem_object_wait(%struct.drm_i915_gem_object* %22, i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %77

29:                                               ; preds = %21
  %30 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %31 = call i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %77

35:                                               ; preds = %29
  %36 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %37 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @I915_BO_CACHE_COHERENT_FOR_READ, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @X86_FEATURE_CLFLUSH, align 4
  %44 = call i32 @static_cpu_has(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42, %35
  %47 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %48 = call i32 @i915_gem_object_set_to_cpu_domain(%struct.drm_i915_gem_object* %47, i32 0)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %74

52:                                               ; preds = %46
  br label %73

53:                                               ; preds = %42
  %54 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %55 = load i32, i32* @I915_GEM_DOMAIN_CPU, align 4
  %56 = xor i32 %55, -1
  %57 = call i32 @i915_gem_object_flush_write_domain(%struct.drm_i915_gem_object* %54, i32 %56)
  %58 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %59 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %53
  %63 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %64 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @I915_GEM_DOMAIN_CPU, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* @CLFLUSH_BEFORE, align 4
  %71 = load i32*, i32** %5, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %62, %53
  br label %73

73:                                               ; preds = %72, %52
  store i32 0, i32* %3, align 4
  br label %81

74:                                               ; preds = %51
  %75 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %76 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %75)
  br label %77

77:                                               ; preds = %74, %34, %28
  %78 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %79 = call i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object* %78)
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %73, %19, %11
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @i915_gem_object_has_struct_page(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_lock_interruptible(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_wait(%struct.drm_i915_gem_object*, i32, i32) #1

declare dso_local i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @static_cpu_has(i32) #1

declare dso_local i32 @i915_gem_object_set_to_cpu_domain(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_flush_write_domain(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
