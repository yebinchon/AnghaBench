; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mxs.c_mxs_i2c_pio_trigger_write_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mxs.c_mxs_i2c_pio_trigger_write_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_i2c_dev = type { i64, i64 }

@MXS_I2C_CTRL0 = common dso_local global i64 0, align 8
@MXS_I2C_V1 = common dso_local global i64 0, align 8
@MXS_I2C_CTRL0_PIO_MODE = common dso_local global i32 0, align 4
@MXS_I2C_CTRL0_SET = common dso_local global i64 0, align 8
@MXS_I2C_CTRL0_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxs_i2c_dev*, i32, i32)* @mxs_i2c_pio_trigger_write_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_i2c_pio_trigger_write_cmd(%struct.mxs_i2c_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mxs_i2c_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mxs_i2c_dev* %0, %struct.mxs_i2c_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %4, align 8
  %9 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MXS_I2C_CTRL0, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 %7, i64 %12)
  %14 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %4, align 8
  %15 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MXS_I2C_V1, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load i32, i32* @MXS_I2C_CTRL0_PIO_MODE, align 4
  %21 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %4, align 8
  %22 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MXS_I2C_CTRL0_SET, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  br label %27

27:                                               ; preds = %19, %3
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %4, align 8
  %30 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %4, align 8
  %33 = call i64 @MXS_I2C_DATA(%struct.mxs_i2c_dev* %32)
  %34 = add nsw i64 %31, %33
  %35 = call i32 @writel(i32 %28, i64 %34)
  %36 = load i32, i32* @MXS_I2C_CTRL0_RUN, align 4
  %37 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %4, align 8
  %38 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MXS_I2C_CTRL0_SET, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @MXS_I2C_DATA(%struct.mxs_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
