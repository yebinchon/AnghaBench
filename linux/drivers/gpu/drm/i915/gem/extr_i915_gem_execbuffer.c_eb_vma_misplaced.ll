; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_vma_misplaced.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_vma_misplaced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_exec_object2 = type { i32, i32, i64 }
%struct.i915_vma = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EXEC_OBJECT_PINNED = common dso_local global i32 0, align 4
@__EXEC_OBJECT_NEEDS_BIAS = common dso_local global i32 0, align 4
@BATCH_OFFSET_BIAS = common dso_local global i32 0, align 4
@EXEC_OBJECT_SUPPORTS_48B_ADDRESS = common dso_local global i32 0, align 4
@__EXEC_OBJECT_NEEDS_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_gem_exec_object2*, %struct.i915_vma*, i32)* @eb_vma_misplaced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eb_vma_misplaced(%struct.drm_i915_gem_exec_object2* %0, %struct.i915_vma* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_gem_exec_object2*, align 8
  %6 = alloca %struct.i915_vma*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_i915_gem_exec_object2* %0, %struct.drm_i915_gem_exec_object2** %5, align 8
  store %struct.i915_vma* %1, %struct.i915_vma** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %9 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %5, align 8
  %13 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %91

17:                                               ; preds = %3
  %18 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %5, align 8
  %19 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %24 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %5, align 8
  %28 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @IS_ALIGNED(i32 %26, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %91

33:                                               ; preds = %22, %17
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @EXEC_OBJECT_PINNED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %40 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %5, align 8
  %44 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %91

48:                                               ; preds = %38, %33
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @__EXEC_OBJECT_NEEDS_BIAS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %55 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @BATCH_OFFSET_BIAS, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 1, i32* %4, align 4
  br label %91

61:                                               ; preds = %53, %48
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @EXEC_OBJECT_SUPPORTS_48B_ADDRESS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %61
  %67 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %68 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %72 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %70, %74
  %76 = sub nsw i32 %75, 1
  %77 = ashr i32 %76, 32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  store i32 1, i32* %4, align 4
  br label %91

80:                                               ; preds = %66, %61
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @__EXEC_OBJECT_NEEDS_MAP, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %87 = call i32 @i915_vma_is_map_and_fenceable(%struct.i915_vma* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  store i32 1, i32* %4, align 4
  br label %91

90:                                               ; preds = %85, %80
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %89, %79, %60, %47, %32, %16
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @IS_ALIGNED(i32, i64) #1

declare dso_local i32 @i915_vma_is_map_and_fenceable(%struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
