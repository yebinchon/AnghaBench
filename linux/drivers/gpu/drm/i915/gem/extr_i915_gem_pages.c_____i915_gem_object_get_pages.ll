; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_pages.c_____i915_gem_object_get_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_pages.c_____i915_gem_object_get_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { {}* }
%struct.TYPE_3__ = type { i64 }

@I915_MADV_WILLNEED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Attempting to obtain a purgeable object\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @____i915_gem_object_get_pages(%struct.drm_i915_gem_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %3, align 8
  %5 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %6 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @I915_MADV_WILLNEED, align 8
  %10 = icmp ne i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EFAULT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %39

18:                                               ; preds = %1
  %19 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %20 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.drm_i915_gem_object*)**
  %24 = load i32 (%struct.drm_i915_gem_object*)*, i32 (%struct.drm_i915_gem_object*)** %23, align 8
  %25 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %26 = call i32 %24(%struct.drm_i915_gem_object* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %18
  %30 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %31 = call i32 @i915_gem_object_has_pages(%struct.drm_i915_gem_object* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %29, %18
  %35 = phi i1 [ false, %18 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @GEM_BUG_ON(i32 %36)
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %14
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_gem_object_has_pages(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
