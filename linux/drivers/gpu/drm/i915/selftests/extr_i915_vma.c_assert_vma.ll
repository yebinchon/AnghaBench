; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_vma.c_assert_vma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_vma.c_assert_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.drm_i915_gem_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.i915_gem_context = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"VMA created with wrong VM\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"VMA created with wrong size, found %llu, expected %zu\0A\00", align 1
@I915_GGTT_VIEW_NORMAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"VMA created with wrong type [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_vma*, %struct.drm_i915_gem_object*, %struct.i915_gem_context*)* @assert_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assert_vma(%struct.i915_vma* %0, %struct.drm_i915_gem_object* %1, %struct.i915_gem_context* %2) #0 {
  %4 = alloca %struct.i915_vma*, align 8
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca %struct.i915_gem_context*, align 8
  %7 = alloca i32, align 4
  store %struct.i915_vma* %0, %struct.i915_vma** %4, align 8
  store %struct.drm_i915_gem_object* %1, %struct.drm_i915_gem_object** %5, align 8
  store %struct.i915_gem_context* %2, %struct.i915_gem_context** %6, align 8
  store i32 1, i32* %7, align 4
  %8 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %9 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %12 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %15, %3
  %18 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %19 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %22 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %20, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %17
  %27 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %28 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %31 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %29, i64 %33)
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %26, %17
  %36 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %37 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @I915_GGTT_VIEW_NORMAL, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %44 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %42, %35
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
