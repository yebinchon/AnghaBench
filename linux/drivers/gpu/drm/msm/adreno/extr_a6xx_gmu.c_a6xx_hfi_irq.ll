; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_hfi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_hfi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gmu = type { i32 }

@REG_A6XX_GMU_GMU2HOST_INTR_INFO = common dso_local global i32 0, align 4
@REG_A6XX_GMU_GMU2HOST_INTR_CLR = common dso_local global i32 0, align 4
@A6XX_GMU_GMU2HOST_INTR_INFO_CM3_FAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"GMU firmware fault\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @a6xx_hfi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a6xx_hfi_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.a6xx_gmu*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.a6xx_gmu*
  store %struct.a6xx_gmu* %8, %struct.a6xx_gmu** %5, align 8
  %9 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %5, align 8
  %10 = load i32, i32* @REG_A6XX_GMU_GMU2HOST_INTR_INFO, align 4
  %11 = call i32 @gmu_read(%struct.a6xx_gmu* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %5, align 8
  %13 = load i32, i32* @REG_A6XX_GMU_GMU2HOST_INTR_CLR, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @gmu_write(%struct.a6xx_gmu* %12, i32 %13, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @A6XX_GMU_GMU2HOST_INTR_INFO_CM3_FAULT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %5, align 8
  %22 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err_ratelimited(i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %5, align 8
  %26 = call i32 @a6xx_gmu_fault(%struct.a6xx_gmu* %25)
  br label %27

27:                                               ; preds = %20, %2
  %28 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %28
}

declare dso_local i32 @gmu_read(%struct.a6xx_gmu*, i32) #1

declare dso_local i32 @gmu_write(%struct.a6xx_gmu*, i32, i32) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*) #1

declare dso_local i32 @a6xx_gmu_fault(%struct.a6xx_gmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
