; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mxs.c_mxs_i2c_pio_check_error_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mxs.c_mxs_i2c_pio_check_error_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_i2c_dev = type { i32, i64 }

@MXS_I2C_CTRL1_CLR = common dso_local global i64 0, align 8
@MXS_I2C_IRQ_MASK = common dso_local global i32 0, align 4
@MXS_I2C_CTRL1_NO_SLAVE_ACK_IRQ = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MXS_I2C_CTRL1_EARLY_TERM_IRQ = common dso_local global i32 0, align 4
@MXS_I2C_CTRL1_MASTER_LOSS_IRQ = common dso_local global i32 0, align 4
@MXS_I2C_CTRL1_SLAVE_STOP_IRQ = common dso_local global i32 0, align 4
@MXS_I2C_CTRL1_SLAVE_IRQ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxs_i2c_dev*)* @mxs_i2c_pio_check_error_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_i2c_pio_check_error_state(%struct.mxs_i2c_dev* %0) #0 {
  %2 = alloca %struct.mxs_i2c_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.mxs_i2c_dev* %0, %struct.mxs_i2c_dev** %2, align 8
  %4 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MXS_I2C_CTRL1_CLR, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  %10 = load i32, i32* @MXS_I2C_IRQ_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @MXS_I2C_CTRL1_NO_SLAVE_ACK_IRQ, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  %19 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %2, align 8
  %20 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  br label %38

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @MXS_I2C_CTRL1_EARLY_TERM_IRQ, align 4
  %24 = load i32, i32* @MXS_I2C_CTRL1_MASTER_LOSS_IRQ, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MXS_I2C_CTRL1_SLAVE_STOP_IRQ, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MXS_I2C_CTRL1_SLAVE_IRQ, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %22, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  %35 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %2, align 8
  %36 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %32, %21
  br label %38

38:                                               ; preds = %37, %16
  %39 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %2, align 8
  %40 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  ret i32 %41
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
