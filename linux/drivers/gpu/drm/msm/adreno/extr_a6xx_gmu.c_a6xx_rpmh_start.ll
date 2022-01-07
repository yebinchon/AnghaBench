; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_rpmh_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_rpmh_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gmu = type { i32 }

@REG_A6XX_GMU_RSCC_CONTROL_REQ = common dso_local global i32 0, align 4
@REG_A6XX_GMU_RSCC_CONTROL_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unable to power on the GPU RSC\0A\00", align 1
@REG_A6XX_RSCC_SEQ_BUSY_DRV0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"GPU RSC sequence stuck while waking up the GPU\0A\00", align 1
@REG_A6XX_GPU_GMU_AO_GPU_CX_BUSY_MASK = common dso_local global i32 0, align 4
@REG_A6XX_GMU_CX_GMU_POWER_COUNTER_SELECT_0 = common dso_local global i32 0, align 4
@REG_A6XX_GMU_CX_GMU_POWER_COUNTER_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a6xx_gmu*)* @a6xx_rpmh_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a6xx_rpmh_start(%struct.a6xx_gmu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.a6xx_gmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.a6xx_gmu* %0, %struct.a6xx_gmu** %3, align 8
  %6 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %7 = load i32, i32* @REG_A6XX_GMU_RSCC_CONTROL_REQ, align 4
  %8 = call i32 @gmu_write(%struct.a6xx_gmu* %6, i32 %7, i32 2)
  %9 = call i32 (...) @wmb()
  %10 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %11 = load i32, i32* @REG_A6XX_GMU_RSCC_CONTROL_ACK, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 2
  %15 = call i32 @gmu_poll_timeout(%struct.a6xx_gmu* %10, i32 %11, i32 %12, i32 %14, i32 100, i32 10000)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %20 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @DRM_DEV_ERROR(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %54

24:                                               ; preds = %1
  %25 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %26 = load i32, i32* @REG_A6XX_RSCC_SEQ_BUSY_DRV0, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @gmu_poll_timeout(%struct.a6xx_gmu* %25, i32 %26, i32 %27, i32 %31, i32 100, i32 10000)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %37 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @DRM_DEV_ERROR(i32 %38, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %54

41:                                               ; preds = %24
  %42 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %43 = load i32, i32* @REG_A6XX_GMU_RSCC_CONTROL_REQ, align 4
  %44 = call i32 @gmu_write(%struct.a6xx_gmu* %42, i32 %43, i32 0)
  %45 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %46 = load i32, i32* @REG_A6XX_GPU_GMU_AO_GPU_CX_BUSY_MASK, align 4
  %47 = call i32 @gmu_write(%struct.a6xx_gmu* %45, i32 %46, i32 -16777216)
  %48 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %49 = load i32, i32* @REG_A6XX_GMU_CX_GMU_POWER_COUNTER_SELECT_0, align 4
  %50 = call i32 @gmu_rmw(%struct.a6xx_gmu* %48, i32 %49, i32 255, i32 32)
  %51 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %52 = load i32, i32* @REG_A6XX_GMU_CX_GMU_POWER_COUNTER_ENABLE, align 4
  %53 = call i32 @gmu_write(%struct.a6xx_gmu* %51, i32 %52, i32 1)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %41, %35, %18
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @gmu_write(%struct.a6xx_gmu*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @gmu_poll_timeout(%struct.a6xx_gmu*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @gmu_rmw(%struct.a6xx_gmu*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
