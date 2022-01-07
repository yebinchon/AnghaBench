; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-platdrv.c_i2c_dw_configure_master.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-platdrv.c_i2c_dw_configure_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i32, i32, i32, %struct.i2c_timings }
%struct.i2c_timings = type { i32 }

@I2C_FUNC_10BIT_ADDR = common dso_local global i32 0, align 4
@DW_IC_DEFAULT_FUNCTIONALITY = common dso_local global i32 0, align 4
@DW_IC_CON_MASTER = common dso_local global i32 0, align 4
@DW_IC_CON_SLAVE_DISABLE = common dso_local global i32 0, align 4
@DW_IC_CON_RESTART_EN = common dso_local global i32 0, align 4
@DW_IC_MASTER = common dso_local global i32 0, align 4
@DW_IC_CON_SPEED_STD = common dso_local global i32 0, align 4
@DW_IC_CON_SPEED_HIGH = common dso_local global i32 0, align 4
@DW_IC_CON_SPEED_FAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_i2c_dev*)* @i2c_dw_configure_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_dw_configure_master(%struct.dw_i2c_dev* %0) #0 {
  %2 = alloca %struct.dw_i2c_dev*, align 8
  %3 = alloca %struct.i2c_timings*, align 8
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %2, align 8
  %4 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %5 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %4, i32 0, i32 3
  store %struct.i2c_timings* %5, %struct.i2c_timings** %3, align 8
  %6 = load i32, i32* @I2C_FUNC_10BIT_ADDR, align 4
  %7 = load i32, i32* @DW_IC_DEFAULT_FUNCTIONALITY, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %10 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @DW_IC_CON_MASTER, align 4
  %12 = load i32, i32* @DW_IC_CON_SLAVE_DISABLE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @DW_IC_CON_RESTART_EN, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %17 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @DW_IC_MASTER, align 4
  %19 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %20 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.i2c_timings*, %struct.i2c_timings** %3, align 8
  %22 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %36 [
    i32 100000, label %24
    i32 3400000, label %30
  ]

24:                                               ; preds = %1
  %25 = load i32, i32* @DW_IC_CON_SPEED_STD, align 4
  %26 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %27 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %42

30:                                               ; preds = %1
  %31 = load i32, i32* @DW_IC_CON_SPEED_HIGH, align 4
  %32 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %33 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %42

36:                                               ; preds = %1
  %37 = load i32, i32* @DW_IC_CON_SPEED_FAST, align 4
  %38 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %39 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %30, %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
