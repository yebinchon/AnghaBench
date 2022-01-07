; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_skl_get_dram_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_skl_get_dram_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.dram_info }
%struct.dram_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"DRAM type: %s\0A\00", align 1
@SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU = common dso_local global i32 0, align 4
@SKL_REQ_DATA_MASK = common dso_local global i32 0, align 4
@SKL_MEMORY_FREQ_MULTIPLIER_HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Couldn't get system memory bandwidth\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @skl_get_dram_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_get_dram_info(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.dram_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  store %struct.dram_info* %9, %struct.dram_info** %4, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = call i32 @skl_get_dram_type(%struct.drm_i915_private* %10)
  %12 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %13 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %15 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @intel_dram_type_str(i32 %16)
  %18 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = call i32 @skl_dram_get_channels_info(%struct.drm_i915_private* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %53

25:                                               ; preds = %1
  %26 = load i32, i32* @SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU, align 4
  %27 = call i32 @I915_READ(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @SKL_REQ_DATA_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @SKL_MEMORY_FREQ_MULTIPLIER_HZ, align 4
  %32 = mul nsw i32 %30, %31
  %33 = call i32 @DIV_ROUND_UP(i32 %32, i32 1000)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %35 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = mul nsw i32 %36, %37
  %39 = mul nsw i32 %38, 8
  %40 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %41 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %43 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %25
  %47 = call i32 @DRM_INFO(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %53

50:                                               ; preds = %25
  %51 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %52 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %51, i32 0, i32 2
  store i32 1, i32* %52, align 4
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %46, %23
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @skl_get_dram_type(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @intel_dram_type_str(i32) #1

declare dso_local i32 @skl_dram_get_channels_info(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
