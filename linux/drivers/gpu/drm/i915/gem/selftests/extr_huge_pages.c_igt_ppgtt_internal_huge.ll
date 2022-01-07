; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_pages.c_igt_ppgtt_internal_huge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_pages.c_igt_ppgtt_internal_huge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gem_context = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@igt_ppgtt_internal_huge.sizes = internal constant [6 x i32] [i32 128, i32 133, i32 131, i32 129, i32 132, i32 130], align 16
@I915_GTT_PAGE_SIZE_64K = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"internal unable to allocate huge-page(s) with size=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"internal write-huge failed with size=%u\0A\00", align 1
@I915_MM_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_ppgtt_internal_huge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_ppgtt_internal_huge(i8* %0) #0 {
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
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %67, %1
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @igt_ppgtt_internal_huge.sizes, i64 0, i64 0))
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %70

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* @igt_ppgtt_internal_huge.sizes, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.drm_i915_gem_object* @i915_gem_object_create_internal(%struct.drm_i915_private* %24, i32 %25)
  store %struct.drm_i915_gem_object* %26, %struct.drm_i915_gem_object** %6, align 8
  %27 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %28 = call i64 @IS_ERR(%struct.drm_i915_gem_object* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %32 = call i32 @PTR_ERR(%struct.drm_i915_gem_object* %31)
  store i32 %32, i32* %2, align 4
  br label %78

33:                                               ; preds = %19
  %34 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %35 = call i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %74

39:                                               ; preds = %33
  %40 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %41 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @I915_GTT_PAGE_SIZE_64K, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @pr_info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %71

50:                                               ; preds = %39
  %51 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %52 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %53 = call i32 @igt_write_huge(%struct.i915_gem_context* %51, %struct.drm_i915_gem_object* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %71

59:                                               ; preds = %50
  %60 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %61 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %60)
  %62 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %63 = load i32, i32* @I915_MM_NORMAL, align 4
  %64 = call i32 @__i915_gem_object_put_pages(%struct.drm_i915_gem_object* %62, i32 %63)
  %65 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %66 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %65)
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %15

70:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %78

71:                                               ; preds = %56, %47
  %72 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %73 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %72)
  br label %74

74:                                               ; preds = %71, %38
  %75 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %76 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %75)
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %70, %30
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_create_internal(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

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
