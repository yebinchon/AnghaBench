; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-master.c_i2c_dw_configure_fifo_master.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-master.c_i2c_dw_configure_fifo_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i32, i32 }

@DW_IC_TX_TL = common dso_local global i32 0, align 4
@DW_IC_RX_TL = common dso_local global i32 0, align 4
@DW_IC_CON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_i2c_dev*)* @i2c_dw_configure_fifo_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_dw_configure_fifo_master(%struct.dw_i2c_dev* %0) #0 {
  %2 = alloca %struct.dw_i2c_dev*, align 8
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %2, align 8
  %3 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %4 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %5 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = sdiv i32 %6, 2
  %8 = load i32, i32* @DW_IC_TX_TL, align 4
  %9 = call i32 @dw_writel(%struct.dw_i2c_dev* %3, i32 %7, i32 %8)
  %10 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %11 = load i32, i32* @DW_IC_RX_TL, align 4
  %12 = call i32 @dw_writel(%struct.dw_i2c_dev* %10, i32 0, i32 %11)
  %13 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %14 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %15 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DW_IC_CON, align 4
  %18 = call i32 @dw_writel(%struct.dw_i2c_dev* %13, i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @dw_writel(%struct.dw_i2c_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
