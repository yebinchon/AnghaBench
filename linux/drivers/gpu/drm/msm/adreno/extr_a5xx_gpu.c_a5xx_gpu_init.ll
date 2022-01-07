; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_gpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_gpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_device = type { i32, %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.platform_device* }
%struct.platform_device = type { i32 }
%struct.a5xx_gpu = type { i32, %struct.adreno_gpu }
%struct.adreno_gpu = type { %struct.msm_gpu, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"No A5XX device is defined\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@a5xx_registers = common dso_local global i32 0, align 4
@a5xx_register_offsets = common dso_local global i32 0, align 4
@funcs = common dso_local global i32 0, align 4
@a5xx_fault_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msm_gpu* @a5xx_gpu_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.msm_drm_private*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.a5xx_gpu*, align 8
  %7 = alloca %struct.adreno_gpu*, align 8
  %8 = alloca %struct.msm_gpu*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 1
  %12 = load %struct.msm_drm_private*, %struct.msm_drm_private** %11, align 8
  store %struct.msm_drm_private* %12, %struct.msm_drm_private** %4, align 8
  %13 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %14 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %13, i32 0, i32 0
  %15 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  store %struct.platform_device* %15, %struct.platform_device** %5, align 8
  store %struct.a5xx_gpu* null, %struct.a5xx_gpu** %6, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %17 = icmp ne %struct.platform_device* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @DRM_DEV_ERROR(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.msm_gpu* @ERR_PTR(i32 %24)
  store %struct.msm_gpu* %25, %struct.msm_gpu** %2, align 8
  br label %82

26:                                               ; preds = %1
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.a5xx_gpu* @kzalloc(i32 24, i32 %27)
  store %struct.a5xx_gpu* %28, %struct.a5xx_gpu** %6, align 8
  %29 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %6, align 8
  %30 = icmp ne %struct.a5xx_gpu* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.msm_gpu* @ERR_PTR(i32 %33)
  store %struct.msm_gpu* %34, %struct.msm_gpu** %2, align 8
  br label %82

35:                                               ; preds = %26
  %36 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %6, align 8
  %37 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %36, i32 0, i32 1
  store %struct.adreno_gpu* %37, %struct.adreno_gpu** %7, align 8
  %38 = load %struct.adreno_gpu*, %struct.adreno_gpu** %7, align 8
  %39 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %38, i32 0, i32 0
  store %struct.msm_gpu* %39, %struct.msm_gpu** %8, align 8
  %40 = load i32, i32* @a5xx_registers, align 4
  %41 = load %struct.adreno_gpu*, %struct.adreno_gpu** %7, align 8
  %42 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @a5xx_register_offsets, align 4
  %44 = load %struct.adreno_gpu*, %struct.adreno_gpu** %7, align 8
  %45 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %6, align 8
  %47 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %46, i32 0, i32 0
  store i32 5111834, i32* %47, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @check_speed_bin(i32* %49)
  %51 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %53 = load %struct.adreno_gpu*, %struct.adreno_gpu** %7, align 8
  %54 = call i32 @adreno_gpu_init(%struct.drm_device* %51, %struct.platform_device* %52, %struct.adreno_gpu* %53, i32* @funcs, i32 4)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %35
  %58 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %6, align 8
  %59 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %59, i32 0, i32 0
  %61 = call i32 @a5xx_destroy(%struct.msm_gpu* %60)
  %62 = load i32, i32* %9, align 4
  %63 = call %struct.msm_gpu* @ERR_PTR(i32 %62)
  store %struct.msm_gpu* %63, %struct.msm_gpu** %2, align 8
  br label %82

64:                                               ; preds = %35
  %65 = load %struct.msm_gpu*, %struct.msm_gpu** %8, align 8
  %66 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = icmp ne %struct.TYPE_2__* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.msm_gpu*, %struct.msm_gpu** %8, align 8
  %71 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.msm_gpu*, %struct.msm_gpu** %8, align 8
  %76 = load i32, i32* @a5xx_fault_handler, align 4
  %77 = call i32 @msm_mmu_set_fault_handler(i32 %74, %struct.msm_gpu* %75, i32 %76)
  br label %78

78:                                               ; preds = %69, %64
  %79 = load %struct.msm_gpu*, %struct.msm_gpu** %8, align 8
  %80 = call i32 @a5xx_preempt_init(%struct.msm_gpu* %79)
  %81 = load %struct.msm_gpu*, %struct.msm_gpu** %8, align 8
  store %struct.msm_gpu* %81, %struct.msm_gpu** %2, align 8
  br label %82

82:                                               ; preds = %78, %57, %31, %18
  %83 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  ret %struct.msm_gpu* %83
}

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local %struct.msm_gpu* @ERR_PTR(i32) #1

declare dso_local %struct.a5xx_gpu* @kzalloc(i32, i32) #1

declare dso_local i32 @check_speed_bin(i32*) #1

declare dso_local i32 @adreno_gpu_init(%struct.drm_device*, %struct.platform_device*, %struct.adreno_gpu*, i32*, i32) #1

declare dso_local i32 @a5xx_destroy(%struct.msm_gpu*) #1

declare dso_local i32 @msm_mmu_set_fault_handler(i32, %struct.msm_gpu*, i32) #1

declare dso_local i32 @a5xx_preempt_init(%struct.msm_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
