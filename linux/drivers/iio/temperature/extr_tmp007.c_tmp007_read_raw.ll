; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tmp007.c_tmp007_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tmp007.c_tmp007_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.tmp007_data = type { i32, i32 }

@TMP007_TDIE = common dso_local global i32 0, align 4
@TMP007_TOBJECT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TMP007_TEMP_SHIFT = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@TMP007_CONFIG_CR_MASK = common dso_local global i32 0, align 4
@TMP007_CONFIG_CR_SHIFT = common dso_local global i32 0, align 4
@tmp007_avgs = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @tmp007_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp007_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tmp007_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.tmp007_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.tmp007_data* %16, %struct.tmp007_data** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %81 [
    i64 132, label %18
    i64 130, label %52
    i64 131, label %56
  ]

18:                                               ; preds = %5
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %42 [
    i32 129, label %22
    i32 128, label %33
  ]

22:                                               ; preds = %18
  %23 = load %struct.tmp007_data*, %struct.tmp007_data** %12, align 8
  %24 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TMP007_TDIE, align 4
  %27 = call i32 @i2c_smbus_read_word_swapped(i32 %25, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %6, align 4
  br label %84

32:                                               ; preds = %22
  br label %45

33:                                               ; preds = %18
  %34 = load %struct.tmp007_data*, %struct.tmp007_data** %12, align 8
  %35 = load i32, i32* @TMP007_TOBJECT, align 4
  %36 = call i32 @tmp007_read_temperature(%struct.tmp007_data* %34, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %6, align 4
  br label %84

41:                                               ; preds = %33
  br label %45

42:                                               ; preds = %18
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %84

45:                                               ; preds = %41, %32
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @sign_extend32(i32 %46, i32 15)
  %48 = load i32, i32* @TMP007_TEMP_SHIFT, align 4
  %49 = ashr i32 %47, %48
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %51, i32* %6, align 4
  br label %84

52:                                               ; preds = %5
  %53 = load i32*, i32** %9, align 8
  store i32 31, i32* %53, align 4
  %54 = load i32*, i32** %10, align 8
  store i32 250000, i32* %54, align 4
  %55 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %55, i32* %6, align 4
  br label %84

56:                                               ; preds = %5
  %57 = load %struct.tmp007_data*, %struct.tmp007_data** %12, align 8
  %58 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @TMP007_CONFIG_CR_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @TMP007_CONFIG_CR_SHIFT, align 4
  %63 = ashr i32 %61, %62
  store i32 %63, i32* %14, align 4
  %64 = load i32**, i32*** @tmp007_avgs, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32**, i32*** @tmp007_avgs, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %10, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %80, i32* %6, align 4
  br label %84

81:                                               ; preds = %5
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %81, %56, %52, %45, %42, %39, %30
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local %struct.tmp007_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(i32, i32) #1

declare dso_local i32 @tmp007_read_temperature(%struct.tmp007_data*, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
