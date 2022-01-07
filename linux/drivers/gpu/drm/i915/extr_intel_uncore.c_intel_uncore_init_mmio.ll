; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_intel_uncore_init_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_intel_uncore_init_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore = type { i32, %struct.TYPE_2__, %struct.drm_i915_private* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.drm_i915_private = type { i32 }

@UNCORE_HAS_FORCEWAKE = common dso_local global i32 0, align 4
@UNCORE_HAS_FPGA_DBG_UNCLAIMED = common dso_local global i32 0, align 4
@UNCORE_HAS_DBG_UNCLAIMED = common dso_local global i32 0, align 4
@UNCORE_HAS_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"unclaimed mmio detected on uncore init, clearing\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_uncore_init_mmio(%struct.intel_uncore* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_uncore*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_uncore* %0, %struct.intel_uncore** %3, align 8
  %6 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %7 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %6, i32 0, i32 2
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %4, align 8
  %9 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %10 = call i32 @uncore_mmio_setup(%struct.intel_uncore* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %140

15:                                               ; preds = %1
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %17 = call i32 @INTEL_GEN(%struct.drm_i915_private* %16)
  %18 = icmp sgt i32 %17, 5
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %21 = call i32 @intel_vgpu_active(%struct.drm_i915_private* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @UNCORE_HAS_FORCEWAKE, align 4
  %25 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %26 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %23, %19, %15
  %30 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %31 = call i32 @intel_uncore_has_forcewake(%struct.intel_uncore* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %35 = call i32 @uncore_raw_init(%struct.intel_uncore* %34)
  br label %43

36:                                               ; preds = %29
  %37 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %38 = call i32 @uncore_forcewake_init(%struct.intel_uncore* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %136

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %33
  %44 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %45 = call i32 @intel_uncore_has_forcewake(%struct.intel_uncore* %44)
  %46 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %47 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = icmp ne i32 %45, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @GEM_BUG_ON(i32 %55)
  %57 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %58 = call i32 @intel_uncore_has_forcewake(%struct.intel_uncore* %57)
  %59 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %60 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = icmp ne i32 %58, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @GEM_BUG_ON(i32 %68)
  %70 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %71 = call i32 @intel_uncore_has_forcewake(%struct.intel_uncore* %70)
  %72 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %73 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = icmp ne i32 %71, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @GEM_BUG_ON(i32 %81)
  %83 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %84 = call i32 @intel_uncore_has_forcewake(%struct.intel_uncore* %83)
  %85 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %86 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = icmp ne i32 %84, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @GEM_BUG_ON(i32 %94)
  %96 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %97 = call i64 @HAS_FPGA_DBG_UNCLAIMED(%struct.drm_i915_private* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %43
  %100 = load i32, i32* @UNCORE_HAS_FPGA_DBG_UNCLAIMED, align 4
  %101 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %102 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %99, %43
  %106 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %107 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %111 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %109, %105
  %114 = load i32, i32* @UNCORE_HAS_DBG_UNCLAIMED, align 4
  %115 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %116 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %113, %109
  %120 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %121 = call i64 @IS_GEN_RANGE(%struct.drm_i915_private* %120, i32 6, i32 7)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load i32, i32* @UNCORE_HAS_FIFO, align 4
  %125 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %126 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %123, %119
  %130 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %131 = call i64 @intel_uncore_unclaimed_mmio(%struct.intel_uncore* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %129
  store i32 0, i32* %2, align 4
  br label %140

136:                                              ; preds = %41
  %137 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %138 = call i32 @uncore_mmio_cleanup(%struct.intel_uncore* %137)
  %139 = load i32, i32* %5, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %136, %135, %13
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @uncore_mmio_setup(%struct.intel_uncore*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_vgpu_active(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_uncore_has_forcewake(%struct.intel_uncore*) #1

declare dso_local i32 @uncore_raw_init(%struct.intel_uncore*) #1

declare dso_local i32 @uncore_forcewake_init(%struct.intel_uncore*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i64 @HAS_FPGA_DBG_UNCLAIMED(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN_RANGE(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i64 @intel_uncore_unclaimed_mmio(%struct.intel_uncore*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @uncore_mmio_cleanup(%struct.intel_uncore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
