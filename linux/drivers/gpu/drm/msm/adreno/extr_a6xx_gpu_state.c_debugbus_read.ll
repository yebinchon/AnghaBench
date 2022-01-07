; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_debugbus_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_debugbus_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }

@REG_A6XX_DBGC_CFG_DBGBUS_SEL_A = common dso_local global i32 0, align 4
@REG_A6XX_DBGC_CFG_DBGBUS_SEL_B = common dso_local global i32 0, align 4
@REG_A6XX_DBGC_CFG_DBGBUS_SEL_C = common dso_local global i32 0, align 4
@REG_A6XX_DBGC_CFG_DBGBUS_SEL_D = common dso_local global i32 0, align 4
@REG_A6XX_DBGC_CFG_DBGBUS_TRACE_BUF2 = common dso_local global i32 0, align 4
@REG_A6XX_DBGC_CFG_DBGBUS_TRACE_BUF1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*, i32, i32, i32*)* @debugbus_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debugbus_read(%struct.msm_gpu* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.msm_gpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @A6XX_DBGC_CFG_DBGBUS_SEL_D_PING_INDEX(i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @A6XX_DBGC_CFG_DBGBUS_SEL_D_PING_BLK_SEL(i32 %12)
  %14 = or i32 %11, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %16 = load i32, i32* @REG_A6XX_DBGC_CFG_DBGBUS_SEL_A, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @gpu_write(%struct.msm_gpu* %15, i32 %16, i32 %17)
  %19 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %20 = load i32, i32* @REG_A6XX_DBGC_CFG_DBGBUS_SEL_B, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @gpu_write(%struct.msm_gpu* %19, i32 %20, i32 %21)
  %23 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %24 = load i32, i32* @REG_A6XX_DBGC_CFG_DBGBUS_SEL_C, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @gpu_write(%struct.msm_gpu* %23, i32 %24, i32 %25)
  %27 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %28 = load i32, i32* @REG_A6XX_DBGC_CFG_DBGBUS_SEL_D, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @gpu_write(%struct.msm_gpu* %27, i32 %28, i32 %29)
  %31 = call i32 @udelay(i32 1)
  %32 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %33 = load i32, i32* @REG_A6XX_DBGC_CFG_DBGBUS_TRACE_BUF2, align 4
  %34 = call i32 @gpu_read(%struct.msm_gpu* %32, i32 %33)
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %38 = load i32, i32* @REG_A6XX_DBGC_CFG_DBGBUS_TRACE_BUF1, align 4
  %39 = call i32 @gpu_read(%struct.msm_gpu* %37, i32 %38)
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %39, i32* %41, align 4
  ret i32 2
}

declare dso_local i32 @A6XX_DBGC_CFG_DBGBUS_SEL_D_PING_INDEX(i32) #1

declare dso_local i32 @A6XX_DBGC_CFG_DBGBUS_SEL_D_PING_BLK_SEL(i32) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
