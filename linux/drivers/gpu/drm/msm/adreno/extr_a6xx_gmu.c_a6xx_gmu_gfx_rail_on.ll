; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_gfx_rail_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_gfx_rail_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gmu = type { i32*, i32 }

@REG_A6XX_GMU_BOOT_SLUMBER_OPTION = common dso_local global i32 0, align 4
@REG_A6XX_GMU_GX_VOTE_IDX = common dso_local global i32 0, align 4
@REG_A6XX_GMU_MX_VOTE_IDX = common dso_local global i32 0, align 4
@GMU_OOB_BOOT_SLUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a6xx_gmu*)* @a6xx_gmu_gfx_rail_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a6xx_gmu_gfx_rail_on(%struct.a6xx_gmu* %0) #0 {
  %2 = alloca %struct.a6xx_gmu*, align 8
  %3 = alloca i32, align 4
  store %struct.a6xx_gmu* %0, %struct.a6xx_gmu** %2, align 8
  %4 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %5 = load i32, i32* @REG_A6XX_GMU_BOOT_SLUMBER_OPTION, align 4
  %6 = call i32 @gmu_write(%struct.a6xx_gmu* %4, i32 %5, i32 0)
  %7 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %8 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %11 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %9, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %18 = load i32, i32* @REG_A6XX_GMU_GX_VOTE_IDX, align 4
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 255
  %21 = call i32 @gmu_write(%struct.a6xx_gmu* %17, i32 %18, i32 %20)
  %22 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %23 = load i32, i32* @REG_A6XX_GMU_MX_VOTE_IDX, align 4
  %24 = load i32, i32* %3, align 4
  %25 = ashr i32 %24, 8
  %26 = and i32 %25, 255
  %27 = call i32 @gmu_write(%struct.a6xx_gmu* %22, i32 %23, i32 %26)
  %28 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %29 = load i32, i32* @GMU_OOB_BOOT_SLUMBER, align 4
  %30 = call i32 @a6xx_gmu_set_oob(%struct.a6xx_gmu* %28, i32 %29)
  ret i32 %30
}

declare dso_local i32 @gmu_write(%struct.a6xx_gmu*, i32, i32) #1

declare dso_local i32 @a6xx_gmu_set_oob(%struct.a6xx_gmu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
