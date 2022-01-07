; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bma220_spi.c_bma220_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bma220_spi.c_bma220_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.bma220_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BMA220_DATA_SHIFT = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@BMA220_REG_RANGE = common dso_local global i32 0, align 4
@BMA220_RANGE_MASK = common dso_local global i32 0, align 4
@bma220_scale_table = common dso_local global i32** null, align 8
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @bma220_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bma220_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.bma220_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.bma220_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.bma220_data* %16, %struct.bma220_data** %14, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %68 [
    i64 129, label %18
    i64 128, label %38
  ]

18:                                               ; preds = %5
  %19 = load %struct.bma220_data*, %struct.bma220_data** %14, align 8
  %20 = getelementptr inbounds %struct.bma220_data, %struct.bma220_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bma220_read_reg(i32 %21, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %71

31:                                               ; preds = %18
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @BMA220_DATA_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = call i32 @sign_extend32(i32 %34, i32 5)
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %37, i32* %6, align 4
  br label %71

38:                                               ; preds = %5
  %39 = load %struct.bma220_data*, %struct.bma220_data** %14, align 8
  %40 = getelementptr inbounds %struct.bma220_data, %struct.bma220_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BMA220_REG_RANGE, align 4
  %43 = call i32 @bma220_read_reg(i32 %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %6, align 4
  br label %71

48:                                               ; preds = %38
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @BMA220_RANGE_MASK, align 4
  %51 = and i32 %49, %50
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %13, align 8
  %53 = load i32**, i32*** @bma220_scale_table, align 8
  %54 = load i64, i64* %13, align 8
  %55 = getelementptr inbounds i32*, i32** %53, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32**, i32*** @bma220_scale_table, align 8
  %61 = load i64, i64* %13, align 8
  %62 = getelementptr inbounds i32*, i32** %60, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %10, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %67, i32* %6, align 4
  br label %71

68:                                               ; preds = %5
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %48, %46, %31, %28
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.bma220_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @bma220_read_reg(i32, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
