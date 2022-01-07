; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp180_read_adc_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp180_read_adc_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmp280_data = type { i32 }

@BMP180_MEAS_TEMP = common dso_local global i32 0, align 4
@BMP180_REG_OUT_MSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmp280_data*, i32*)* @bmp180_read_adc_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp180_read_adc_temp(%struct.bmp280_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bmp280_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.bmp280_data* %0, %struct.bmp280_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.bmp280_data*, %struct.bmp280_data** %4, align 8
  %9 = load i32, i32* @BMP180_MEAS_TEMP, align 4
  %10 = call i32 @bmp180_measure(%struct.bmp280_data* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %30

15:                                               ; preds = %2
  %16 = load %struct.bmp280_data*, %struct.bmp280_data** %4, align 8
  %17 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BMP180_REG_OUT_MSB, align 4
  %20 = bitcast i64* %7 to i32*
  %21 = call i32 @regmap_bulk_read(i32 %18, i32 %19, i32* %20, i32 2)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %30

26:                                               ; preds = %15
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @be16_to_cpu(i64 %27)
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %24, %13
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @bmp180_measure(%struct.bmp280_data*, i32) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @be16_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
