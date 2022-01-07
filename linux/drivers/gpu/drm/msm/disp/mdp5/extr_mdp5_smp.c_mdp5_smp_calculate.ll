; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_smp.c_mdp5_smp_calculate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_smp.c_mdp5_smp_calculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_smp = type { i32 }
%struct.mdp_format = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_format_info = type { i32, i32, i32* }
%struct.mdp5_kms = type { i32 }

@CHROMA_FULL = common dso_local global i64 0, align 8
@DRM_FORMAT_NV24 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdp5_smp_calculate(%struct.mdp5_smp* %0, %struct.mdp_format* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mdp5_smp*, align 8
  %6 = alloca %struct.mdp_format*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_format_info*, align 8
  %10 = alloca %struct.mdp5_kms*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mdp5_smp* %0, %struct.mdp5_smp** %5, align 8
  store %struct.mdp_format* %1, %struct.mdp_format** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %21 = load %struct.mdp_format*, %struct.mdp_format** %6, align 8
  %22 = getelementptr inbounds %struct.mdp_format, %struct.mdp_format* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.drm_format_info* @drm_format_info(i32 %24)
  store %struct.drm_format_info* %25, %struct.drm_format_info** %9, align 8
  %26 = load %struct.mdp5_smp*, %struct.mdp5_smp** %5, align 8
  %27 = call %struct.mdp5_kms* @get_kms(%struct.mdp5_smp* %26)
  store %struct.mdp5_kms* %27, %struct.mdp5_kms** %10, align 8
  %28 = load %struct.mdp5_kms*, %struct.mdp5_kms** %10, align 8
  %29 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mdp5_cfg_get_hw_rev(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.mdp_format*, %struct.mdp_format** %6, align 8
  %33 = getelementptr inbounds %struct.mdp_format, %struct.mdp_format* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %36 = load %struct.drm_format_info*, %struct.drm_format_info** %9, align 8
  %37 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %14, align 4
  %39 = load %struct.drm_format_info*, %struct.drm_format_info** %9, align 8
  %40 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %13, align 4
  store i32 2, i32* %15, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %4
  %45 = load %struct.mdp_format*, %struct.mdp_format** %6, align 8
  %46 = getelementptr inbounds %struct.mdp_format, %struct.mdp_format* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CHROMA_FULL, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load i32, i32* @DRM_FORMAT_NV24, align 4
  store i32 %51, i32* %16, align 4
  store i32 2, i32* %14, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 1, i32* %13, align 4
  br label %58

58:                                               ; preds = %57, %54, %50
  br label %59

59:                                               ; preds = %58, %44, %4
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %102, %59
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %105

64:                                               ; preds = %60
  %65 = load %struct.drm_format_info*, %struct.drm_format_info** %9, align 8
  %66 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %20, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %20, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %64
  %78 = load i32, i32* %13, align 4
  br label %80

79:                                               ; preds = %64
  br label %80

80:                                               ; preds = %79, %77
  %81 = phi i32 [ %78, %77 ], [ 1, %79 ]
  %82 = sdiv i32 %74, %81
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %15, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load %struct.mdp5_smp*, %struct.mdp5_smp** %5, align 8
  %87 = getelementptr inbounds %struct.mdp5_smp, %struct.mdp5_smp* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @DIV_ROUND_UP(i32 %85, i32 %88)
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %80
  %93 = load i32, i32* %18, align 4
  %94 = call i32 @roundup_pow_of_two(i32 %93)
  store i32 %94, i32* %18, align 4
  br label %95

95:                                               ; preds = %92, %80
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* %12, align 4
  %98 = mul nsw i32 8, %97
  %99 = shl i32 %96, %98
  %100 = load i32, i32* %17, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %17, align 4
  br label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %60

105:                                              ; preds = %60
  %106 = load i32, i32* %17, align 4
  ret i32 %106
}

declare dso_local %struct.drm_format_info* @drm_format_info(i32) #1

declare dso_local %struct.mdp5_kms* @get_kms(%struct.mdp5_smp*) #1

declare dso_local i32 @mdp5_cfg_get_hw_rev(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
