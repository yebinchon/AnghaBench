; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c__a6xx_check_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c__a6xx_check_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.adreno_gpu = type { i32 }
%struct.a6xx_gpu = type { i32 }

@REG_A6XX_RBBM_STATUS = common dso_local global i32 0, align 4
@A6XX_RBBM_STATUS_CP_AHB_BUSY_CX_MASTER = common dso_local global i32 0, align 4
@REG_A6XX_RBBM_INT_0_STATUS = common dso_local global i32 0, align 4
@A6XX_RBBM_INT_0_MASK_RBBM_HANG_DETECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*)* @_a6xx_check_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_a6xx_check_idle(%struct.msm_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.adreno_gpu*, align 8
  %5 = alloca %struct.a6xx_gpu*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  %6 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %7 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %6)
  store %struct.adreno_gpu* %7, %struct.adreno_gpu** %4, align 8
  %8 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %9 = call %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu* %8)
  store %struct.a6xx_gpu* %9, %struct.a6xx_gpu** %5, align 8
  %10 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %5, align 8
  %11 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %10, i32 0, i32 0
  %12 = call i32 @a6xx_gmu_isidle(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

15:                                               ; preds = %1
  %16 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %17 = load i32, i32* @REG_A6XX_RBBM_STATUS, align 4
  %18 = call i32 @gpu_read(%struct.msm_gpu* %16, i32 %17)
  %19 = load i32, i32* @A6XX_RBBM_STATUS_CP_AHB_BUSY_CX_MASTER, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %33

24:                                               ; preds = %15
  %25 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %26 = load i32, i32* @REG_A6XX_RBBM_INT_0_STATUS, align 4
  %27 = call i32 @gpu_read(%struct.msm_gpu* %25, i32 %26)
  %28 = load i32, i32* @A6XX_RBBM_INT_0_MASK_RBBM_HANG_DETECT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %24, %23, %14
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i32 @a6xx_gmu_isidle(i32*) #1

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
