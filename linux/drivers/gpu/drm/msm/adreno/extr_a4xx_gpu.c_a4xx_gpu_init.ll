; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a4xx_gpu.c_a4xx_gpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a4xx_gpu.c_a4xx_gpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32, i64, i32* }
%struct.drm_device = type { i32, %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.platform_device* }
%struct.platform_device = type { i32 }
%struct.a4xx_gpu = type { %struct.adreno_gpu, i32, %struct.ocmem_buf* }
%struct.adreno_gpu = type { i32, %struct.msm_gpu, i32, i32 }
%struct.ocmem_buf = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"no a4xx device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@a4xx_registers = common dso_local global i32 0, align 4
@a4xx_register_offsets = common dso_local global i32 0, align 4
@funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"No memory protection without IOMMU\0A\00", align 1
@OCMEM_GRAPHICS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msm_gpu* @a4xx_gpu_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.a4xx_gpu*, align 8
  %5 = alloca %struct.adreno_gpu*, align 8
  %6 = alloca %struct.msm_gpu*, align 8
  %7 = alloca %struct.msm_drm_private*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.a4xx_gpu* null, %struct.a4xx_gpu** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 1
  %12 = load %struct.msm_drm_private*, %struct.msm_drm_private** %11, align 8
  store %struct.msm_drm_private* %12, %struct.msm_drm_private** %7, align 8
  %13 = load %struct.msm_drm_private*, %struct.msm_drm_private** %7, align 8
  %14 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %13, i32 0, i32 0
  %15 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  store %struct.platform_device* %15, %struct.platform_device** %8, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %17 = icmp ne %struct.platform_device* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @DRM_DEV_ERROR(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %74

25:                                               ; preds = %1
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.a4xx_gpu* @kzalloc(i32 56, i32 %26)
  store %struct.a4xx_gpu* %27, %struct.a4xx_gpu** %4, align 8
  %28 = load %struct.a4xx_gpu*, %struct.a4xx_gpu** %4, align 8
  %29 = icmp ne %struct.a4xx_gpu* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %74

33:                                               ; preds = %25
  %34 = load %struct.a4xx_gpu*, %struct.a4xx_gpu** %4, align 8
  %35 = getelementptr inbounds %struct.a4xx_gpu, %struct.a4xx_gpu* %34, i32 0, i32 0
  store %struct.adreno_gpu* %35, %struct.adreno_gpu** %5, align 8
  %36 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %37 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %36, i32 0, i32 1
  store %struct.msm_gpu* %37, %struct.msm_gpu** %6, align 8
  %38 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %39 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  %40 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %41 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @a4xx_registers, align 4
  %43 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %44 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @a4xx_register_offsets, align 4
  %46 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %47 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %50 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %51 = call i32 @adreno_gpu_init(%struct.drm_device* %48, %struct.platform_device* %49, %struct.adreno_gpu* %50, i32* @funcs, i32 1)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %33
  br label %74

55:                                               ; preds = %33
  %56 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %57 = call i64 @adreno_is_a4xx(%struct.adreno_gpu* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %55
  %61 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %62 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %60
  %66 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %67 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @DRM_DEV_ERROR(i32 %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @ENXIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %9, align 4
  br label %74

72:                                               ; preds = %60
  %73 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  store %struct.msm_gpu* %73, %struct.msm_gpu** %2, align 8
  br label %85

74:                                               ; preds = %65, %54, %30, %18
  %75 = load %struct.a4xx_gpu*, %struct.a4xx_gpu** %4, align 8
  %76 = icmp ne %struct.a4xx_gpu* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load %struct.a4xx_gpu*, %struct.a4xx_gpu** %4, align 8
  %79 = getelementptr inbounds %struct.a4xx_gpu, %struct.a4xx_gpu* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %79, i32 0, i32 1
  %81 = call i32 @a4xx_destroy(%struct.msm_gpu* %80)
  br label %82

82:                                               ; preds = %77, %74
  %83 = load i32, i32* %9, align 4
  %84 = call %struct.msm_gpu* @ERR_PTR(i32 %83)
  store %struct.msm_gpu* %84, %struct.msm_gpu** %2, align 8
  br label %85

85:                                               ; preds = %82, %72
  %86 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  ret %struct.msm_gpu* %86
}

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local %struct.a4xx_gpu* @kzalloc(i32, i32) #1

declare dso_local i32 @adreno_gpu_init(%struct.drm_device*, %struct.platform_device*, %struct.adreno_gpu*, i32*, i32) #1

declare dso_local i64 @adreno_is_a4xx(%struct.adreno_gpu*) #1

declare dso_local i32 @a4xx_destroy(%struct.msm_gpu*) #1

declare dso_local %struct.msm_gpu* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
