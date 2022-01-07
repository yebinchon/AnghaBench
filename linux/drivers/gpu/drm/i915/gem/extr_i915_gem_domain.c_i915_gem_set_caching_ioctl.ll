; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_domain.c_i915_gem_set_caching_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_domain.c_i915_gem_set_caching_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_gem_caching = type { i32, i32 }
%struct.drm_i915_gem_object = type { i32 }

@I915_CACHE_NONE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@I915_CACHE_LLC = common dso_local global i32 0, align 4
@I915_CACHE_WT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@I915_WAIT_INTERRUPTIBLE = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_set_caching_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.drm_i915_gem_caching*, align 8
  %10 = alloca %struct.drm_i915_gem_object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.drm_i915_gem_caching*
  store %struct.drm_i915_gem_caching* %16, %struct.drm_i915_gem_caching** %9, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.drm_i915_gem_caching*, %struct.drm_i915_gem_caching** %9, align 8
  %18 = getelementptr inbounds %struct.drm_i915_gem_caching, %struct.drm_i915_gem_caching* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %45 [
    i32 128, label %20
    i32 130, label %22
    i32 129, label %35
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @I915_CACHE_NONE, align 4
  store i32 %21, i32* %11, align 4
  br label %48

22:                                               ; preds = %3
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %24 = call i32 @HAS_LLC(%struct.drm_i915_private* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %28 = call i32 @HAS_SNOOP(%struct.drm_i915_private* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %109

33:                                               ; preds = %26, %22
  %34 = load i32, i32* @I915_CACHE_LLC, align 4
  store i32 %34, i32* %11, align 4
  br label %48

35:                                               ; preds = %3
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %37 = call i32 @HAS_WT(%struct.drm_i915_private* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @I915_CACHE_WT, align 4
  br label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @I915_CACHE_NONE, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %11, align 4
  br label %48

45:                                               ; preds = %3
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %109

48:                                               ; preds = %43, %33, %20
  %49 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %50 = load %struct.drm_i915_gem_caching*, %struct.drm_i915_gem_caching** %9, align 8
  %51 = getelementptr inbounds %struct.drm_i915_gem_caching, %struct.drm_i915_gem_caching* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.drm_i915_gem_object* @i915_gem_object_lookup(%struct.drm_file* %49, i32 %52)
  store %struct.drm_i915_gem_object* %53, %struct.drm_i915_gem_object** %10, align 8
  %54 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %55 = icmp ne %struct.drm_i915_gem_object* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %109

59:                                               ; preds = %48
  %60 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %61 = call i64 @i915_gem_object_is_proxy(%struct.drm_i915_gem_object* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @ENXIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %12, align 4
  br label %105

66:                                               ; preds = %59
  %67 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %68 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %105

73:                                               ; preds = %66
  %74 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %75 = load i32, i32* @I915_WAIT_INTERRUPTIBLE, align 4
  %76 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %77 = call i32 @i915_gem_object_wait(%struct.drm_i915_gem_object* %74, i32 %75, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %105

81:                                               ; preds = %73
  %82 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %83 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = call i32 @mutex_lock_interruptible(i32* %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %105

89:                                               ; preds = %81
  %90 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %91 = call i32 @i915_gem_object_lock_interruptible(%struct.drm_i915_gem_object* %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @i915_gem_object_set_cache_level(%struct.drm_i915_gem_object* %95, i32 %96)
  store i32 %97, i32* %12, align 4
  %98 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %99 = call i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object* %98)
  br label %100

100:                                              ; preds = %94, %89
  %101 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %102 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = call i32 @mutex_unlock(i32* %103)
  br label %105

105:                                              ; preds = %100, %88, %80, %72, %63
  %106 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %107 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %106)
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %105, %56, %45, %30
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @HAS_LLC(%struct.drm_i915_private*) #1

declare dso_local i32 @HAS_SNOOP(%struct.drm_i915_private*) #1

declare dso_local i32 @HAS_WT(%struct.drm_i915_private*) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i64 @i915_gem_object_is_proxy(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_wait(%struct.drm_i915_gem_object*, i32, i32) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @i915_gem_object_lock_interruptible(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_set_cache_level(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i915_gem_object_put(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
