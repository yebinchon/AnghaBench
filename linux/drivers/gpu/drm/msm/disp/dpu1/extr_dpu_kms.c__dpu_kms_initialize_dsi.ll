; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c__dpu_kms_initialize_dsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c__dpu_kms_initialize_dsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.msm_drm_private = type { i64*, i32, %struct.drm_encoder** }
%struct.drm_encoder = type { i32 }
%struct.dpu_kms = type { i32 }

@DRM_MODE_ENCODER_DSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"encoder init failed for dsi display\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"modeset_init failed for dsi[%d], rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.msm_drm_private*, %struct.dpu_kms*)* @_dpu_kms_initialize_dsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dpu_kms_initialize_dsi(%struct.drm_device* %0, %struct.msm_drm_private* %1, %struct.dpu_kms* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.msm_drm_private*, align 8
  %7 = alloca %struct.dpu_kms*, align 8
  %8 = alloca %struct.drm_encoder*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.msm_drm_private* %1, %struct.msm_drm_private** %6, align 8
  store %struct.dpu_kms* %2, %struct.dpu_kms** %7, align 8
  store %struct.drm_encoder* null, %struct.drm_encoder** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %12 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %3
  %18 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %19 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %88

26:                                               ; preds = %17, %3
  %27 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %28 = load i32, i32* @DRM_MODE_ENCODER_DSI, align 4
  %29 = call %struct.drm_encoder* @dpu_encoder_init(%struct.drm_device* %27, i32 %28)
  store %struct.drm_encoder* %29, %struct.drm_encoder** %8, align 8
  %30 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %31 = call i64 @IS_ERR(%struct.drm_encoder* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %36 = call i32 @PTR_ERR(%struct.drm_encoder* %35)
  store i32 %36, i32* %4, align 4
  br label %88

37:                                               ; preds = %26
  %38 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %39 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %40 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %39, i32 0, i32 2
  %41 = load %struct.drm_encoder**, %struct.drm_encoder*** %40, align 8
  %42 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %43 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds %struct.drm_encoder*, %struct.drm_encoder** %41, i64 %46
  store %struct.drm_encoder* %38, %struct.drm_encoder** %47, align 8
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %83, %37
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %51 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = call i32 @ARRAY_SIZE(i64* %52)
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %86

55:                                               ; preds = %48
  %56 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %57 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %55
  br label %83

65:                                               ; preds = %55
  %66 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %67 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %74 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %75 = call i32 @msm_dsi_modeset_init(i64 %72, %struct.drm_device* %73, %struct.drm_encoder* %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %65
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80)
  br label %86

82:                                               ; preds = %65
  br label %83

83:                                               ; preds = %82, %64
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %48

86:                                               ; preds = %78, %48
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %33, %24
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.drm_encoder* @dpu_encoder_init(%struct.drm_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_encoder*) #1

declare dso_local i32 @DPU_ERROR(i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.drm_encoder*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @msm_dsi_modeset_init(i64, %struct.drm_device*, %struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
