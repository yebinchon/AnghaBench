; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_fence_reg.c_i965_write_fence_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_fence_reg.c_i965_write_fence_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_fence_reg = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.intel_uncore }
%struct.intel_uncore = type { i32 }
%struct.i915_vma = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GEN6_FENCE_PITCH_SHIFT = common dso_local global i32 0, align 4
@I965_FENCE_PITCH_SHIFT = common dso_local global i32 0, align 4
@I965_FENCE_PAGE = common dso_local global i32 0, align 4
@I915_TILING_Y = common dso_local global i64 0, align 8
@I965_FENCE_TILING_Y_SHIFT = common dso_local global i32 0, align 4
@I965_FENCE_REG_VALID = common dso_local global i32 0, align 4
@pipelined = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_fence_reg*, %struct.i915_vma*)* @i965_write_fence_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i965_write_fence_reg(%struct.i915_fence_reg* %0, %struct.i915_vma* %1) #0 {
  %3 = alloca %struct.i915_fence_reg*, align 8
  %4 = alloca %struct.i915_vma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.intel_uncore*, align 8
  store %struct.i915_fence_reg* %0, %struct.i915_fence_reg** %3, align 8
  store %struct.i915_vma* %1, %struct.i915_vma** %4, align 8
  %11 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %3, align 8
  %12 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = call i32 @INTEL_GEN(%struct.TYPE_4__* %13)
  %15 = icmp sge i32 %14, 6
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %3, align 8
  %18 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @FENCE_REG_GEN6_LO(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %3, align 8
  %22 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @FENCE_REG_GEN6_HI(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @GEN6_FENCE_PITCH_SHIFT, align 4
  store i32 %25, i32* %7, align 4
  br label %36

26:                                               ; preds = %2
  %27 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %3, align 8
  %28 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @FENCE_REG_965_LO(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %3, align 8
  %32 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @FENCE_REG_965_HI(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @I965_FENCE_PITCH_SHIFT, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %26, %16
  store i32 0, i32* %8, align 4
  %37 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %38 = icmp ne %struct.i915_vma* %37, null
  br i1 %38, label %39, label %114

39:                                               ; preds = %36
  %40 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %41 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @i915_gem_object_get_stride(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %45 = call i32 @i915_vma_is_map_and_fenceable(%struct.i915_vma* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @GEM_BUG_ON(i32 %48)
  %50 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %51 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @I965_FENCE_PAGE, align 4
  %55 = call i32 @IS_ALIGNED(i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @GEM_BUG_ON(i32 %58)
  %60 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %61 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @I965_FENCE_PAGE, align 4
  %64 = call i32 @IS_ALIGNED(i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @GEM_BUG_ON(i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @IS_ALIGNED(i32 %69, i32 128)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @GEM_BUG_ON(i32 %73)
  %75 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %76 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %80 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add i32 %78, %81
  %83 = load i32, i32* @I965_FENCE_PAGE, align 4
  %84 = sub i32 %82, %83
  %85 = shl i32 %84, 32
  store i32 %85, i32* %8, align 4
  %86 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %87 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = udiv i32 %92, 128
  %94 = sub i32 %93, 1
  %95 = load i32, i32* %7, align 4
  %96 = shl i32 %94, %95
  %97 = load i32, i32* %8, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %8, align 4
  %99 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %100 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @i915_gem_object_get_tiling(i32 %101)
  %103 = load i64, i64* @I915_TILING_Y, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %39
  %106 = load i32, i32* @I965_FENCE_TILING_Y_SHIFT, align 4
  %107 = call i32 @BIT(i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %105, %39
  %111 = load i32, i32* @I965_FENCE_REG_VALID, align 4
  %112 = load i32, i32* %8, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %110, %36
  %115 = load i32, i32* @pipelined, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %141, label %117

117:                                              ; preds = %114
  %118 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %3, align 8
  %119 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store %struct.intel_uncore* %121, %struct.intel_uncore** %10, align 8
  %122 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %122, i32 %123, i32 0)
  %125 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @intel_uncore_posting_read_fw(%struct.intel_uncore* %125, i32 %126)
  %128 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @upper_32_bits(i32 %130)
  %132 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %128, i32 %129, i32 %131)
  %133 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @lower_32_bits(i32 %135)
  %137 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %133, i32 %134, i32 %136)
  %138 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @intel_uncore_posting_read_fw(%struct.intel_uncore* %138, i32 %139)
  br label %141

141:                                              ; preds = %117, %114
  ret void
}

declare dso_local i32 @INTEL_GEN(%struct.TYPE_4__*) #1

declare dso_local i32 @FENCE_REG_GEN6_LO(i32) #1

declare dso_local i32 @FENCE_REG_GEN6_HI(i32) #1

declare dso_local i32 @FENCE_REG_965_LO(i32) #1

declare dso_local i32 @FENCE_REG_965_HI(i32) #1

declare dso_local i32 @i915_gem_object_get_stride(i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_vma_is_map_and_fenceable(%struct.i915_vma*) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i64 @i915_gem_object_get_tiling(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @intel_uncore_write_fw(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @intel_uncore_posting_read_fw(%struct.intel_uncore*, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
