; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_notify_slumber.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_notify_slumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gmu = type { i64, i32 }

@REG_A6XX_GMU_CX_GMU_POWER_COUNTER_ENABLE = common dso_local global i32 0, align 4
@GMU_IDLE_STATE_SPTP = common dso_local global i64 0, align 8
@REG_A6XX_GMU_BOOT_SLUMBER_OPTION = common dso_local global i32 0, align 4
@GMU_OOB_BOOT_SLUMBER = common dso_local global i32 0, align 4
@REG_A6XX_GPU_GMU_CX_GMU_RPMH_POWER_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"The GMU did not go into slumber\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@REG_A6XX_GMU_AO_AHB_FENCE_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a6xx_gmu*)* @a6xx_gmu_notify_slumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a6xx_gmu_notify_slumber(%struct.a6xx_gmu* %0) #0 {
  %2 = alloca %struct.a6xx_gmu*, align 8
  %3 = alloca i32, align 4
  store %struct.a6xx_gmu* %0, %struct.a6xx_gmu** %2, align 8
  %4 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %5 = load i32, i32* @REG_A6XX_GMU_CX_GMU_POWER_COUNTER_ENABLE, align 4
  %6 = call i32 @gmu_write(%struct.a6xx_gmu* %4, i32 %5, i32 0)
  %7 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %8 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @GMU_IDLE_STATE_SPTP, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %14 = call i32 @a6xx_sptprac_disable(%struct.a6xx_gmu* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %17 = load i32, i32* @REG_A6XX_GMU_BOOT_SLUMBER_OPTION, align 4
  %18 = call i32 @gmu_write(%struct.a6xx_gmu* %16, i32 %17, i32 1)
  %19 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %20 = load i32, i32* @GMU_OOB_BOOT_SLUMBER, align 4
  %21 = call i32 @a6xx_gmu_set_oob(%struct.a6xx_gmu* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %23 = load i32, i32* @GMU_OOB_BOOT_SLUMBER, align 4
  %24 = call i32 @a6xx_gmu_clear_oob(%struct.a6xx_gmu* %22, i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %15
  %28 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %29 = load i32, i32* @REG_A6XX_GPU_GMU_CX_GMU_RPMH_POWER_STATE, align 4
  %30 = call i32 @gmu_read(%struct.a6xx_gmu* %28, i32 %29)
  %31 = icmp ne i32 %30, 15
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %34 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @DRM_DEV_ERROR(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ETIMEDOUT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %32, %27
  br label %40

40:                                               ; preds = %39, %15
  %41 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %42 = load i32, i32* @REG_A6XX_GMU_AO_AHB_FENCE_CTRL, align 4
  %43 = call i32 @gmu_write(%struct.a6xx_gmu* %41, i32 %42, i32 0)
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @gmu_write(%struct.a6xx_gmu*, i32, i32) #1

declare dso_local i32 @a6xx_sptprac_disable(%struct.a6xx_gmu*) #1

declare dso_local i32 @a6xx_gmu_set_oob(%struct.a6xx_gmu*, i32) #1

declare dso_local i32 @a6xx_gmu_clear_oob(%struct.a6xx_gmu*, i32) #1

declare dso_local i32 @gmu_read(%struct.a6xx_gmu*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
