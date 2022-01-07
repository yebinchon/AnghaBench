; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl345_core.c_adxl345_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl345_core.c_adxl345_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.adxl345_data = type { i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@adxl345_uscale = common dso_local global i32 0, align 4
@adxl375_uscale = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@ADXL345_REG_BW_RATE = common dso_local global i32 0, align 4
@ADXL345_BASE_RATE_NANO_HZ = common dso_local global i32 0, align 4
@ADXL345_BW_RATE = common dso_local global i32 0, align 4
@NHZ_PER_HZ = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @adxl345_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxl345_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.adxl345_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call %struct.adxl345_data* @iio_priv(%struct.iio_dev* %17)
  store %struct.adxl345_data* %18, %struct.adxl345_data** %12, align 8
  %19 = load i64, i64* %11, align 8
  switch i64 %19, label %94 [
    i64 130, label %20
    i64 128, label %39
    i64 131, label %52
    i64 129, label %71
  ]

20:                                               ; preds = %5
  %21 = load %struct.adxl345_data*, %struct.adxl345_data** %12, align 8
  %22 = getelementptr inbounds %struct.adxl345_data, %struct.adxl345_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %25 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ADXL345_REG_DATA_AXIS(i32 %26)
  %28 = call i32 @regmap_bulk_read(i32 %23, i32 %27, i32* %13, i32 4)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %16, align 4
  store i32 %32, i32* %6, align 4
  br label %97

33:                                               ; preds = %20
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @le16_to_cpu(i32 %34)
  %36 = call i32 @sign_extend32(i32 %35, i32 12)
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %38, i32* %6, align 4
  br label %97

39:                                               ; preds = %5
  %40 = load i32*, i32** %9, align 8
  store i32 0, i32* %40, align 4
  %41 = load %struct.adxl345_data*, %struct.adxl345_data** %12, align 8
  %42 = getelementptr inbounds %struct.adxl345_data, %struct.adxl345_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %50 [
    i32 133, label %44
    i32 132, label %47
  ]

44:                                               ; preds = %39
  %45 = load i32, i32* @adxl345_uscale, align 4
  %46 = load i32*, i32** %10, align 8
  store i32 %45, i32* %46, align 4
  br label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @adxl375_uscale, align 4
  %49 = load i32*, i32** %10, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %39, %47, %44
  %51 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %51, i32* %6, align 4
  br label %97

52:                                               ; preds = %5
  %53 = load %struct.adxl345_data*, %struct.adxl345_data** %12, align 8
  %54 = getelementptr inbounds %struct.adxl345_data, %struct.adxl345_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %57 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ADXL345_REG_OFS_AXIS(i32 %58)
  %60 = call i32 @regmap_read(i32 %55, i32 %59, i32* %15)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i32, i32* %16, align 4
  store i32 %64, i32* %6, align 4
  br label %97

65:                                               ; preds = %52
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @sign_extend32(i32 %66, i32 7)
  %68 = mul nsw i32 %67, 4
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %70, i32* %6, align 4
  br label %97

71:                                               ; preds = %5
  %72 = load %struct.adxl345_data*, %struct.adxl345_data** %12, align 8
  %73 = getelementptr inbounds %struct.adxl345_data, %struct.adxl345_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ADXL345_REG_BW_RATE, align 4
  %76 = call i32 @regmap_read(i32 %74, i32 %75, i32* %15)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* %16, align 4
  store i32 %80, i32* %6, align 4
  br label %97

81:                                               ; preds = %71
  %82 = load i32, i32* @ADXL345_BASE_RATE_NANO_HZ, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* @ADXL345_BW_RATE, align 4
  %85 = and i32 %83, %84
  %86 = shl i32 %82, %85
  %87 = zext i32 %86 to i64
  store i64 %87, i64* %14, align 8
  %88 = load i64, i64* %14, align 8
  %89 = load i32, i32* @NHZ_PER_HZ, align 4
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @div_s64_rem(i64 %88, i32 %89, i32* %90)
  %92 = load i32*, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %93, i32* %6, align 4
  br label %97

94:                                               ; preds = %5
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %94, %81, %79, %65, %63, %50, %33, %31
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local %struct.adxl345_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @ADXL345_REG_DATA_AXIS(i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @ADXL345_REG_OFS_AXIS(i32) #1

declare dso_local i32 @div_s64_rem(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
