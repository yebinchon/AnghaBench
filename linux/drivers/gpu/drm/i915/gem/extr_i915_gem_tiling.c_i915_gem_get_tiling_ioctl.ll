; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_tiling.c_i915_gem_get_tiling_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_tiling.c_i915_gem_get_tiling_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_gem_get_tiling = type { i32, i64, i64, i32 }
%struct.drm_i915_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.drm_i915_gem_object = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@TILING_MASK = common dso_local global i32 0, align 4
@I915_BIT_6_SWIZZLE_NONE = common dso_local global i64 0, align 8
@QUIRK_PIN_SWIZZLED_PAGES = common dso_local global i32 0, align 4
@I915_BIT_6_SWIZZLE_UNKNOWN = common dso_local global i64 0, align 8
@I915_BIT_6_SWIZZLE_9_17 = common dso_local global i64 0, align 8
@I915_BIT_6_SWIZZLE_9 = common dso_local global i64 0, align 8
@I915_BIT_6_SWIZZLE_9_10_17 = common dso_local global i64 0, align 8
@I915_BIT_6_SWIZZLE_9_10 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_get_tiling_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_gem_get_tiling*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca %struct.drm_i915_gem_object*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_i915_gem_get_tiling*
  store %struct.drm_i915_gem_get_tiling* %13, %struct.drm_i915_gem_get_tiling** %8, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %9, align 8
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %20 = load %struct.drm_i915_gem_get_tiling*, %struct.drm_i915_gem_get_tiling** %8, align 8
  %21 = getelementptr inbounds %struct.drm_i915_gem_get_tiling, %struct.drm_i915_gem_get_tiling* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.drm_i915_gem_object* @i915_gem_object_lookup_rcu(%struct.drm_file* %19, i32 %22)
  store %struct.drm_i915_gem_object* %23, %struct.drm_i915_gem_object** %10, align 8
  %24 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %25 = icmp ne %struct.drm_i915_gem_object* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %28 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @READ_ONCE(i32 %29)
  %31 = load i32, i32* @TILING_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load %struct.drm_i915_gem_get_tiling*, %struct.drm_i915_gem_get_tiling** %8, align 8
  %34 = getelementptr inbounds %struct.drm_i915_gem_get_tiling, %struct.drm_i915_gem_get_tiling* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %26, %3
  %36 = call i32 (...) @rcu_read_unlock()
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %4, align 4
  br label %103

42:                                               ; preds = %35
  %43 = load %struct.drm_i915_gem_get_tiling*, %struct.drm_i915_gem_get_tiling** %8, align 8
  %44 = getelementptr inbounds %struct.drm_i915_gem_get_tiling, %struct.drm_i915_gem_get_tiling* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %60 [
    i32 129, label %46
    i32 128, label %53
    i32 130, label %61
  ]

46:                                               ; preds = %42
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %48 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.drm_i915_gem_get_tiling*, %struct.drm_i915_gem_get_tiling** %8, align 8
  %52 = getelementptr inbounds %struct.drm_i915_gem_get_tiling, %struct.drm_i915_gem_get_tiling* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  br label %65

53:                                               ; preds = %42
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %55 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.drm_i915_gem_get_tiling*, %struct.drm_i915_gem_get_tiling** %8, align 8
  %59 = getelementptr inbounds %struct.drm_i915_gem_get_tiling, %struct.drm_i915_gem_get_tiling* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %65

60:                                               ; preds = %42
  br label %61

61:                                               ; preds = %42, %60
  %62 = load i64, i64* @I915_BIT_6_SWIZZLE_NONE, align 8
  %63 = load %struct.drm_i915_gem_get_tiling*, %struct.drm_i915_gem_get_tiling** %8, align 8
  %64 = getelementptr inbounds %struct.drm_i915_gem_get_tiling, %struct.drm_i915_gem_get_tiling* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %53, %46
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %67 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @QUIRK_PIN_SWIZZLED_PAGES, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i64, i64* @I915_BIT_6_SWIZZLE_UNKNOWN, align 8
  %74 = load %struct.drm_i915_gem_get_tiling*, %struct.drm_i915_gem_get_tiling** %8, align 8
  %75 = getelementptr inbounds %struct.drm_i915_gem_get_tiling, %struct.drm_i915_gem_get_tiling* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  br label %82

76:                                               ; preds = %65
  %77 = load %struct.drm_i915_gem_get_tiling*, %struct.drm_i915_gem_get_tiling** %8, align 8
  %78 = getelementptr inbounds %struct.drm_i915_gem_get_tiling, %struct.drm_i915_gem_get_tiling* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.drm_i915_gem_get_tiling*, %struct.drm_i915_gem_get_tiling** %8, align 8
  %81 = getelementptr inbounds %struct.drm_i915_gem_get_tiling, %struct.drm_i915_gem_get_tiling* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %76, %72
  %83 = load %struct.drm_i915_gem_get_tiling*, %struct.drm_i915_gem_get_tiling** %8, align 8
  %84 = getelementptr inbounds %struct.drm_i915_gem_get_tiling, %struct.drm_i915_gem_get_tiling* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @I915_BIT_6_SWIZZLE_9_17, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i64, i64* @I915_BIT_6_SWIZZLE_9, align 8
  %90 = load %struct.drm_i915_gem_get_tiling*, %struct.drm_i915_gem_get_tiling** %8, align 8
  %91 = getelementptr inbounds %struct.drm_i915_gem_get_tiling, %struct.drm_i915_gem_get_tiling* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %88, %82
  %93 = load %struct.drm_i915_gem_get_tiling*, %struct.drm_i915_gem_get_tiling** %8, align 8
  %94 = getelementptr inbounds %struct.drm_i915_gem_get_tiling, %struct.drm_i915_gem_get_tiling* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @I915_BIT_6_SWIZZLE_9_10_17, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i64, i64* @I915_BIT_6_SWIZZLE_9_10, align 8
  %100 = load %struct.drm_i915_gem_get_tiling*, %struct.drm_i915_gem_get_tiling** %8, align 8
  %101 = getelementptr inbounds %struct.drm_i915_gem_get_tiling, %struct.drm_i915_gem_get_tiling* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %98, %92
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %40
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_lookup_rcu(%struct.drm_file*, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
