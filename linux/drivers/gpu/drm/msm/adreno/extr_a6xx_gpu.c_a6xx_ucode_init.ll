; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c_a6xx_ucode_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c_a6xx_ucode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.adreno_gpu = type { i32* }
%struct.a6xx_gpu = type { i32, i32* }

@ADRENO_FW_SQE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Could not allocate SQE ucode: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"sqefw\00", align 1
@REG_A6XX_CP_SQE_INSTR_BASE_LO = common dso_local global i32 0, align 4
@REG_A6XX_CP_SQE_INSTR_BASE_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*)* @a6xx_ucode_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a6xx_ucode_init(%struct.msm_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.adreno_gpu*, align 8
  %5 = alloca %struct.a6xx_gpu*, align 8
  %6 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  %7 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %8 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %7)
  store %struct.adreno_gpu* %8, %struct.adreno_gpu** %4, align 8
  %9 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %10 = call %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu* %9)
  store %struct.a6xx_gpu* %10, %struct.a6xx_gpu** %5, align 8
  %11 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %5, align 8
  %12 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %52, label %15

15:                                               ; preds = %1
  %16 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %17 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %18 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @ADRENO_FW_SQE, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %5, align 8
  %24 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %23, i32 0, i32 0
  %25 = call i32* @adreno_fw_create_bo(%struct.msm_gpu* %16, i32 %22, i32* %24)
  %26 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %5, align 8
  %27 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %5, align 8
  %29 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @IS_ERR(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %15
  %34 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %5, align 8
  %35 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @PTR_ERR(i32* %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %5, align 8
  %39 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %41 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @DRM_DEV_ERROR(i32* %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %60

47:                                               ; preds = %15
  %48 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %5, align 8
  %49 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @msm_gem_object_set_name(i32* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %47, %1
  %53 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %54 = load i32, i32* @REG_A6XX_CP_SQE_INSTR_BASE_LO, align 4
  %55 = load i32, i32* @REG_A6XX_CP_SQE_INSTR_BASE_HI, align 4
  %56 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %5, align 8
  %57 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @gpu_write64(%struct.msm_gpu* %53, i32 %54, i32 %55, i32 %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %52, %33
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i32* @adreno_fw_create_bo(%struct.msm_gpu*, i32, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32*, i8*, i32) #1

declare dso_local i32 @msm_gem_object_set_name(i32*, i8*) #1

declare dso_local i32 @gpu_write64(%struct.msm_gpu*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
