; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f4.c_stm32f4_i2c_handle_rx_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f4.c_stm32f4_i2c_handle_rx_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32f4_i2c_dev = type { i64, %struct.stm32f4_i2c_msg }
%struct.stm32f4_i2c_msg = type { i32, i32 }

@STM32F4_I2C_SR2 = common dso_local global i64 0, align 8
@STM32F4_I2C_CR1 = common dso_local global i64 0, align 8
@STM32F4_I2C_CR1_ACK = common dso_local global i32 0, align 4
@STM32F4_I2C_CR1_POS = common dso_local global i32 0, align 4
@STM32F4_I2C_CR1_STOP = common dso_local global i32 0, align 4
@STM32F4_I2C_CR1_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32f4_i2c_dev*)* @stm32f4_i2c_handle_rx_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32f4_i2c_handle_rx_addr(%struct.stm32f4_i2c_dev* %0) #0 {
  %2 = alloca %struct.stm32f4_i2c_dev*, align 8
  %3 = alloca %struct.stm32f4_i2c_msg*, align 8
  %4 = alloca i32, align 4
  store %struct.stm32f4_i2c_dev* %0, %struct.stm32f4_i2c_dev** %2, align 8
  %5 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %2, align 8
  %6 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %5, i32 0, i32 1
  store %struct.stm32f4_i2c_msg* %6, %struct.stm32f4_i2c_msg** %3, align 8
  %7 = load %struct.stm32f4_i2c_msg*, %struct.stm32f4_i2c_msg** %3, align 8
  %8 = getelementptr inbounds %struct.stm32f4_i2c_msg, %struct.stm32f4_i2c_msg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %92 [
    i32 0, label %10
    i32 1, label %19
    i32 2, label %65
  ]

10:                                               ; preds = %1
  %11 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %2, align 8
  %12 = call i32 @stm32f4_i2c_terminate_xfer(%struct.stm32f4_i2c_dev* %11)
  %13 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %2, align 8
  %14 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @STM32F4_I2C_SR2, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl_relaxed(i64 %17)
  br label %119

19:                                               ; preds = %1
  %20 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %2, align 8
  %21 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @STM32F4_I2C_CR1, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl_relaxed(i64 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @STM32F4_I2C_CR1_ACK, align 4
  %27 = load i32, i32* @STM32F4_I2C_CR1_POS, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %2, align 8
  %34 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @STM32F4_I2C_CR1, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel_relaxed(i32 %32, i64 %37)
  %39 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %2, align 8
  %40 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @STM32F4_I2C_SR2, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl_relaxed(i64 %43)
  %45 = load %struct.stm32f4_i2c_msg*, %struct.stm32f4_i2c_msg** %3, align 8
  %46 = getelementptr inbounds %struct.stm32f4_i2c_msg, %struct.stm32f4_i2c_msg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %19
  %50 = load i32, i32* @STM32F4_I2C_CR1_STOP, align 4
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %57

53:                                               ; preds = %19
  %54 = load i32, i32* @STM32F4_I2C_CR1_START, align 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %2, align 8
  %60 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @STM32F4_I2C_CR1, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel_relaxed(i32 %58, i64 %63)
  br label %119

65:                                               ; preds = %1
  %66 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %2, align 8
  %67 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @STM32F4_I2C_CR1, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @readl_relaxed(i64 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* @STM32F4_I2C_CR1_ACK, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* @STM32F4_I2C_CR1_POS, align 4
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %2, align 8
  %81 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @STM32F4_I2C_CR1, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel_relaxed(i32 %79, i64 %84)
  %86 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %2, align 8
  %87 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @STM32F4_I2C_SR2, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @readl_relaxed(i64 %90)
  br label %119

92:                                               ; preds = %1
  %93 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %2, align 8
  %94 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @STM32F4_I2C_CR1, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @readl_relaxed(i64 %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* @STM32F4_I2C_CR1_ACK, align 4
  %100 = load i32, i32* %4, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* @STM32F4_I2C_CR1_POS, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %4, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %2, align 8
  %108 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @STM32F4_I2C_CR1, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel_relaxed(i32 %106, i64 %111)
  %113 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %2, align 8
  %114 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @STM32F4_I2C_SR2, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @readl_relaxed(i64 %117)
  br label %119

119:                                              ; preds = %92, %65, %57, %10
  ret void
}

declare dso_local i32 @stm32f4_i2c_terminate_xfer(%struct.stm32f4_i2c_dev*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
