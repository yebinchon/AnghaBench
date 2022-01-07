; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5593r.c_ad5593r_read_adc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5593r.c_ad5593r_read_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5592r_state = type { i32 }
%struct.i2c_client = type { i32 }

@AD5593R_MODE_CONF = common dso_local global i32 0, align 4
@AD5592R_REG_ADC_SEQ = common dso_local global i32 0, align 4
@AD5593R_MODE_ADC_READBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5592r_state*, i32, i64*)* @ad5593r_read_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5593r_read_adc(%struct.ad5592r_state* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad5592r_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i64, align 8
  store %struct.ad5592r_state* %0, %struct.ad5592r_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %10 = load %struct.ad5592r_state*, %struct.ad5592r_state** %5, align 8
  %11 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.i2c_client* @to_i2c_client(i32 %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %8, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %15 = load i32, i32* @AD5593R_MODE_CONF, align 4
  %16 = load i32, i32* @AD5592R_REG_ADC_SEQ, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @BIT(i32 %18)
  %20 = call i64 @i2c_smbus_write_word_swapped(%struct.i2c_client* %14, i32 %17, i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i64, i64* %9, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %4, align 4
  br label %38

26:                                               ; preds = %3
  %27 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %28 = load i32, i32* @AD5593R_MODE_ADC_READBACK, align 4
  %29 = call i64 @i2c_smbus_read_word_swapped(%struct.i2c_client* %27, i32 %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i64, i64* %9, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %4, align 4
  br label %38

35:                                               ; preds = %26
  %36 = load i64, i64* %9, align 8
  %37 = load i64*, i64** %7, align 8
  store i64 %36, i64* %37, align 8
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %32, %23
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local i64 @i2c_smbus_write_word_swapped(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @i2c_smbus_read_word_swapped(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
