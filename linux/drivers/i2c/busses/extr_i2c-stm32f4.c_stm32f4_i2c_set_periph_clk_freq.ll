; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f4.c_stm32f4_i2c_set_periph_clk_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f4.c_stm32f4_i2c_set_periph_clk_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32f4_i2c_dev = type { i64, i64, i32, i32, i32 }

@HZ_TO_MHZ = common dso_local global i32 0, align 4
@STM32_I2C_SPEED_STANDARD = common dso_local global i64 0, align 8
@STM32F4_I2C_MIN_STANDARD_FREQ = common dso_local global i64 0, align 8
@STM32F4_I2C_MAX_FREQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"bad parent clk freq for standard mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@STM32F4_I2C_MIN_FAST_FREQ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"bad parent clk freq for fast mode\0A\00", align 1
@STM32F4_I2C_CR2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32f4_i2c_dev*)* @stm32f4_i2c_set_periph_clk_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32f4_i2c_set_periph_clk_freq(%struct.stm32f4_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32f4_i2c_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.stm32f4_i2c_dev* %0, %struct.stm32f4_i2c_dev** %3, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %3, align 8
  %7 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @clk_get_rate(i32 %8)
  %10 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %3, align 8
  %11 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %3, align 8
  %13 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @HZ_TO_MHZ, align 4
  %16 = call i64 @DIV_ROUND_UP(i32 %14, i32 %15)
  store i64 %16, i64* %4, align 8
  %17 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %3, align 8
  %18 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @STM32_I2C_SPEED_STANDARD, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %1
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @STM32F4_I2C_MIN_STANDARD_FREQ, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @STM32F4_I2C_MAX_FREQ, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26, %22
  %31 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %3, align 8
  %32 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %66

37:                                               ; preds = %26
  br label %54

38:                                               ; preds = %1
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @STM32F4_I2C_MIN_FAST_FREQ, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @STM32F4_I2C_MAX_FREQ, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42, %38
  %47 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %3, align 8
  %48 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %66

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %37
  %55 = load i64, i64* %4, align 8
  %56 = call i64 @STM32F4_I2C_CR2_FREQ(i64 %55)
  %57 = load i64, i64* %5, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %5, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %3, align 8
  %61 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @STM32F4_I2C_CR2, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel_relaxed(i64 %59, i64 %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %54, %46, %30
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @STM32F4_I2C_CR2_FREQ(i64) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
