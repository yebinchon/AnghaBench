; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_fence_reg.c_i915_write_fence_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_fence_reg.c_i915_write_fence_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_fence_reg = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.intel_uncore }
%struct.intel_uncore = type { i32 }
%struct.i915_vma = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@I915_TILING_Y = common dso_local global i32 0, align 4
@I915_FENCE_START_MASK = common dso_local global i32 0, align 4
@I830_FENCE_TILING_Y_SHIFT = common dso_local global i32 0, align 4
@I830_FENCE_PITCH_SHIFT = common dso_local global i32 0, align 4
@I830_FENCE_REG_VALID = common dso_local global i32 0, align 4
@pipelined = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_fence_reg*, %struct.i915_vma*)* @i915_write_fence_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_write_fence_reg(%struct.i915_fence_reg* %0, %struct.i915_vma* %1) #0 {
  %3 = alloca %struct.i915_fence_reg*, align 8
  %4 = alloca %struct.i915_vma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_uncore*, align 8
  %10 = alloca i32, align 4
  store %struct.i915_fence_reg* %0, %struct.i915_fence_reg** %3, align 8
  store %struct.i915_vma* %1, %struct.i915_vma** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %12 = icmp ne %struct.i915_vma* %11, null
  br i1 %12, label %13, label %108

13:                                               ; preds = %2
  %14 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %15 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @i915_gem_object_get_tiling(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @I915_TILING_Y, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %23 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @i915_gem_object_get_stride(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %27 = call i32 @i915_vma_is_map_and_fenceable(%struct.i915_vma* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @GEM_BUG_ON(i32 %30)
  %32 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %33 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @I915_FENCE_START_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = call i32 @GEM_BUG_ON(i32 %38)
  %40 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %41 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @is_power_of_2(i32 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @GEM_BUG_ON(i32 %46)
  %48 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %49 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %53 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @IS_ALIGNED(i32 %51, i32 %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @GEM_BUG_ON(i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %13
  %63 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %3, align 8
  %64 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = call i64 @HAS_128_BYTE_Y_TILING(%struct.TYPE_4__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* %8, align 4
  %70 = udiv i32 %69, 128
  store i32 %70, i32* %8, align 4
  br label %74

71:                                               ; preds = %62, %13
  %72 = load i32, i32* %8, align 4
  %73 = udiv i32 %72, 512
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @is_power_of_2(i32 %75)
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @GEM_BUG_ON(i32 %79)
  %81 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %82 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %74
  %88 = load i32, i32* @I830_FENCE_TILING_Y_SHIFT, align 4
  %89 = call i32 @BIT(i32 %88)
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %87, %74
  %93 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %94 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @I915_FENCE_SIZE_BITS(i32 %95)
  %97 = load i32, i32* %5, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @ilog2(i32 %99)
  %101 = load i32, i32* @I830_FENCE_PITCH_SHIFT, align 4
  %102 = shl i32 %100, %101
  %103 = load i32, i32* %5, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* @I830_FENCE_REG_VALID, align 4
  %106 = load i32, i32* %5, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %92, %2
  %109 = load i32, i32* @pipelined, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %127, label %111

111:                                              ; preds = %108
  %112 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %3, align 8
  %113 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store %struct.intel_uncore* %115, %struct.intel_uncore** %9, align 8
  %116 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %3, align 8
  %117 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @FENCE_REG(i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load %struct.intel_uncore*, %struct.intel_uncore** %9, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %120, i32 %121, i32 %122)
  %124 = load %struct.intel_uncore*, %struct.intel_uncore** %9, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @intel_uncore_posting_read_fw(%struct.intel_uncore* %124, i32 %125)
  br label %127

127:                                              ; preds = %111, %108
  ret void
}

declare dso_local i32 @i915_gem_object_get_tiling(i32) #1

declare dso_local i32 @i915_gem_object_get_stride(i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_vma_is_map_and_fenceable(%struct.i915_vma*) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i64 @HAS_128_BYTE_Y_TILING(%struct.TYPE_4__*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @I915_FENCE_SIZE_BITS(i32) #1

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
