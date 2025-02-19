; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-slave.c_i2c_dw_configure_fifo_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-slave.c_i2c_dw_configure_fifo_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i32 }

@DW_IC_TX_TL = common dso_local global i32 0, align 4
@DW_IC_RX_TL = common dso_local global i32 0, align 4
@DW_IC_CON = common dso_local global i32 0, align 4
@DW_IC_INTR_SLAVE_MASK = common dso_local global i32 0, align 4
@DW_IC_INTR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_i2c_dev*)* @i2c_dw_configure_fifo_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_dw_configure_fifo_slave(%struct.dw_i2c_dev* %0) #0 {
  %2 = alloca %struct.dw_i2c_dev*, align 8
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %2, align 8
  %3 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %4 = load i32, i32* @DW_IC_TX_TL, align 4
  %5 = call i32 @dw_writel(%struct.dw_i2c_dev* %3, i32 0, i32 %4)
  %6 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %7 = load i32, i32* @DW_IC_RX_TL, align 4
  %8 = call i32 @dw_writel(%struct.dw_i2c_dev* %6, i32 0, i32 %7)
  %9 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %10 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %11 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DW_IC_CON, align 4
  %14 = call i32 @dw_writel(%struct.dw_i2c_dev* %9, i32 %12, i32 %13)
  %15 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %16 = load i32, i32* @DW_IC_INTR_SLAVE_MASK, align 4
  %17 = load i32, i32* @DW_IC_INTR_MASK, align 4
  %18 = call i32 @dw_writel(%struct.dw_i2c_dev* %15, i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @dw_writel(%struct.dw_i2c_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
