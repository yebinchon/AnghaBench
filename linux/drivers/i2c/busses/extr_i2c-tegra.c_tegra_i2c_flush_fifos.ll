; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra.c_tegra_i2c_flush_fifos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra.c_tegra_i2c_flush_fifos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_i2c_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@I2C_MST_FIFO_CONTROL_TX_FLUSH = common dso_local global i32 0, align 4
@I2C_MST_FIFO_CONTROL_RX_FLUSH = common dso_local global i32 0, align 4
@I2C_MST_FIFO_CONTROL = common dso_local global i32 0, align 4
@I2C_FIFO_CONTROL_TX_FLUSH = common dso_local global i32 0, align 4
@I2C_FIFO_CONTROL_RX_FLUSH = common dso_local global i32 0, align 4
@I2C_FIFO_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"timeout waiting for fifo flush\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_i2c_dev*)* @tegra_i2c_flush_fifos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_i2c_flush_fifos(%struct.tegra_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_i2c_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_i2c_dev* %0, %struct.tegra_i2c_dev** %3, align 8
  %8 = load i64, i64* @jiffies, align 8
  %9 = load i64, i64* @HZ, align 8
  %10 = add i64 %8, %9
  store i64 %10, i64* %4, align 8
  %11 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32, i32* @I2C_MST_FIFO_CONTROL_TX_FLUSH, align 4
  %19 = load i32, i32* @I2C_MST_FIFO_CONTROL_RX_FLUSH, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @I2C_MST_FIFO_CONTROL, align 4
  store i32 %21, i32* %5, align 4
  br label %27

22:                                               ; preds = %1
  %23 = load i32, i32* @I2C_FIFO_CONTROL_TX_FLUSH, align 4
  %24 = load i32, i32* @I2C_FIFO_CONTROL_RX_FLUSH, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @I2C_FIFO_CONTROL, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @i2c_readl(%struct.tegra_i2c_dev* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @i2c_writel(%struct.tegra_i2c_dev* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %57, %27
  %39 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @i2c_readl(%struct.tegra_i2c_dev* %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  %46 = load i64, i64* @jiffies, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @time_after(i64 %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %52 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_warn(i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @ETIMEDOUT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %60

57:                                               ; preds = %45
  %58 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %38

59:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %50
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @i2c_readl(%struct.tegra_i2c_dev*, i32) #1

declare dso_local i32 @i2c_writel(%struct.tegra_i2c_dev*, i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
