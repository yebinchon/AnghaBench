; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c__dpu_kms_set_encoder_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c__dpu_kms_set_encoder_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_kms = type { i32 }
%struct.drm_encoder = type { %struct.TYPE_3__, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { i64* }
%struct.msm_display_info = type { i32*, i64, i32, i32 }

@MSM_DISPLAY_CAP_CMD_MODE = common dso_local global i32 0, align 4
@MSM_DISPLAY_CAP_VID_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to setup DPU encoder %d: rc:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_kms*, %struct.drm_encoder*, i32)* @_dpu_kms_set_encoder_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_kms_set_encoder_mode(%struct.msm_kms* %0, %struct.drm_encoder* %1, i32 %2) #0 {
  %4 = alloca %struct.msm_kms*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.msm_display_info, align 8
  %8 = alloca %struct.msm_drm_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.msm_kms* %0, %struct.msm_kms** %4, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.msm_drm_private*, %struct.msm_drm_private** %14, align 8
  store %struct.msm_drm_private* %15, %struct.msm_drm_private** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = call i32 @memset(%struct.msm_display_info* %7, i32 0, i32 24)
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %18 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.msm_display_info, %struct.msm_display_info* %7, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @MSM_DISPLAY_CAP_CMD_MODE, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @MSM_DISPLAY_CAP_VID_MODE, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = getelementptr inbounds %struct.msm_display_info, %struct.msm_display_info* %7, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %57, %27
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %33 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = call i32 @ARRAY_SIZE(i64* %34)
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %30
  %38 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %39 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %37
  %47 = load i32, i32* %9, align 4
  %48 = getelementptr inbounds %struct.msm_display_info, %struct.msm_display_info* %7, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds %struct.msm_display_info, %struct.msm_display_info* %7, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %47, i32* %52, align 4
  %53 = getelementptr inbounds %struct.msm_display_info, %struct.msm_display_info* %7, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %46, %37
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %30

60:                                               ; preds = %30
  %61 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %62 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %65 = call i32 @dpu_encoder_setup(%struct.TYPE_4__* %63, %struct.drm_encoder* %64, %struct.msm_display_info* %7)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %60
  %69 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %70 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %68, %60
  ret void
}

declare dso_local i32 @memset(%struct.msm_display_info*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @dpu_encoder_setup(%struct.TYPE_4__*, %struct.drm_encoder*, %struct.msm_display_info*) #1

declare dso_local i32 @DPU_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
