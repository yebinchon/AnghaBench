; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a2xx_gpu.c_a2xx_gpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a2xx_gpu.c_a2xx_gpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32, i32, i32 }
%struct.drm_device = type { i32, %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.platform_device* }
%struct.platform_device = type { i32 }
%struct.a2xx_gpu = type { %struct.adreno_gpu }
%struct.adreno_gpu = type { %struct.msm_gpu, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"no a2xx device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@perfcntrs = common dso_local global i32 0, align 4
@a200_registers = common dso_local global i32 0, align 4
@a225_registers = common dso_local global i32 0, align 4
@a220_registers = common dso_local global i32 0, align 4
@a2xx_register_offsets = common dso_local global i32 0, align 4
@funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"No memory protection without MMU\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msm_gpu* @a2xx_gpu_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.a2xx_gpu*, align 8
  %5 = alloca %struct.adreno_gpu*, align 8
  %6 = alloca %struct.msm_gpu*, align 8
  %7 = alloca %struct.msm_drm_private*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.a2xx_gpu* null, %struct.a2xx_gpu** %4, align 8
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
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %90

25:                                               ; preds = %1
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.a2xx_gpu* @kzalloc(i32 20, i32 %26)
  store %struct.a2xx_gpu* %27, %struct.a2xx_gpu** %4, align 8
  %28 = load %struct.a2xx_gpu*, %struct.a2xx_gpu** %4, align 8
  %29 = icmp ne %struct.a2xx_gpu* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %90

33:                                               ; preds = %25
  %34 = load %struct.a2xx_gpu*, %struct.a2xx_gpu** %4, align 8
  %35 = getelementptr inbounds %struct.a2xx_gpu, %struct.a2xx_gpu* %34, i32 0, i32 0
  store %struct.adreno_gpu* %35, %struct.adreno_gpu** %5, align 8
  %36 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %37 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %36, i32 0, i32 0
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
  %45 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %46 = call i64 @adreno_is_a20x(%struct.adreno_gpu* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %33
  %49 = load i32, i32* @a200_registers, align 4
  %50 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %51 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  br label %65

52:                                               ; preds = %33
  %53 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %54 = call i64 @adreno_is_a225(%struct.adreno_gpu* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* @a225_registers, align 4
  %58 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %59 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  br label %64

60:                                               ; preds = %52
  %61 = load i32, i32* @a220_registers, align 4
  %62 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %63 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %56
  br label %65

65:                                               ; preds = %64, %48
  %66 = load i32, i32* @a2xx_register_offsets, align 4
  %67 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %68 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %70 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %71 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %72 = call i32 @adreno_gpu_init(%struct.drm_device* %69, %struct.platform_device* %70, %struct.adreno_gpu* %71, i32* @funcs, i32 1)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  br label %90

76:                                               ; preds = %65
  %77 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %78 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %76
  %82 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %83 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @ENXIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %9, align 4
  br label %90

88:                                               ; preds = %76
  %89 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  store %struct.msm_gpu* %89, %struct.msm_gpu** %2, align 8
  br label %101

90:                                               ; preds = %81, %75, %30, %18
  %91 = load %struct.a2xx_gpu*, %struct.a2xx_gpu** %4, align 8
  %92 = icmp ne %struct.a2xx_gpu* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.a2xx_gpu*, %struct.a2xx_gpu** %4, align 8
  %95 = getelementptr inbounds %struct.a2xx_gpu, %struct.a2xx_gpu* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %95, i32 0, i32 0
  %97 = call i32 @a2xx_destroy(%struct.msm_gpu* %96)
  br label %98

98:                                               ; preds = %93, %90
  %99 = load i32, i32* %9, align 4
  %100 = call %struct.msm_gpu* @ERR_PTR(i32 %99)
  store %struct.msm_gpu* %100, %struct.msm_gpu** %2, align 8
  br label %101

101:                                              ; preds = %98, %88
  %102 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  ret %struct.msm_gpu* %102
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.a2xx_gpu* @kzalloc(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @adreno_is_a20x(%struct.adreno_gpu*) #1

declare dso_local i64 @adreno_is_a225(%struct.adreno_gpu*) #1

declare dso_local i32 @adreno_gpu_init(%struct.drm_device*, %struct.platform_device*, %struct.adreno_gpu*, i32*, i32) #1

declare dso_local i32 @a2xx_destroy(%struct.msm_gpu*) #1

declare dso_local %struct.msm_gpu* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
