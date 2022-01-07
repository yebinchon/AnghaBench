; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_fence_reg.c_i830_write_fence_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_fence_reg.c_i830_write_fence_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_fence_reg = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.intel_uncore }
%struct.intel_uncore = type { i32 }
%struct.i915_vma = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@I830_FENCE_START_MASK = common dso_local global i32 0, align 4
@I915_TILING_Y = common dso_local global i64 0, align 8
@I830_FENCE_TILING_Y_SHIFT = common dso_local global i32 0, align 4
@I830_FENCE_PITCH_SHIFT = common dso_local global i32 0, align 4
@I830_FENCE_REG_VALID = common dso_local global i32 0, align 4
@pipelined = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_fence_reg*, %struct.i915_vma*)* @i830_write_fence_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i830_write_fence_reg(%struct.i915_fence_reg* %0, %struct.i915_vma* %1) #0 {
  %3 = alloca %struct.i915_fence_reg*, align 8
  %4 = alloca %struct.i915_vma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_uncore*, align 8
  %8 = alloca i32, align 4
  store %struct.i915_fence_reg* %0, %struct.i915_fence_reg** %3, align 8
  store %struct.i915_vma* %1, %struct.i915_vma** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %10 = icmp ne %struct.i915_vma* %9, null
  br i1 %10, label %11, label %89

11:                                               ; preds = %2
  %12 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %13 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @i915_gem_object_get_stride(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %17 = call i32 @i915_vma_is_map_and_fenceable(%struct.i915_vma* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @GEM_BUG_ON(i32 %20)
  %22 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %23 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @I830_FENCE_START_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @GEM_BUG_ON(i32 %28)
  %30 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %31 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @is_power_of_2(i32 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @GEM_BUG_ON(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = udiv i32 %38, 128
  %40 = call i32 @is_power_of_2(i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @GEM_BUG_ON(i32 %43)
  %45 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %46 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %50 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @IS_ALIGNED(i32 %48, i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @GEM_BUG_ON(i32 %55)
  %57 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %58 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %5, align 4
  %61 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %62 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @i915_gem_object_get_tiling(i32 %63)
  %65 = load i64, i64* @I915_TILING_Y, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %11
  %68 = load i32, i32* @I830_FENCE_TILING_Y_SHIFT, align 4
  %69 = call i32 @BIT(i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %67, %11
  %73 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %74 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @I830_FENCE_SIZE_BITS(i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = udiv i32 %79, 128
  %81 = call i32 @ilog2(i32 %80)
  %82 = load i32, i32* @I830_FENCE_PITCH_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* @I830_FENCE_REG_VALID, align 4
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %72, %2
  %90 = load i32, i32* @pipelined, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %108, label %92

92:                                               ; preds = %89
  %93 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %3, align 8
  %94 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store %struct.intel_uncore* %96, %struct.intel_uncore** %7, align 8
  %97 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %3, align 8
  %98 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @FENCE_REG(i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %101, i32 %102, i32 %103)
  %105 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @intel_uncore_posting_read_fw(%struct.intel_uncore* %105, i32 %106)
  br label %108

108:                                              ; preds = %92, %89
  ret void
}

declare dso_local i32 @i915_gem_object_get_stride(i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_vma_is_map_and_fenceable(%struct.i915_vma*) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i64 @i915_gem_object_get_tiling(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @I830_FENCE_SIZE_BITS(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @FENCE_REG(i32) #1

declare dso_local i32 @intel_uncore_write_fw(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @intel_uncore_posting_read_fw(%struct.intel_uncore*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
