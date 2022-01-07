; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tmp006.c_tmp006_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tmp006.c_tmp006_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.tmp006_data = type { i32, i32 }

@IIO_CHAN_INFO_SAMP_FREQ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@tmp006_freqs = common dso_local global i32** null, align 8
@TMP006_CONFIG_CR_MASK = common dso_local global i32 0, align 4
@TMP006_CONFIG_CR_SHIFT = common dso_local global i32 0, align 4
@TMP006_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @tmp006_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp006_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.tmp006_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.tmp006_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.tmp006_data* %15, %struct.tmp006_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* @IIO_CHAN_INFO_SAMP_FREQ, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %77

22:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %71, %22
  %24 = load i32, i32* %13, align 4
  %25 = load i32**, i32*** @tmp006_freqs, align 8
  %26 = call i32 @ARRAY_SIZE(i32** %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %74

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  %30 = load i32**, i32*** @tmp006_freqs, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %29, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %28
  %39 = load i32, i32* %10, align 4
  %40 = load i32**, i32*** @tmp006_freqs, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %39, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %38
  %49 = load i32, i32* @TMP006_CONFIG_CR_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.tmp006_data*, %struct.tmp006_data** %12, align 8
  %52 = getelementptr inbounds %struct.tmp006_data, %struct.tmp006_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @TMP006_CONFIG_CR_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = load %struct.tmp006_data*, %struct.tmp006_data** %12, align 8
  %59 = getelementptr inbounds %struct.tmp006_data, %struct.tmp006_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.tmp006_data*, %struct.tmp006_data** %12, align 8
  %63 = getelementptr inbounds %struct.tmp006_data, %struct.tmp006_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @TMP006_CONFIG, align 4
  %66 = load %struct.tmp006_data*, %struct.tmp006_data** %12, align 8
  %67 = getelementptr inbounds %struct.tmp006_data, %struct.tmp006_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @i2c_smbus_write_word_swapped(i32 %64, i32 %65, i32 %68)
  store i32 %69, i32* %6, align 4
  br label %77

70:                                               ; preds = %38, %28
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %13, align 4
  br label %23

74:                                               ; preds = %23
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %74, %48, %19
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local %struct.tmp006_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
