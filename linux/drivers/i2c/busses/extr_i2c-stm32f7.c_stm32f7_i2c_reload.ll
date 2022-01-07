; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f7.c_stm32f7_i2c_reload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f7.c_stm32f7_i2c_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32f7_i2c_dev = type { i64, i64, %struct.stm32f7_i2c_msg }
%struct.stm32f7_i2c_msg = type { i64 }

@STM32F7_I2C_MAX_LEN = common dso_local global i64 0, align 8
@STM32F7_I2C_CR2 = common dso_local global i64 0, align 8
@STM32F7_I2C_CR2_NBYTES_MASK = common dso_local global i32 0, align 4
@STM32F7_I2C_CR2_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32f7_i2c_dev*)* @stm32f7_i2c_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32f7_i2c_reload(%struct.stm32f7_i2c_dev* %0) #0 {
  %2 = alloca %struct.stm32f7_i2c_dev*, align 8
  %3 = alloca %struct.stm32f7_i2c_msg*, align 8
  %4 = alloca i32, align 4
  store %struct.stm32f7_i2c_dev* %0, %struct.stm32f7_i2c_dev** %2, align 8
  %5 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %2, align 8
  %6 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %5, i32 0, i32 2
  store %struct.stm32f7_i2c_msg* %6, %struct.stm32f7_i2c_msg** %3, align 8
  %7 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %2, align 8
  %8 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i64, i64* @STM32F7_I2C_MAX_LEN, align 8
  %13 = load %struct.stm32f7_i2c_msg*, %struct.stm32f7_i2c_msg** %3, align 8
  %14 = getelementptr inbounds %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_msg* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %15, %12
  store i64 %16, i64* %14, align 8
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %2, align 8
  %19 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @STM32F7_I2C_CR2, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl_relaxed(i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @STM32F7_I2C_CR2_NBYTES_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load %struct.stm32f7_i2c_msg*, %struct.stm32f7_i2c_msg** %3, align 8
  %29 = getelementptr inbounds %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_msg* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @STM32F7_I2C_MAX_LEN, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %17
  %34 = load i64, i64* @STM32F7_I2C_MAX_LEN, align 8
  %35 = call i32 @STM32F7_I2C_CR2_NBYTES(i64 %34)
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %49

38:                                               ; preds = %17
  %39 = load i32, i32* @STM32F7_I2C_CR2_RELOAD, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %4, align 4
  %43 = load %struct.stm32f7_i2c_msg*, %struct.stm32f7_i2c_msg** %3, align 8
  %44 = getelementptr inbounds %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_msg* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @STM32F7_I2C_CR2_NBYTES(i64 %45)
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %38, %33
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %2, align 8
  %52 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @STM32F7_I2C_CR2, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel_relaxed(i32 %50, i64 %55)
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @STM32F7_I2C_CR2_NBYTES(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
