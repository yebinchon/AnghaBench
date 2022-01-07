; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_vma.c_assert_rotated.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_vma.c_assert_rotated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32 }
%struct.intel_rotation_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"Invalid sg table: too short at plane %d, (%d, %d)!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [85 x i8] c"Invalid sg.length, found %d, expected %lu for rotated page (%d, %d) [src index %lu]\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Invalid address for rotated page (%d, %d) [src index %lu]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scatterlist* (%struct.drm_i915_gem_object*, %struct.intel_rotation_info*, i32, %struct.scatterlist*)* @assert_rotated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scatterlist* @assert_rotated(%struct.drm_i915_gem_object* %0, %struct.intel_rotation_info* %1, i32 %2, %struct.scatterlist* %3) #0 {
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca %struct.intel_rotation_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %6, align 8
  store %struct.intel_rotation_info* %1, %struct.intel_rotation_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.scatterlist* %3, %struct.scatterlist** %9, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %94, %4
  %15 = load i32, i32* %10, align 4
  %16 = load %struct.intel_rotation_info*, %struct.intel_rotation_info** %7, align 8
  %17 = getelementptr inbounds %struct.intel_rotation_info, %struct.intel_rotation_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ult i32 %15, %23
  br i1 %24, label %25, label %97

25:                                               ; preds = %14
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %90, %25
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.intel_rotation_info*, %struct.intel_rotation_info** %7, align 8
  %29 = getelementptr inbounds %struct.intel_rotation_info, %struct.intel_rotation_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ult i32 %27, %35
  br i1 %36, label %37, label %93

37:                                               ; preds = %26
  %38 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %39 = icmp ne %struct.scatterlist* %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = zext i32 %43 to i64
  %45 = call i32 (i8*, i32, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42, i64 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.scatterlist* @ERR_PTR(i32 %47)
  store %struct.scatterlist* %48, %struct.scatterlist** %5, align 8
  br label %99

49:                                               ; preds = %37
  %50 = load %struct.intel_rotation_info*, %struct.intel_rotation_info** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i64 @rotated_index(%struct.intel_rotation_info* %50, i32 %51, i32 %52, i32 %53)
  store i64 %54, i64* %12, align 8
  %55 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i64 @i915_gem_object_get_dma_address(%struct.drm_i915_gem_object* %55, i64 %56)
  store i64 %57, i64* %13, align 8
  %58 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %59 = call i32 @sg_dma_len(%struct.scatterlist* %58)
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %49
  %63 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %64 = call i32 @sg_dma_len(%struct.scatterlist* %63)
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = load i32, i32* %10, align 4
  %67 = zext i32 %66 to i64
  %68 = load i32, i32* %11, align 4
  %69 = load i64, i64* %12, align 8
  %70 = call i32 (i8*, i32, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65, i64 %67, i32 %68, i64 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  %73 = call %struct.scatterlist* @ERR_PTR(i32 %72)
  store %struct.scatterlist* %73, %struct.scatterlist** %5, align 8
  br label %99

74:                                               ; preds = %49
  %75 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %76 = call i64 @sg_dma_address(%struct.scatterlist* %75)
  %77 = load i64, i64* %13, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i64, i64* %12, align 8
  %83 = call i32 (i8*, i32, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %81, i64 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  %86 = call %struct.scatterlist* @ERR_PTR(i32 %85)
  store %struct.scatterlist* %86, %struct.scatterlist** %5, align 8
  br label %99

87:                                               ; preds = %74
  %88 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %89 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %88)
  store %struct.scatterlist* %89, %struct.scatterlist** %9, align 8
  br label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %11, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %26

93:                                               ; preds = %26
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %10, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %14

97:                                               ; preds = %14
  %98 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  store %struct.scatterlist* %98, %struct.scatterlist** %5, align 8
  br label %99

99:                                               ; preds = %97, %79, %62, %40
  %100 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  ret %struct.scatterlist* %100
}

declare dso_local i32 @pr_err(i8*, i32, i32, i64, ...) #1

declare dso_local %struct.scatterlist* @ERR_PTR(i32) #1

declare dso_local i64 @rotated_index(%struct.intel_rotation_info*, i32, i32, i32) #1

declare dso_local i64 @i915_gem_object_get_dma_address(%struct.drm_i915_gem_object*, i64) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
