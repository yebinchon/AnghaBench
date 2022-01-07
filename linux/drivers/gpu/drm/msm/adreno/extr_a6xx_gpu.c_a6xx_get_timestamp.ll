; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c_a6xx_get_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c_a6xx_get_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.adreno_gpu = type { i32 }
%struct.a6xx_gpu = type { i32 }

@GMU_OOB_GPU_SET = common dso_local global i32 0, align 4
@REG_A6XX_RBBM_PERFCTR_CP_0_LO = common dso_local global i32 0, align 4
@REG_A6XX_RBBM_PERFCTR_CP_0_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*, i32*)* @a6xx_get_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a6xx_get_timestamp(%struct.msm_gpu* %0, i32* %1) #0 {
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.adreno_gpu*, align 8
  %6 = alloca %struct.a6xx_gpu*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %8 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %7)
  store %struct.adreno_gpu* %8, %struct.adreno_gpu** %5, align 8
  %9 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %10 = call %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu* %9)
  store %struct.a6xx_gpu* %10, %struct.a6xx_gpu** %6, align 8
  %11 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %6, align 8
  %12 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %11, i32 0, i32 0
  %13 = load i32, i32* @GMU_OOB_GPU_SET, align 4
  %14 = call i32 @a6xx_gmu_set_oob(i32* %12, i32 %13)
  %15 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %16 = load i32, i32* @REG_A6XX_RBBM_PERFCTR_CP_0_LO, align 4
  %17 = load i32, i32* @REG_A6XX_RBBM_PERFCTR_CP_0_HI, align 4
  %18 = call i32 @gpu_read64(%struct.msm_gpu* %15, i32 %16, i32 %17)
  %19 = load i32*, i32** %4, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %6, align 8
  %21 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %20, i32 0, i32 0
  %22 = load i32, i32* @GMU_OOB_GPU_SET, align 4
  %23 = call i32 @a6xx_gmu_clear_oob(i32* %21, i32 %22)
  ret i32 0
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i32 @a6xx_gmu_set_oob(i32*, i32) #1

declare dso_local i32 @gpu_read64(%struct.msm_gpu*, i32, i32) #1

declare dso_local i32 @a6xx_gmu_clear_oob(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
