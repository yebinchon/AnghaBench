; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_check_idle_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_check_idle_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gmu = type { i32 }

@GMU_IDLE_STATE_SPTP = common dso_local global i32 0, align 4
@GMU_IDLE_STATE_IFPC = common dso_local global i32 0, align 4
@REG_A6XX_GPU_GMU_CX_GMU_RPMH_POWER_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a6xx_gmu*)* @a6xx_gmu_check_idle_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a6xx_gmu_check_idle_level(%struct.a6xx_gmu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.a6xx_gmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.a6xx_gmu* %0, %struct.a6xx_gmu** %3, align 8
  %6 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %7 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %10 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GMU_IDLE_STATE_SPTP, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @GMU_IDLE_STATE_IFPC, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %18 = load i32, i32* @REG_A6XX_GPU_GMU_CX_GMU_RPMH_POWER_STATE, align 4
  %19 = call i32 @gmu_read(%struct.a6xx_gmu* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %16
  %24 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %25 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GMU_IDLE_STATE_IFPC, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %31 = call i32 @a6xx_gmu_gx_is_on(%struct.a6xx_gmu* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29, %23
  store i32 1, i32* %2, align 4
  br label %36

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %16
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %33
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @gmu_read(%struct.a6xx_gmu*, i32) #1

declare dso_local i32 @a6xx_gmu_gx_is_on(%struct.a6xx_gmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
