; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f7.c_stm32f7_i2c_hw_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f7.c_stm32f7_i2c_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32f7_i2c_dev = type { i64, %struct.TYPE_2__, %struct.stm32f7_i2c_timings }
%struct.TYPE_2__ = type { i64 }
%struct.stm32f7_i2c_timings = type { i32, i32, i32, i32, i32 }

@STM32F7_I2C_TIMINGR = common dso_local global i64 0, align 8
@STM32F7_I2C_CR1 = common dso_local global i64 0, align 8
@STM32F7_I2C_CR1_ANFOFF = common dso_local global i32 0, align 4
@STM32F7_I2C_CR1_PE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32f7_i2c_dev*)* @stm32f7_i2c_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32f7_i2c_hw_config(%struct.stm32f7_i2c_dev* %0) #0 {
  %2 = alloca %struct.stm32f7_i2c_dev*, align 8
  %3 = alloca %struct.stm32f7_i2c_timings*, align 8
  %4 = alloca i32, align 4
  store %struct.stm32f7_i2c_dev* %0, %struct.stm32f7_i2c_dev** %2, align 8
  %5 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %2, align 8
  %6 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %5, i32 0, i32 2
  store %struct.stm32f7_i2c_timings* %6, %struct.stm32f7_i2c_timings** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.stm32f7_i2c_timings*, %struct.stm32f7_i2c_timings** %3, align 8
  %8 = getelementptr inbounds %struct.stm32f7_i2c_timings, %struct.stm32f7_i2c_timings* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @STM32F7_I2C_TIMINGR_PRESC(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load %struct.stm32f7_i2c_timings*, %struct.stm32f7_i2c_timings** %3, align 8
  %14 = getelementptr inbounds %struct.stm32f7_i2c_timings, %struct.stm32f7_i2c_timings* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @STM32F7_I2C_TIMINGR_SCLDEL(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load %struct.stm32f7_i2c_timings*, %struct.stm32f7_i2c_timings** %3, align 8
  %20 = getelementptr inbounds %struct.stm32f7_i2c_timings, %struct.stm32f7_i2c_timings* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @STM32F7_I2C_TIMINGR_SDADEL(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load %struct.stm32f7_i2c_timings*, %struct.stm32f7_i2c_timings** %3, align 8
  %26 = getelementptr inbounds %struct.stm32f7_i2c_timings, %struct.stm32f7_i2c_timings* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @STM32F7_I2C_TIMINGR_SCLH(i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load %struct.stm32f7_i2c_timings*, %struct.stm32f7_i2c_timings** %3, align 8
  %32 = getelementptr inbounds %struct.stm32f7_i2c_timings, %struct.stm32f7_i2c_timings* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @STM32F7_I2C_TIMINGR_SCLL(i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %2, align 8
  %39 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @STM32F7_I2C_TIMINGR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel_relaxed(i32 %37, i64 %42)
  %44 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %2, align 8
  %45 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %1
  %50 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %2, align 8
  %51 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @STM32F7_I2C_CR1, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i32, i32* @STM32F7_I2C_CR1_ANFOFF, align 4
  %56 = call i32 @stm32f7_i2c_clr_bits(i64 %54, i32 %55)
  br label %65

57:                                               ; preds = %1
  %58 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %2, align 8
  %59 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @STM32F7_I2C_CR1, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* @STM32F7_I2C_CR1_ANFOFF, align 4
  %64 = call i32 @stm32f7_i2c_set_bits(i64 %62, i32 %63)
  br label %65

65:                                               ; preds = %57, %49
  %66 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %2, align 8
  %67 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @STM32F7_I2C_CR1, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i32, i32* @STM32F7_I2C_CR1_PE, align 4
  %72 = call i32 @stm32f7_i2c_set_bits(i64 %70, i32 %71)
  ret void
}

declare dso_local i32 @STM32F7_I2C_TIMINGR_PRESC(i32) #1

declare dso_local i32 @STM32F7_I2C_TIMINGR_SCLDEL(i32) #1

declare dso_local i32 @STM32F7_I2C_TIMINGR_SDADEL(i32) #1

declare dso_local i32 @STM32F7_I2C_TIMINGR_SCLH(i32) #1

declare dso_local i32 @STM32F7_I2C_TIMINGR_SCLL(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @stm32f7_i2c_clr_bits(i64, i32) #1

declare dso_local i32 @stm32f7_i2c_set_bits(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
