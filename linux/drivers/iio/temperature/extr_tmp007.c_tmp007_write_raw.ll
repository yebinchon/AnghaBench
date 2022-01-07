; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tmp007.c_tmp007_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tmp007.c_tmp007_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.tmp007_data = type { i32, i32 }

@IIO_CHAN_INFO_SAMP_FREQ = common dso_local global i64 0, align 8
@tmp007_avgs = common dso_local global i32** null, align 8
@TMP007_CONFIG_CR_MASK = common dso_local global i32 0, align 4
@TMP007_CONFIG_CR_SHIFT = common dso_local global i32 0, align 4
@TMP007_CONFIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @tmp007_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp007_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.tmp007_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.tmp007_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.tmp007_data* %16, %struct.tmp007_data** %12, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* @IIO_CHAN_INFO_SAMP_FREQ, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %71

20:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %67, %20
  %22 = load i32, i32* %13, align 4
  %23 = load i32**, i32*** @tmp007_avgs, align 8
  %24 = call i32 @ARRAY_SIZE(i32** %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %70

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = load i32**, i32*** @tmp007_avgs, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %27, %34
  br i1 %35, label %36, label %66

36:                                               ; preds = %26
  %37 = load i32, i32* %10, align 4
  %38 = load i32**, i32*** @tmp007_avgs, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %37, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %36
  %47 = load %struct.tmp007_data*, %struct.tmp007_data** %12, align 8
  %48 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TMP007_CONFIG_CR_MASK, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @TMP007_CONFIG_CR_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* %14, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %14, align 4
  %58 = load %struct.tmp007_data*, %struct.tmp007_data** %12, align 8
  %59 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @TMP007_CONFIG, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load %struct.tmp007_data*, %struct.tmp007_data** %12, align 8
  %64 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = call i32 @i2c_smbus_write_word_swapped(i32 %60, i32 %61, i32 %62)
  store i32 %65, i32* %6, align 4
  br label %74

66:                                               ; preds = %36, %26
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %21

70:                                               ; preds = %21
  br label %71

71:                                               ; preds = %70, %5
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %71, %46
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local %struct.tmp007_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
