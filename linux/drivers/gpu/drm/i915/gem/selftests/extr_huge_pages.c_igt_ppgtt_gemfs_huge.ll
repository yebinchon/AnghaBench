; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_pages.c_igt_ppgtt_gemfs_huge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_pages.c_igt_ppgtt_gemfs_huge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gem_context = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@igt_ppgtt_gemfs_huge.sizes = internal constant [5 x i32] [i32 131, i32 129, i32 128, i32 132, i32 130], align 16
@.str = private unnamed_addr constant [31 x i8] c"missing THP support, skipping\0A\00", align 1
@I915_GTT_PAGE_SIZE_2M = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [74 x i8] c"finishing test early, gemfs unable to allocate huge-page(s) with size=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"gemfs write-huge failed with size=%u\0A\00", align 1
@I915_MM_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_ppgtt_gemfs_huge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_ppgtt_gemfs_huge(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.i915_gem_context*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.i915_gem_context*
  store %struct.i915_gem_context* %11, %struct.i915_gem_context** %4, align 8
  %12 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %13 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %12, i32 0, i32 0
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %5, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %16 = call i32 @igt_can_allocate_thp(%struct.drm_i915_private* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %84

20:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %73, %20
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @igt_ppgtt_gemfs_huge.sizes, i64 0, i64 0))
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %76

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* @igt_ppgtt_gemfs_huge.sizes, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.drm_i915_gem_object* @i915_gem_object_create_shmem(%struct.drm_i915_private* %30, i32 %31)
  store %struct.drm_i915_gem_object* %32, %struct.drm_i915_gem_object** %6, align 8
  %33 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %34 = call i64 @IS_ERR(%struct.drm_i915_gem_object* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %38 = call i32 @PTR_ERR(%struct.drm_i915_gem_object* %37)
  store i32 %38, i32* %2, align 4
  br label %84

39:                                               ; preds = %25
  %40 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %41 = call i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %80

45:                                               ; preds = %39
  %46 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %47 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @I915_GTT_PAGE_SIZE_2M, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* %9, align 4
  %55 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %77

56:                                               ; preds = %45
  %57 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %58 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %59 = call i32 @igt_write_huge(%struct.i915_gem_context* %57, %struct.drm_i915_gem_object* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %77

65:                                               ; preds = %56
  %66 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %67 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %66)
  %68 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %69 = load i32, i32* @I915_MM_NORMAL, align 4
  %70 = call i32 @__i915_gem_object_put_pages(%struct.drm_i915_gem_object* %68, i32 %69)
  %71 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %72 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %71)
  br label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %21

76:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %84

77:                                               ; preds = %62, %53
  %78 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %79 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %78)
  br label %80

80:                                               ; preds = %77, %44
  %81 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %82 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %81)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %80, %76, %36, %18
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @igt_can_allocate_thp(%struct.drm_i915_private*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_create_shmem(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @igt_write_huge(%struct.i915_gem_context*, %struct.drm_i915_gem_object*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @__i915_gem_object_put_pages(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_put(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
