; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f4.c_stm32f4_i2c_hw_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f4.c_stm32f4_i2c_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32f4_i2c_dev = type { i64 }

@STM32F4_I2C_CR1_PE = common dso_local global i32 0, align 4
@STM32F4_I2C_CR1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32f4_i2c_dev*)* @stm32f4_i2c_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32f4_i2c_hw_config(%struct.stm32f4_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32f4_i2c_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.stm32f4_i2c_dev* %0, %struct.stm32f4_i2c_dev** %3, align 8
  %5 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %3, align 8
  %6 = call i32 @stm32f4_i2c_set_periph_clk_freq(%struct.stm32f4_i2c_dev* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %3, align 8
  %13 = call i32 @stm32f4_i2c_set_rise_time(%struct.stm32f4_i2c_dev* %12)
  %14 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %3, align 8
  %15 = call i32 @stm32f4_i2c_set_speed_mode(%struct.stm32f4_i2c_dev* %14)
  %16 = load i32, i32* @STM32F4_I2C_CR1_PE, align 4
  %17 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %3, align 8
  %18 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @STM32F4_I2C_CR1, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel_relaxed(i32 %16, i64 %21)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %11, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @stm32f4_i2c_set_periph_clk_freq(%struct.stm32f4_i2c_dev*) #1

declare dso_local i32 @stm32f4_i2c_set_rise_time(%struct.stm32f4_i2c_dev*) #1

declare dso_local i32 @stm32f4_i2c_set_speed_mode(%struct.stm32f4_i2c_dev*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
