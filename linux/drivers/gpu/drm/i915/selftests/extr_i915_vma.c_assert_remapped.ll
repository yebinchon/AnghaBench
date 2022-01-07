; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_vma.c_assert_remapped.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_vma.c_assert_remapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32 }
%struct.intel_remapped_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"Invalid sg table: too short at plane %d, (%d, %d)!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [86 x i8] c"Invalid sg.length, found %d, expected %lu for remapped page (%d, %d) [src index %lu]\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Invalid address for remapped page (%d, %d) [src index %lu]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scatterlist* (%struct.drm_i915_gem_object*, %struct.intel_remapped_info*, i32, %struct.scatterlist*)* @assert_remapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scatterlist* @assert_remapped(%struct.drm_i915_gem_object* %0, %struct.intel_remapped_info* %1, i32 %2, %struct.scatterlist* %3) #0 {
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca %struct.intel_remapped_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %6, align 8
  store %struct.intel_remapped_info* %1, %struct.intel_remapped_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.scatterlist* %3, %struct.scatterlist** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %120, %4
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.intel_remapped_info*, %struct.intel_remapped_info** %7, align 8
  %19 = getelementptr inbounds %struct.intel_remapped_info, %struct.intel_remapped_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ult i32 %17, %25
  br i1 %26, label %27, label %123

27:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %116, %27
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.intel_remapped_info*, %struct.intel_remapped_info** %7, align 8
  %31 = getelementptr inbounds %struct.intel_remapped_info, %struct.intel_remapped_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ult i32 %29, %37
  br i1 %38, label %39, label %119

39:                                               ; preds = %28
  %40 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %41 = icmp ne %struct.scatterlist* %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = call i32 (i8*, i32, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i64 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.scatterlist* @ERR_PTR(i32 %49)
  store %struct.scatterlist* %50, %struct.scatterlist** %5, align 8
  br label %125

51:                                               ; preds = %39
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  store i32 0, i32* %13, align 4
  %55 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %56 = call i32 @sg_dma_len(%struct.scatterlist* %55)
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.intel_remapped_info*, %struct.intel_remapped_info** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i64 @remapped_index(%struct.intel_remapped_info* %58, i32 %59, i32 %60, i32 %61)
  store i64 %62, i64* %14, align 8
  %63 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %64 = load i64, i64* %14, align 8
  %65 = call i64 @i915_gem_object_get_dma_address(%struct.drm_i915_gem_object* %63, i64 %64)
  store i64 %65, i64* %15, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @PAGE_SIZE, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %57
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = sub i32 %71, 1
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %69, %57
  %76 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %77 = call i32 @sg_dma_len(%struct.scatterlist* %76)
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = load i32, i32* %10, align 4
  %80 = zext i32 %79 to i64
  %81 = load i32, i32* %11, align 4
  %82 = load i64, i64* %14, align 8
  %83 = call i32 (i8*, i32, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78, i64 %80, i32 %81, i64 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  %86 = call %struct.scatterlist* @ERR_PTR(i32 %85)
  store %struct.scatterlist* %86, %struct.scatterlist** %5, align 8
  br label %125

87:                                               ; preds = %69
  %88 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %89 = call i64 @sg_dma_address(%struct.scatterlist* %88)
  %90 = load i32, i32* %13, align 4
  %91 = zext i32 %90 to i64
  %92 = add nsw i64 %89, %91
  %93 = load i64, i64* %15, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %87
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i64, i64* %14, align 8
  %99 = call i32 (i8*, i32, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %97, i64 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  %102 = call %struct.scatterlist* @ERR_PTR(i32 %101)
  store %struct.scatterlist* %102, %struct.scatterlist** %5, align 8
  br label %125

103:                                              ; preds = %87
  %104 = load i32, i32* @PAGE_SIZE, align 4
  %105 = load i32, i32* %12, align 4
  %106 = sub i32 %105, %104
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* @PAGE_SIZE, align 4
  %108 = load i32, i32* %13, align 4
  %109 = add i32 %108, %107
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %103
  %113 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %114 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %113)
  store %struct.scatterlist* %114, %struct.scatterlist** %9, align 8
  br label %115

115:                                              ; preds = %112, %103
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %10, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %28

119:                                              ; preds = %28
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %11, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %16

123:                                              ; preds = %16
  %124 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  store %struct.scatterlist* %124, %struct.scatterlist** %5, align 8
  br label %125

125:                                              ; preds = %123, %95, %75, %42
  %126 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  ret %struct.scatterlist* %126
}

declare dso_local i32 @pr_err(i8*, i32, i32, i64, ...) #1

declare dso_local %struct.scatterlist* @ERR_PTR(i32) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i64 @remapped_index(%struct.intel_remapped_info*, i32, i32, i32) #1

declare dso_local i64 @i915_gem_object_get_dma_address(%struct.drm_i915_gem_object*, i64) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
