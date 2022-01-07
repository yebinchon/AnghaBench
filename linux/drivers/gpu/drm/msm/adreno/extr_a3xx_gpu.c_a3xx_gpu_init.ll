; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a3xx_gpu.c_a3xx_gpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a3xx_gpu.c_a3xx_gpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32, i32, i32 }
%struct.drm_device = type { i32, %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.platform_device* }
%struct.platform_device = type { i32 }
%struct.a3xx_gpu = type { %struct.adreno_gpu, i32, %struct.ocmem_buf* }
%struct.adreno_gpu = type { i32, %struct.msm_gpu, i32, i32 }
%struct.ocmem_buf = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"no a3xx device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@perfcntrs = common dso_local global i32 0, align 4
@a3xx_registers = common dso_local global i32 0, align 4
@a3xx_register_offsets = common dso_local global i32 0, align 4
@funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"No memory protection without IOMMU\0A\00", align 1
@OCMEM_GRAPHICS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msm_gpu* @a3xx_gpu_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.a3xx_gpu*, align 8
  %5 = alloca %struct.adreno_gpu*, align 8
  %6 = alloca %struct.msm_gpu*, align 8
  %7 = alloca %struct.msm_drm_private*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.a3xx_gpu* null, %struct.a3xx_gpu** %4, align 8
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
  br label %77

25:                                               ; preds = %1
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.a3xx_gpu* @kzalloc(i32 40, i32 %26)
  store %struct.a3xx_gpu* %27, %struct.a3xx_gpu** %4, align 8
  %28 = load %struct.a3xx_gpu*, %struct.a3xx_gpu** %4, align 8
  %29 = icmp ne %struct.a3xx_gpu* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %77

33:                                               ; preds = %25
  %34 = load %struct.a3xx_gpu*, %struct.a3xx_gpu** %4, align 8
  %35 = getelementptr inbounds %struct.a3xx_gpu, %struct.a3xx_gpu* %34, i32 0, i32 0
  store %struct.adreno_gpu* %35, %struct.adreno_gpu** %5, align 8
  %36 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %37 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %36, i32 0, i32 1
  store %struct.msm_gpu* %37, %struct.msm_gpu** %6, align 8
  %38 = load i32, i32* @perfcntrs, align 4
  %39 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %40 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @perfcntrs, align 4
  %42 = call i32 @ARRAY_SIZE(i32 %41)
  %43 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %44 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @a3xx_registers, align 4
  %46 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %47 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @a3xx_register_offsets, align 4
  %49 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %50 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %53 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %54 = call i32 @adreno_gpu_init(%struct.drm_device* %51, %struct.platform_device* %52, %struct.adreno_gpu* %53, i32* @funcs, i32 1)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %33
  br label %77

58:                                               ; preds = %33
  %59 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %60 = call i64 @adreno_is_a330(%struct.adreno_gpu* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62, %58
  %64 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %65 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  %69 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %70 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @DRM_DEV_ERROR(i32 %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @ENXIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %9, align 4
  br label %77

75:                                               ; preds = %63
  %76 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  store %struct.msm_gpu* %76, %struct.msm_gpu** %2, align 8
  br label %88

77:                                               ; preds = %68, %57, %30, %18
  %78 = load %struct.a3xx_gpu*, %struct.a3xx_gpu** %4, align 8
  %79 = icmp ne %struct.a3xx_gpu* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.a3xx_gpu*, %struct.a3xx_gpu** %4, align 8
  %82 = getelementptr inbounds %struct.a3xx_gpu, %struct.a3xx_gpu* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %82, i32 0, i32 1
  %84 = call i32 @a3xx_destroy(%struct.msm_gpu* %83)
  br label %85

85:                                               ; preds = %80, %77
  %86 = load i32, i32* %9, align 4
  %87 = call %struct.msm_gpu* @ERR_PTR(i32 %86)
  store %struct.msm_gpu* %87, %struct.msm_gpu** %2, align 8
  br label %88

88:                                               ; preds = %85, %75
  %89 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  ret %struct.msm_gpu* %89
}

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local %struct.a3xx_gpu* @kzalloc(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @adreno_gpu_init(%struct.drm_device*, %struct.platform_device*, %struct.adreno_gpu*, i32*, i32) #1

declare dso_local i64 @adreno_is_a330(%struct.adreno_gpu*) #1

declare dso_local i32 @a3xx_destroy(%struct.msm_gpu*) #1

declare dso_local %struct.msm_gpu* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
