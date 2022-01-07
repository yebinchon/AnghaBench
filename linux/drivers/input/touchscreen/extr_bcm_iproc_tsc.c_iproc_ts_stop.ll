; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_bcm_iproc_tsc.c_iproc_ts_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_bcm_iproc_tsc.c_iproc_ts_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.iproc_ts_priv = type { i32, i32 }

@TS_PEN_INTR_MASK = common dso_local global i32 0, align 4
@TS_FIFO_INTR_MASK = common dso_local global i32 0, align 4
@INTERRUPT_MASK = common dso_local global i32 0, align 4
@TS_CONTROLLER_PWR_TS = common dso_local global i32 0, align 4
@REGCTL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @iproc_ts_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iproc_ts_stop(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iproc_ts_priv*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %6 = call %struct.iproc_ts_priv* @input_get_drvdata(%struct.input_dev* %5)
  store %struct.iproc_ts_priv* %6, %struct.iproc_ts_priv** %4, align 8
  %7 = load i32, i32* @TS_PEN_INTR_MASK, align 4
  %8 = load i32, i32* @TS_FIFO_INTR_MASK, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %4, align 8
  %11 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @INTERRUPT_MASK, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 %14, i32 0)
  %16 = load i32, i32* @TS_CONTROLLER_PWR_TS, align 4
  store i32 %16, i32* %3, align 4
  %17 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %4, align 8
  %18 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @REGCTL2, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %4, align 8
  %25 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clk_disable(i32 %26)
  ret void
}

declare dso_local %struct.iproc_ts_priv* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
