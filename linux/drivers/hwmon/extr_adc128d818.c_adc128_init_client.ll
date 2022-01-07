; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adc128d818.c_adc128_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adc128d818.c_adc128_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adc128_data = type { i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ADC128_REG_CONFIG = common dso_local global i32 0, align 4
@ADC128_REG_CONFIG_ADV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adc128_data*)* @adc128_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc128_init_client(%struct.adc128_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adc128_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.adc128_data* %0, %struct.adc128_data** %3, align 8
  %6 = load %struct.adc128_data*, %struct.adc128_data** %3, align 8
  %7 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %6, i32 0, i32 2
  %8 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = load i32, i32* @ADC128_REG_CONFIG, align 4
  %11 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %9, i32 %10, i32 128)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %57

16:                                               ; preds = %1
  %17 = load %struct.adc128_data*, %struct.adc128_data** %3, align 8
  %18 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load i32, i32* @ADC128_REG_CONFIG_ADV, align 4
  %24 = load %struct.adc128_data*, %struct.adc128_data** %3, align 8
  %25 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 %26, 1
  %28 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %22, i32 %23, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %57

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33, %16
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load i32, i32* @ADC128_REG_CONFIG, align 4
  %37 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %35, i32 %36, i32 1)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %57

42:                                               ; preds = %34
  %43 = load %struct.adc128_data*, %struct.adc128_data** %3, align 8
  %44 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = load i32, i32* @ADC128_REG_CONFIG_ADV, align 4
  %50 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %48, i32 %49, i32 1)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %57

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %42
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %53, %40, %31, %14
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
