; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mxs.c_mxs_i2c_pio_trigger_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mxs.c_mxs_i2c_pio_trigger_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_i2c_dev = type { i64 }

@MXS_I2C_CTRL0 = common dso_local global i64 0, align 8
@MXS_I2C_CTRL0_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxs_i2c_dev*, i32)* @mxs_i2c_pio_trigger_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_i2c_pio_trigger_cmd(%struct.mxs_i2c_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mxs_i2c_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mxs_i2c_dev* %0, %struct.mxs_i2c_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MXS_I2C_CTRL0, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 %6, i64 %11)
  %13 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MXS_I2C_CTRL0, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @MXS_I2C_CTRL0_RUN, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MXS_I2C_CTRL0, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
