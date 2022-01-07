; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_device.c_adreno_load_gpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_device.c_adreno_load_gpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.msm_gpu*, i32)* }
%struct.drm_device = type { i32, i32, i32, i32, %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.platform_device* }
%struct.platform_device = type { i32 }
%struct.adreno_gpu = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"no GPU device was found\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Couldn't power up the GPU: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"gpu hw init failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msm_gpu* @adreno_load_gpu(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.msm_drm_private*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.msm_gpu*, align 8
  %7 = alloca %struct.adreno_gpu*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 4
  %11 = load %struct.msm_drm_private*, %struct.msm_drm_private** %10, align 8
  store %struct.msm_drm_private* %11, %struct.msm_drm_private** %4, align 8
  %12 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %13 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %12, i32 0, i32 0
  %14 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  store %struct.platform_device* %14, %struct.platform_device** %5, align 8
  store %struct.msm_gpu* null, %struct.msm_gpu** %6, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %16 = icmp ne %struct.platform_device* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %19 = call %struct.msm_gpu* @platform_get_drvdata(%struct.platform_device* %18)
  store %struct.msm_gpu* %19, %struct.msm_gpu** %6, align 8
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %22 = icmp ne %struct.msm_gpu* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_err_once(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store %struct.msm_gpu* null, %struct.msm_gpu** %2, align 8
  br label %76

28:                                               ; preds = %20
  %29 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %30 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %29)
  store %struct.adreno_gpu* %30, %struct.adreno_gpu** %7, align 8
  %31 = load %struct.adreno_gpu*, %struct.adreno_gpu** %7, align 8
  %32 = call i32 @adreno_load_fw(%struct.adreno_gpu* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store %struct.msm_gpu* null, %struct.msm_gpu** %2, align 8
  br label %76

36:                                               ; preds = %28
  %37 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @pm_runtime_set_active(i32* %38)
  %40 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 @pm_runtime_get_sync(i32* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %36
  %46 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @pm_runtime_put_sync(i32* %47)
  %49 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @DRM_DEV_ERROR(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  store %struct.msm_gpu* null, %struct.msm_gpu** %2, align 8
  br label %76

54:                                               ; preds = %36
  %55 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 3
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %59 = call i32 @msm_gpu_hw_init(%struct.msm_gpu* %58)
  store i32 %59, i32* %8, align 4
  %60 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %61 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %60, i32 0, i32 3
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 @pm_runtime_put_autosuspend(i32* %64)
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %54
  %69 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %70 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @DRM_DEV_ERROR(i32 %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  store %struct.msm_gpu* null, %struct.msm_gpu** %2, align 8
  br label %76

74:                                               ; preds = %54
  %75 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  store %struct.msm_gpu* %75, %struct.msm_gpu** %2, align 8
  br label %76

76:                                               ; preds = %74, %68, %45, %35, %23
  %77 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  ret %struct.msm_gpu* %77
}

declare dso_local %struct.msm_gpu* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_err_once(i32, i8*) #1

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local i32 @adreno_load_fw(%struct.adreno_gpu*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @msm_gpu_hw_init(%struct.msm_gpu*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
