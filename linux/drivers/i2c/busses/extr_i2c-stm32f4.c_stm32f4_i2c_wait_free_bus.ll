; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f4.c_stm32f4_i2c_wait_free_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f4.c_stm32f4_i2c_wait_free_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32f4_i2c_dev = type { i32, i64 }

@STM32F4_I2C_SR2 = common dso_local global i64 0, align 8
@STM32F4_I2C_SR2_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"bus not free\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32f4_i2c_dev*)* @stm32f4_i2c_wait_free_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32f4_i2c_wait_free_bus(%struct.stm32f4_i2c_dev* %0) #0 {
  %2 = alloca %struct.stm32f4_i2c_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.stm32f4_i2c_dev* %0, %struct.stm32f4_i2c_dev** %2, align 8
  %5 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %2, align 8
  %6 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @STM32F4_I2C_SR2, align 8
  %9 = add nsw i64 %7, %8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @STM32F4_I2C_SR2_BUSY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @readl_relaxed_poll_timeout(i64 %9, i32 %10, i32 %16, i32 10, i32 1000)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %2, align 8
  %22 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %20, %1
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @readl_relaxed_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
