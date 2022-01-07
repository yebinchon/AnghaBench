; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_bxt_get_dram_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_bxt_get_dram_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.dram_info }
%struct.dram_info = type { i32, i32, i32, i32, i32 }
%struct.dram_dimm_info = type { i32, i32, i32 }

@BXT_P_CR_MC_BIOS_REQ_0_0_0 = common dso_local global i32 0, align 4
@BXT_REQ_DATA_MASK = common dso_local global i32 0, align 4
@BXT_MEMORY_FREQ_MULTIPLIER_HZ = common dso_local global i32 0, align 4
@BXT_DRAM_CHANNEL_ACTIVE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Couldn't get system memory bandwidth\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BXT_D_CR_DRP0_DUNIT_START = common dso_local global i32 0, align 4
@BXT_D_CR_DRP0_DUNIT_END = common dso_local global i32 0, align 4
@INTEL_DRAM_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"CH%u DIMM size: %u GB, width: X%u, ranks: %u, type: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"couldn't get memory information\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @bxt_get_dram_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxt_get_dram_info(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.dram_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dram_dimm_info, align 4
  %11 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  store %struct.dram_info* %13, %struct.dram_info** %4, align 8
  %14 = load i32, i32* @BXT_P_CR_MC_BIOS_REQ_0_0_0, align 4
  %15 = call i32 @I915_READ(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @BXT_REQ_DATA_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @BXT_MEMORY_FREQ_MULTIPLIER_HZ, align 4
  %20 = mul nsw i32 %18, %19
  %21 = call i32 @DIV_ROUND_UP(i32 %20, i32 1000)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @BXT_DRAM_CHANNEL_ACTIVE_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @hweight32(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %8, align 4
  %29 = mul nsw i32 %27, %28
  %30 = mul nsw i32 %29, 4
  %31 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %32 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %34 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = call i32 @DRM_INFO(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %141

41:                                               ; preds = %1
  %42 = load i32, i32* @BXT_D_CR_DRP0_DUNIT_START, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %120, %41
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @BXT_D_CR_DRP0_DUNIT_END, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %123

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @BXT_D_CR_DRP0_DUNIT(i32 %48)
  %50 = call i32 @I915_READ(i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %120

54:                                               ; preds = %47
  %55 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %56 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @bxt_get_dimm_info(%struct.dram_dimm_info* %10, i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @bxt_get_dimm_type(i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @INTEL_DRAM_UNKNOWN, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %54
  %67 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %68 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @INTEL_DRAM_UNKNOWN, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %74 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %75, %76
  br label %78

78:                                               ; preds = %72, %66, %54
  %79 = phi i1 [ false, %66 ], [ false, %54 ], [ %77, %72 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 @WARN_ON(i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @BXT_D_CR_DRP0_DUNIT_START, align 4
  %84 = sub nsw i32 %82, %83
  %85 = getelementptr inbounds %struct.dram_dimm_info, %struct.dram_dimm_info* %10, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.dram_dimm_info, %struct.dram_dimm_info* %10, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.dram_dimm_info, %struct.dram_dimm_info* %10, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @intel_dram_type_str(i32 %91)
  %93 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %86, i32 %88, i32 %90, i32 %92)
  %94 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %95 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %78
  %99 = getelementptr inbounds %struct.dram_dimm_info, %struct.dram_dimm_info* %10, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %102 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  br label %111

103:                                              ; preds = %78
  %104 = getelementptr inbounds %struct.dram_dimm_info, %struct.dram_dimm_info* %10, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %109 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %108, i32 0, i32 2
  store i32 1, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %103
  br label %111

111:                                              ; preds = %110, %98
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @INTEL_DRAM_UNKNOWN, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %118 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %115, %111
  br label %120

120:                                              ; preds = %119, %53
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %43

123:                                              ; preds = %43
  %124 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %125 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @INTEL_DRAM_UNKNOWN, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %134, label %129

129:                                              ; preds = %123
  %130 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %131 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129, %123
  %135 = call i32 @DRM_INFO(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %141

138:                                              ; preds = %129
  %139 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %140 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %139, i32 0, i32 3
  store i32 1, i32* %140, align 4
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %138, %134, %37
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @BXT_D_CR_DRP0_DUNIT(i32) #1

declare dso_local i32 @bxt_get_dimm_info(%struct.dram_dimm_info*, i32) #1

declare dso_local i32 @bxt_get_dimm_type(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @intel_dram_type_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
