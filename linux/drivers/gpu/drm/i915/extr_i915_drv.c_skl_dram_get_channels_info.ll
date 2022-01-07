; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_skl_dram_get_channels_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_skl_dram_get_channels_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.dram_info }
%struct.dram_info = type { i64, i32, i32, i32 }
%struct.dram_channel_info = type { i32, i64 }

@SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN = common dso_local global i32 0, align 4
@SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Number of memory channels is zero\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"couldn't get memory rank information\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Memory configuration is symmetric? %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @skl_dram_get_channels_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_dram_get_channels_info(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.dram_info*, align 8
  %5 = alloca %struct.dram_channel_info, align 8
  %6 = alloca %struct.dram_channel_info, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  store %struct.dram_info* %10, %struct.dram_info** %4, align 8
  %11 = bitcast %struct.dram_channel_info* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = bitcast %struct.dram_channel_info* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load i32, i32* @SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN, align 4
  %14 = call i32 @I915_READ(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @skl_dram_get_channel_info(%struct.drm_i915_private* %15, %struct.dram_channel_info* %5, i32 0, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %22 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %22, align 8
  br label %25

25:                                               ; preds = %20, %1
  %26 = load i32, i32* @SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN, align 4
  %27 = call i32 @I915_READ(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @skl_dram_get_channel_info(%struct.drm_i915_private* %28, %struct.dram_channel_info* %6, i32 1, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %35 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  br label %38

38:                                               ; preds = %33, %25
  %39 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %40 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = call i32 @DRM_INFO(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %96

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.dram_channel_info, %struct.dram_channel_info* %5, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.dram_channel_info, %struct.dram_channel_info* %6, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %51, %47
  %56 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %57 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %56, i32 0, i32 1
  store i32 1, i32* %57, align 8
  br label %66

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.dram_channel_info, %struct.dram_channel_info* %5, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.dram_channel_info, %struct.dram_channel_info* %6, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @max(i32 %60, i32 %62)
  %64 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %65 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %58, %55
  %67 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %68 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = call i32 @DRM_INFO(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %96

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.dram_channel_info, %struct.dram_channel_info* %5, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.dram_channel_info, %struct.dram_channel_info* %6, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %79, %75
  %84 = phi i1 [ true, %75 ], [ %82, %79 ]
  %85 = zext i1 %84 to i32
  %86 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %87 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = call i32 @intel_is_dram_symmetric(%struct.dram_channel_info* %5, %struct.dram_channel_info* %6)
  %89 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %90 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load %struct.dram_info*, %struct.dram_info** %4, align 8
  %92 = getelementptr inbounds %struct.dram_info, %struct.dram_info* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @yesno(i32 %93)
  %95 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %83, %71, %43
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @I915_READ(i32) #2

declare dso_local i32 @skl_dram_get_channel_info(%struct.drm_i915_private*, %struct.dram_channel_info*, i32, i32) #2

declare dso_local i32 @DRM_INFO(i8*) #2

declare dso_local i32 @max(i32, i32) #2

declare dso_local i32 @intel_is_dram_symmetric(%struct.dram_channel_info*, %struct.dram_channel_info*) #2

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #2

declare dso_local i32 @yesno(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
