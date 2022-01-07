; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_zap_shader_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_zap_shader_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.platform_device* }
%struct.platform_device = type { i32 }
%struct.adreno_gpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@zap_available = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"SCM is not available\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Zap shader firmware file not specified for this target\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adreno_zap_shader_load(%struct.msm_gpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msm_gpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adreno_gpu*, align 8
  %7 = alloca %struct.platform_device*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %9 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %8)
  store %struct.adreno_gpu* %9, %struct.adreno_gpu** %6, align 8
  %10 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %11 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %10, i32 0, i32 0
  %12 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  store %struct.platform_device* %12, %struct.platform_device** %7, align 8
  %13 = load i32, i32* @zap_available, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %49

18:                                               ; preds = %2
  %19 = call i32 (...) @qcom_scm_is_available()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 @DRM_DEV_ERROR(i32* %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EPROBE_DEFER, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %49

27:                                               ; preds = %18
  %28 = load %struct.adreno_gpu*, %struct.adreno_gpu** %6, align 8
  %29 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  store i32 0, i32* @zap_available, align 4
  %35 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @DRM_DEV_ERROR(i32* %36, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %49

40:                                               ; preds = %27
  %41 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %42 = load %struct.adreno_gpu*, %struct.adreno_gpu** %6, align 8
  %43 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @zap_shader_load_mdt(%struct.msm_gpu* %41, i32 %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %40, %34, %21, %15
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local i32 @qcom_scm_is_available(...) #1

declare dso_local i32 @DRM_DEV_ERROR(i32*, i8*) #1

declare dso_local i32 @zap_shader_load_mdt(%struct.msm_gpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
