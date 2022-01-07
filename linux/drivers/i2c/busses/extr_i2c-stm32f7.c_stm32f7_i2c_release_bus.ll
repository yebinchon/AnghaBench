; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f7.c_stm32f7_i2c_release_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f7.c_stm32f7_i2c_release_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.stm32f7_i2c_dev = type { i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Trying to recover bus\0A\00", align 1
@STM32F7_I2C_CR1 = common dso_local global i64 0, align 8
@STM32F7_I2C_CR1_PE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @stm32f7_i2c_release_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32f7_i2c_release_bus(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.stm32f7_i2c_dev*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %5 = call %struct.stm32f7_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %4)
  store %struct.stm32f7_i2c_dev* %5, %struct.stm32f7_i2c_dev** %3, align 8
  %6 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %3, align 8
  %7 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @dev_info(i32 %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %3, align 8
  %11 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @STM32F7_I2C_CR1, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* @STM32F7_I2C_CR1_PE, align 4
  %16 = call i32 @stm32f7_i2c_clr_bits(i64 %14, i32 %15)
  %17 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %3, align 8
  %18 = call i32 @stm32f7_i2c_hw_config(%struct.stm32f7_i2c_dev* %17)
  ret i32 0
}

declare dso_local %struct.stm32f7_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @stm32f7_i2c_clr_bits(i64, i32) #1

declare dso_local i32 @stm32f7_i2c_hw_config(%struct.stm32f7_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
