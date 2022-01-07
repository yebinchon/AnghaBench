; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/health/extr_max30102.c_max30102_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/health/extr_max30102.c_max30102_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max30102_data = type { i32 }

@MAX30102_REG_SPO2_CONFIG = common dso_local global i32 0, align 4
@MAX30102_REG_SPO2_CONFIG_ADC_4096_STEPS = common dso_local global i32 0, align 4
@MAX30102_REG_SPO2_CONFIG_ADC_MASK_SHIFT = common dso_local global i32 0, align 4
@MAX30102_REG_SPO2_CONFIG_SR_400HZ = common dso_local global i32 0, align 4
@MAX30102_REG_SPO2_CONFIG_SR_MASK_SHIFT = common dso_local global i32 0, align 4
@MAX30102_REG_SPO2_CONFIG_PULSE_411_US = common dso_local global i32 0, align 4
@MAX30102_REG_FIFO_CONFIG = common dso_local global i32 0, align 4
@MAX30102_REG_FIFO_CONFIG_AVG_4SAMPLES = common dso_local global i32 0, align 4
@MAX30102_REG_FIFO_CONFIG_AVG_SHIFT = common dso_local global i32 0, align 4
@MAX30102_REG_FIFO_CONFIG_AFULL = common dso_local global i32 0, align 4
@MAX30102_REG_INT_ENABLE = common dso_local global i32 0, align 4
@MAX30102_REG_INT_ENABLE_MASK = common dso_local global i32 0, align 4
@MAX30102_REG_INT_ENABLE_FIFO_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max30102_data*)* @max30102_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max30102_chip_init(%struct.max30102_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max30102_data*, align 8
  %4 = alloca i32, align 4
  store %struct.max30102_data* %0, %struct.max30102_data** %3, align 8
  %5 = load %struct.max30102_data*, %struct.max30102_data** %3, align 8
  %6 = call i32 @max30102_led_init(%struct.max30102_data* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %53

11:                                               ; preds = %1
  %12 = load %struct.max30102_data*, %struct.max30102_data** %3, align 8
  %13 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MAX30102_REG_SPO2_CONFIG, align 4
  %16 = load i32, i32* @MAX30102_REG_SPO2_CONFIG_ADC_4096_STEPS, align 4
  %17 = load i32, i32* @MAX30102_REG_SPO2_CONFIG_ADC_MASK_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* @MAX30102_REG_SPO2_CONFIG_SR_400HZ, align 4
  %20 = load i32, i32* @MAX30102_REG_SPO2_CONFIG_SR_MASK_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %18, %21
  %23 = load i32, i32* @MAX30102_REG_SPO2_CONFIG_PULSE_411_US, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @regmap_write(i32 %14, i32 %15, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %11
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %53

30:                                               ; preds = %11
  %31 = load %struct.max30102_data*, %struct.max30102_data** %3, align 8
  %32 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MAX30102_REG_FIFO_CONFIG, align 4
  %35 = load i32, i32* @MAX30102_REG_FIFO_CONFIG_AVG_4SAMPLES, align 4
  %36 = load i32, i32* @MAX30102_REG_FIFO_CONFIG_AVG_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* @MAX30102_REG_FIFO_CONFIG_AFULL, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @regmap_write(i32 %33, i32 %34, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %53

45:                                               ; preds = %30
  %46 = load %struct.max30102_data*, %struct.max30102_data** %3, align 8
  %47 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MAX30102_REG_INT_ENABLE, align 4
  %50 = load i32, i32* @MAX30102_REG_INT_ENABLE_MASK, align 4
  %51 = load i32, i32* @MAX30102_REG_INT_ENABLE_FIFO_EN, align 4
  %52 = call i32 @regmap_update_bits(i32 %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %45, %43, %28, %9
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @max30102_led_init(%struct.max30102_data*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
