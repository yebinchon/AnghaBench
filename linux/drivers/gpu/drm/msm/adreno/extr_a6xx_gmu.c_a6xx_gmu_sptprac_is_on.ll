; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_sptprac_is_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_sptprac_is_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gmu = type { i32 }

@REG_A6XX_GMU_SPTPRAC_PWR_CLK_STATUS = common dso_local global i32 0, align 4
@A6XX_GMU_SPTPRAC_PWR_CLK_STATUS_SPTPRAC_GDSC_POWER_OFF = common dso_local global i32 0, align 4
@A6XX_GMU_SPTPRAC_PWR_CLK_STATUS_SP_CLOCK_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @a6xx_gmu_sptprac_is_on(%struct.a6xx_gmu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.a6xx_gmu*, align 8
  %4 = alloca i32, align 4
  store %struct.a6xx_gmu* %0, %struct.a6xx_gmu** %3, align 8
  %5 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %6 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

10:                                               ; preds = %1
  %11 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %12 = load i32, i32* @REG_A6XX_GMU_SPTPRAC_PWR_CLK_STATUS, align 4
  %13 = call i32 @gmu_read(%struct.a6xx_gmu* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @A6XX_GMU_SPTPRAC_PWR_CLK_STATUS_SPTPRAC_GDSC_POWER_OFF, align 4
  %16 = load i32, i32* @A6XX_GMU_SPTPRAC_PWR_CLK_STATUS_SP_CLOCK_OFF, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %10, %9
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @gmu_read(%struct.a6xx_gmu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
