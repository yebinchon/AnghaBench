; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mxs.c_mxs_i2c_pio_wait_xfer_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mxs.c_mxs_i2c_pio_wait_xfer_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_i2c_dev = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@MXS_I2C_CTRL0 = common dso_local global i64 0, align 8
@MXS_I2C_CTRL0_RUN = common dso_local global i32 0, align 4
@MXS_I2C_CTRL1 = common dso_local global i64 0, align 8
@MXS_I2C_CTRL1_NO_SLAVE_ACK_IRQ = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxs_i2c_dev*)* @mxs_i2c_pio_wait_xfer_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_i2c_pio_wait_xfer_end(%struct.mxs_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxs_i2c_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.mxs_i2c_dev* %0, %struct.mxs_i2c_dev** %3, align 8
  %5 = load i64, i64* @jiffies, align 8
  %6 = call i64 @msecs_to_jiffies(i32 1000)
  %7 = add i64 %5, %6
  store i64 %7, i64* %4, align 8
  br label %8

8:                                                ; preds = %39, %1
  %9 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MXS_I2C_CTRL0, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  %15 = load i32, i32* @MXS_I2C_CTRL0_RUN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %8
  %19 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %3, align 8
  %20 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MXS_I2C_CTRL1, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  %25 = load i32, i32* @MXS_I2C_CTRL1_NO_SLAVE_ACK_IRQ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @ENXIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %42

31:                                               ; preds = %18
  %32 = load i64, i64* @jiffies, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @time_after(i64 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @ETIMEDOUT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %42

39:                                               ; preds = %31
  %40 = call i32 (...) @cond_resched()
  br label %8

41:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %36, %28
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
