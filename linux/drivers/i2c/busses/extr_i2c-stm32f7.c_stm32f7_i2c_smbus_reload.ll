; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f7.c_stm32f7_i2c_smbus_reload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f7.c_stm32f7_i2c_smbus_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32f7_i2c_dev = type { i64, %struct.stm32f7_i2c_msg }
%struct.stm32f7_i2c_msg = type { i32, i32* }

@STM32F7_I2C_CR2 = common dso_local global i64 0, align 8
@STM32F7_I2C_CR2_NBYTES_MASK = common dso_local global i32 0, align 4
@STM32F7_I2C_CR2_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32f7_i2c_dev*)* @stm32f7_i2c_smbus_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32f7_i2c_smbus_reload(%struct.stm32f7_i2c_dev* %0) #0 {
  %2 = alloca %struct.stm32f7_i2c_dev*, align 8
  %3 = alloca %struct.stm32f7_i2c_msg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.stm32f7_i2c_dev* %0, %struct.stm32f7_i2c_dev** %2, align 8
  %6 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %2, align 8
  %7 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %6, i32 0, i32 1
  store %struct.stm32f7_i2c_msg* %7, %struct.stm32f7_i2c_msg** %3, align 8
  %8 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %2, align 8
  %9 = call i32 @stm32f7_i2c_read_rx_data(%struct.stm32f7_i2c_dev* %8)
  %10 = load %struct.stm32f7_i2c_msg*, %struct.stm32f7_i2c_msg** %3, align 8
  %11 = getelementptr inbounds %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_msg* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 -4
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.stm32f7_i2c_msg*, %struct.stm32f7_i2c_msg** %3, align 8
  %17 = getelementptr inbounds %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_msg* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %2, align 8
  %19 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @STM32F7_I2C_CR2, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl_relaxed(i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @STM32F7_I2C_CR2_NBYTES_MASK, align 4
  %25 = load i32, i32* @STM32F7_I2C_CR2_RELOAD, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load %struct.stm32f7_i2c_msg*, %struct.stm32f7_i2c_msg** %3, align 8
  %31 = getelementptr inbounds %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_msg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @STM32F7_I2C_CR2_NBYTES(i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %2, align 8
  %38 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @STM32F7_I2C_CR2, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel_relaxed(i32 %36, i64 %41)
  ret void
}

declare dso_local i32 @stm32f7_i2c_read_rx_data(%struct.stm32f7_i2c_dev*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @STM32F7_I2C_CR2_NBYTES(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
