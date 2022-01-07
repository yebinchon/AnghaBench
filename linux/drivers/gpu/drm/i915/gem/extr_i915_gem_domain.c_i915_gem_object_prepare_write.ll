; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_domain.c_i915_gem_object_prepare_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_domain.c_i915_gem_object_prepare_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@I915_WAIT_INTERRUPTIBLE = common dso_local global i32 0, align 4
@I915_WAIT_ALL = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@I915_BO_CACHE_COHERENT_FOR_WRITE = common dso_local global i32 0, align 4
@X86_FEATURE_CLFLUSH = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_CPU = common dso_local global i32 0, align 4
@CLFLUSH_AFTER = common dso_local global i32 0, align 4
@CLFLUSH_BEFORE = common dso_local global i32 0, align 4
@ORIGIN_CPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_object_prepare_write(%struct.drm_i915_gem_object* %0, i32* %1) #0 {
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
  br label %98

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
  br label %98

21:                                               ; preds = %14
  %22 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %23 = load i32, i32* @I915_WAIT_INTERRUPTIBLE, align 4
  %24 = load i32, i32* @I915_WAIT_ALL, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %27 = call i32 @i915_gem_object_wait(%struct.drm_i915_gem_object* %22, i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %94

31:                                               ; preds = %21
  %32 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %33 = call i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %94

37:                                               ; preds = %31
  %38 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %39 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @I915_BO_CACHE_COHERENT_FOR_WRITE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @X86_FEATURE_CLFLUSH, align 4
  %46 = call i32 @static_cpu_has(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %44, %37
  %49 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %50 = call i32 @i915_gem_object_set_to_cpu_domain(%struct.drm_i915_gem_object* %49, i32 1)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %91

54:                                               ; preds = %48
  br label %82

55:                                               ; preds = %44
  %56 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %57 = load i32, i32* @I915_GEM_DOMAIN_CPU, align 4
  %58 = xor i32 %57, -1
  %59 = call i32 @i915_gem_object_flush_write_domain(%struct.drm_i915_gem_object* %56, i32 %58)
  %60 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %61 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %81, label %64

64:                                               ; preds = %55
  %65 = load i32, i32* @CLFLUSH_AFTER, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  %69 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %70 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @I915_GEM_DOMAIN_CPU, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %64
  %76 = load i32, i32* @CLFLUSH_BEFORE, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %75, %64
  br label %81

81:                                               ; preds = %80, %55
  br label %82

82:                                               ; preds = %81, %54
  %83 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %84 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ORIGIN_CPU, align 4
  %87 = call i32 @intel_frontbuffer_invalidate(i32 %85, i32 %86)
  %88 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %89 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 4
  store i32 0, i32* %3, align 4
  br label %98

91:                                               ; preds = %53
  %92 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %93 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %92)
  br label %94

94:                                               ; preds = %91, %36, %30
  %95 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %96 = call i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object* %95)
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %94, %82, %19, %11
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @i915_gem_object_has_struct_page(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_lock_interruptible(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_wait(%struct.drm_i915_gem_object*, i32, i32) #1

declare dso_local i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @static_cpu_has(i32) #1

declare dso_local i32 @i915_gem_object_set_to_cpu_domain(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_flush_write_domain(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @intel_frontbuffer_invalidate(i32, i32) #1

declare dso_local i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
