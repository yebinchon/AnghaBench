; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_bcm_iproc_tsc.c_ts_reg_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_bcm_iproc_tsc.c_ts_reg_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_ts_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@REGCTL1 = common dso_local global i32 0, align 4
@REGCTL2 = common dso_local global i32 0, align 4
@INTERRUPT_THRES = common dso_local global i32 0, align 4
@INTERRUPT_MASK = common dso_local global i32 0, align 4
@INTERRUPT_STATUS = common dso_local global i32 0, align 4
@CONTROLLER_STATUS = common dso_local global i32 0, align 4
@FIFO_DATA = common dso_local global i32 0, align 4
@ANALOG_CONTROL = common dso_local global i32 0, align 4
@AUX_DATA = common dso_local global i32 0, align 4
@DEBOUNCE_CNTR_STAT = common dso_local global i32 0, align 4
@SCAN_CNTR_STAT = common dso_local global i32 0, align 4
@REM_CNTR_STAT = common dso_local global i32 0, align 4
@SETTLING_TIMER_STAT = common dso_local global i32 0, align 4
@SPARE_REG = common dso_local global i32 0, align 4
@SOFT_BYPASS_CONTROL = common dso_local global i32 0, align 4
@SOFT_BYPASS_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iproc_ts_priv*)* @ts_reg_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ts_reg_dump(%struct.iproc_ts_priv* %0) #0 {
  %2 = alloca %struct.iproc_ts_priv*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.iproc_ts_priv* %0, %struct.iproc_ts_priv** %2, align 8
  %4 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %2, align 8
  %5 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %2, align 8
  %10 = load i32, i32* @REGCTL1, align 4
  %11 = call i32 @dbg_reg(%struct.device* %8, %struct.iproc_ts_priv* %9, i32 %10)
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %2, align 8
  %14 = load i32, i32* @REGCTL2, align 4
  %15 = call i32 @dbg_reg(%struct.device* %12, %struct.iproc_ts_priv* %13, i32 %14)
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %2, align 8
  %18 = load i32, i32* @INTERRUPT_THRES, align 4
  %19 = call i32 @dbg_reg(%struct.device* %16, %struct.iproc_ts_priv* %17, i32 %18)
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %2, align 8
  %22 = load i32, i32* @INTERRUPT_MASK, align 4
  %23 = call i32 @dbg_reg(%struct.device* %20, %struct.iproc_ts_priv* %21, i32 %22)
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %2, align 8
  %26 = load i32, i32* @INTERRUPT_STATUS, align 4
  %27 = call i32 @dbg_reg(%struct.device* %24, %struct.iproc_ts_priv* %25, i32 %26)
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %2, align 8
  %30 = load i32, i32* @CONTROLLER_STATUS, align 4
  %31 = call i32 @dbg_reg(%struct.device* %28, %struct.iproc_ts_priv* %29, i32 %30)
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %2, align 8
  %34 = load i32, i32* @FIFO_DATA, align 4
  %35 = call i32 @dbg_reg(%struct.device* %32, %struct.iproc_ts_priv* %33, i32 %34)
  %36 = load %struct.device*, %struct.device** %3, align 8
  %37 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %2, align 8
  %38 = load i32, i32* @ANALOG_CONTROL, align 4
  %39 = call i32 @dbg_reg(%struct.device* %36, %struct.iproc_ts_priv* %37, i32 %38)
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %2, align 8
  %42 = load i32, i32* @AUX_DATA, align 4
  %43 = call i32 @dbg_reg(%struct.device* %40, %struct.iproc_ts_priv* %41, i32 %42)
  %44 = load %struct.device*, %struct.device** %3, align 8
  %45 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %2, align 8
  %46 = load i32, i32* @DEBOUNCE_CNTR_STAT, align 4
  %47 = call i32 @dbg_reg(%struct.device* %44, %struct.iproc_ts_priv* %45, i32 %46)
  %48 = load %struct.device*, %struct.device** %3, align 8
  %49 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %2, align 8
  %50 = load i32, i32* @SCAN_CNTR_STAT, align 4
  %51 = call i32 @dbg_reg(%struct.device* %48, %struct.iproc_ts_priv* %49, i32 %50)
  %52 = load %struct.device*, %struct.device** %3, align 8
  %53 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %2, align 8
  %54 = load i32, i32* @REM_CNTR_STAT, align 4
  %55 = call i32 @dbg_reg(%struct.device* %52, %struct.iproc_ts_priv* %53, i32 %54)
  %56 = load %struct.device*, %struct.device** %3, align 8
  %57 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %2, align 8
  %58 = load i32, i32* @SETTLING_TIMER_STAT, align 4
  %59 = call i32 @dbg_reg(%struct.device* %56, %struct.iproc_ts_priv* %57, i32 %58)
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %2, align 8
  %62 = load i32, i32* @SPARE_REG, align 4
  %63 = call i32 @dbg_reg(%struct.device* %60, %struct.iproc_ts_priv* %61, i32 %62)
  %64 = load %struct.device*, %struct.device** %3, align 8
  %65 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %2, align 8
  %66 = load i32, i32* @SOFT_BYPASS_CONTROL, align 4
  %67 = call i32 @dbg_reg(%struct.device* %64, %struct.iproc_ts_priv* %65, i32 %66)
  %68 = load %struct.device*, %struct.device** %3, align 8
  %69 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %2, align 8
  %70 = load i32, i32* @SOFT_BYPASS_DATA, align 4
  %71 = call i32 @dbg_reg(%struct.device* %68, %struct.iproc_ts_priv* %69, i32 %70)
  ret void
}

declare dso_local i32 @dbg_reg(%struct.device*, %struct.iproc_ts_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
