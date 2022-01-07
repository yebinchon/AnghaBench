; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl345_core.c_adxl345_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl345_core.c_adxl345_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.adxl345_data = type { i32 }

@NHZ_PER_HZ = common dso_local global i32 0, align 4
@ADXL345_BASE_RATE_NANO_HZ = common dso_local global i32 0, align 4
@ADXL345_REG_BW_RATE = common dso_local global i32 0, align 4
@ADXL345_BW_RATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @adxl345_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxl345_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.adxl345_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.adxl345_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.adxl345_data* %15, %struct.adxl345_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %46 [
    i64 129, label %17
    i64 128, label %28
  ]

17:                                               ; preds = %5
  %18 = load %struct.adxl345_data*, %struct.adxl345_data** %12, align 8
  %19 = getelementptr inbounds %struct.adxl345_data, %struct.adxl345_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ADXL345_REG_OFS_AXIS(i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = sdiv i32 %25, 4
  %27 = call i32 @regmap_write(i32 %20, i32 %24, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %49

28:                                               ; preds = %5
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @NHZ_PER_HZ, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* @ADXL345_BASE_RATE_NANO_HZ, align 4
  %35 = call i32 @div_s64(i32 %33, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load %struct.adxl345_data*, %struct.adxl345_data** %12, align 8
  %37 = getelementptr inbounds %struct.adxl345_data, %struct.adxl345_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ADXL345_REG_BW_RATE, align 4
  %40 = load i32, i32* @ADXL345_BW_RATE, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @ilog2(i32 %41)
  %43 = load i32, i32* @ADXL345_BW_RATE, align 4
  %44 = call i32 @clamp_val(i32 %42, i32 0, i32 %43)
  %45 = call i32 @regmap_update_bits(i32 %38, i32 %39, i32 %40, i32 %44)
  store i32 %45, i32* %6, align 4
  br label %49

46:                                               ; preds = %5
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %46, %28, %17
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local %struct.adxl345_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @ADXL345_REG_OFS_AXIS(i32) #1

declare dso_local i32 @div_s64(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
