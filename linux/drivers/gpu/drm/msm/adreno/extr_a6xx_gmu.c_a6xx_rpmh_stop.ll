; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_rpmh_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_rpmh_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gmu = type { i32 }

@REG_A6XX_GMU_RSCC_CONTROL_REQ = common dso_local global i32 0, align 4
@REG_A6XX_GPU_RSCC_RSC_STATUS0_DRV0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to power off the GPU RSC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a6xx_gmu*)* @a6xx_rpmh_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_rpmh_stop(%struct.a6xx_gmu* %0) #0 {
  %2 = alloca %struct.a6xx_gmu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.a6xx_gmu* %0, %struct.a6xx_gmu** %2, align 8
  %5 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %6 = load i32, i32* @REG_A6XX_GMU_RSCC_CONTROL_REQ, align 4
  %7 = call i32 @gmu_write(%struct.a6xx_gmu* %5, i32 %6, i32 1)
  %8 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %9 = load i32, i32* @REG_A6XX_GPU_RSCC_RSC_STATUS0_DRV0, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 65536
  %13 = call i32 @gmu_poll_timeout(%struct.a6xx_gmu* %8, i32 %9, i32 %10, i32 %12, i32 100, i32 10000)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %18 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @DRM_DEV_ERROR(i32 %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %23 = load i32, i32* @REG_A6XX_GMU_RSCC_CONTROL_REQ, align 4
  %24 = call i32 @gmu_write(%struct.a6xx_gmu* %22, i32 %23, i32 0)
  ret void
}

declare dso_local i32 @gmu_write(%struct.a6xx_gmu*, i32, i32) #1

declare dso_local i32 @gmu_poll_timeout(%struct.a6xx_gmu*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
