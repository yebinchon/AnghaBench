; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_device.c_adreno_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_device.c_adreno_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adreno_platform_config = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.device = type { %struct.adreno_platform_config* }
%struct.adreno_info = type { %struct.msm_gpu* (%struct.drm_device*)* }
%struct.msm_gpu = type { i32 }
%struct.drm_device = type { i32, %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }

@adreno_bind.config = internal global %struct.adreno_platform_config zeroinitializer, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unknown GPU revision: %u.%u.%u.%u\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Found GPU: %u.%u.%u.%u\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to load adreno gpu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @adreno_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adreno_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.adreno_info*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.msm_drm_private*, align 8
  %11 = alloca %struct.msm_gpu*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.drm_device* @dev_get_drvdata(%struct.device* %13)
  store %struct.drm_device* %14, %struct.drm_device** %9, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 1
  %17 = load %struct.msm_drm_private*, %struct.msm_drm_private** %16, align 8
  store %struct.msm_drm_private* %17, %struct.msm_drm_private** %10, align 8
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call i32 @find_chipid(%struct.device* %18, %struct.TYPE_3__* getelementptr inbounds (%struct.adreno_platform_config, %struct.adreno_platform_config* @adreno_bind.config, i32 0, i32 0))
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %4, align 4
  br label %77

24:                                               ; preds = %3
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  store %struct.adreno_platform_config* @adreno_bind.config, %struct.adreno_platform_config** %26, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = call i32 @to_platform_device(%struct.device* %28)
  %30 = call i32 @set_gpu_pdev(%struct.drm_device* %27, i32 %29)
  %31 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.adreno_platform_config* @adreno_bind.config to { i64, i64 }*), i32 0, i32 0), align 4
  %32 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.adreno_platform_config* @adreno_bind.config to { i64, i64 }*), i32 0, i32 1), align 4
  %33 = call %struct.adreno_info* @adreno_info(i64 %31, i64 %32)
  store %struct.adreno_info* %33, %struct.adreno_info** %8, align 8
  %34 = load %struct.adreno_info*, %struct.adreno_info** %8, align 8
  %35 = icmp ne %struct.adreno_info* %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %24
  %37 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.adreno_platform_config, %struct.adreno_platform_config* @adreno_bind.config, i32 0, i32 0, i32 0), align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.adreno_platform_config, %struct.adreno_platform_config* @adreno_bind.config, i32 0, i32 0, i32 3), align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.adreno_platform_config, %struct.adreno_platform_config* @adreno_bind.config, i32 0, i32 0, i32 2), align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.adreno_platform_config, %struct.adreno_platform_config* @adreno_bind.config, i32 0, i32 0, i32 1), align 4
  %44 = call i32 (i32, i8*, ...) @dev_warn(i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* @ENXIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %77

47:                                               ; preds = %24
  %48 = load i32, i32* getelementptr inbounds (%struct.adreno_platform_config, %struct.adreno_platform_config* @adreno_bind.config, i32 0, i32 0, i32 0), align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.adreno_platform_config, %struct.adreno_platform_config* @adreno_bind.config, i32 0, i32 0, i32 3), align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.adreno_platform_config, %struct.adreno_platform_config* @adreno_bind.config, i32 0, i32 0, i32 2), align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.adreno_platform_config, %struct.adreno_platform_config* @adreno_bind.config, i32 0, i32 0, i32 1), align 4
  %52 = call i32 @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* getelementptr inbounds (%struct.adreno_platform_config, %struct.adreno_platform_config* @adreno_bind.config, i32 0, i32 0, i32 0), align 4
  %54 = icmp eq i32 %53, 2
  %55 = zext i1 %54 to i32
  %56 = load %struct.msm_drm_private*, %struct.msm_drm_private** %10, align 8
  %57 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.adreno_info*, %struct.adreno_info** %8, align 8
  %59 = getelementptr inbounds %struct.adreno_info, %struct.adreno_info* %58, i32 0, i32 0
  %60 = load %struct.msm_gpu* (%struct.drm_device*)*, %struct.msm_gpu* (%struct.drm_device*)** %59, align 8
  %61 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %62 = call %struct.msm_gpu* %60(%struct.drm_device* %61)
  store %struct.msm_gpu* %62, %struct.msm_gpu** %11, align 8
  %63 = load %struct.msm_gpu*, %struct.msm_gpu** %11, align 8
  %64 = call i64 @IS_ERR(%struct.msm_gpu* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %47
  %67 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %68 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i8*, ...) @dev_warn(i32 %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.msm_gpu*, %struct.msm_gpu** %11, align 8
  %72 = call i32 @PTR_ERR(%struct.msm_gpu* %71)
  store i32 %72, i32* %4, align 4
  br label %77

73:                                               ; preds = %47
  %74 = load %struct.device*, %struct.device** %5, align 8
  %75 = load %struct.msm_gpu*, %struct.msm_gpu** %11, align 8
  %76 = call i32 @dev_set_drvdata(%struct.device* %74, %struct.msm_gpu* %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %73, %66, %36, %22
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @find_chipid(%struct.device*, %struct.TYPE_3__*) #1

declare dso_local i32 @set_gpu_pdev(%struct.drm_device*, i32) #1

declare dso_local i32 @to_platform_device(%struct.device*) #1

declare dso_local %struct.adreno_info* @adreno_info(i64, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @DBG(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.msm_gpu*) #1

declare dso_local i32 @PTR_ERR(%struct.msm_gpu*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.msm_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
