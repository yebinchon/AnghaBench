; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_object.c_igt_gem_huge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_object.c_igt_gem_huge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.drm_i915_gem_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to allocate %u pages (%lu total), err=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Page lookup mismatch at index %u [%u]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_gem_huge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_gem_huge(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 509, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.drm_i915_private*
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %5, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = mul i32 509, %12
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = call %struct.drm_i915_gem_object* @huge_gem_object(%struct.drm_i915_private* %11, i32 %13, i64 %21)
  store %struct.drm_i915_gem_object* %22, %struct.drm_i915_gem_object** %6, align 8
  %23 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %24 = call i64 @IS_ERR(%struct.drm_i915_gem_object* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %28 = call i32 @PTR_ERR(%struct.drm_i915_gem_object* %27)
  store i32 %28, i32* %2, align 4
  br label %81

29:                                               ; preds = %1
  %30 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %31 = call i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %36 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = udiv i32 %38, %39
  %41 = load i32, i32* %8, align 4
  %42 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 509, i32 %40, i32 %41)
  br label %77

43:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %70, %43
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %47 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = udiv i32 %49, %50
  %52 = icmp ult i32 %45, %51
  br i1 %52, label %53, label %73

53:                                               ; preds = %44
  %54 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @i915_gem_object_get_page(%struct.drm_i915_gem_object* %54, i32 %55)
  %57 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = urem i32 %58, 509
  %60 = call i64 @i915_gem_object_get_page(%struct.drm_i915_gem_object* %57, i32 %59)
  %61 = icmp ne i64 %56, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = urem i32 %64, 509
  %66 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  br label %74

69:                                               ; preds = %53
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %7, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %44

73:                                               ; preds = %44
  br label %74

74:                                               ; preds = %73, %62
  %75 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %76 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %75)
  br label %77

77:                                               ; preds = %74, %34
  %78 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %79 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %78)
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %26
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.drm_i915_gem_object* @huge_gem_object(%struct.drm_i915_private*, i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, ...) #1

declare dso_local i64 @i915_gem_object_get_page(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_put(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
