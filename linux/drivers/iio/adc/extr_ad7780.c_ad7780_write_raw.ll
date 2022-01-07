; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7780.c_ad7780_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7780.c_ad7780_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ad7780_state = type { i64, i32, i32, i32, i32, %struct.ad7780_chip_info* }
%struct.ad7780_chip_info = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AD7780_GAIN_MIDPOINT = common dso_local global i32 0, align 4
@AD7780_FILTER_MIDPOINT = common dso_local global i32 0, align 4
@ad778x_odr_avail = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @ad7780_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7780_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad7780_state*, align 8
  %13 = alloca %struct.ad7780_chip_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call %struct.ad7780_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.ad7780_state* %18, %struct.ad7780_state** %12, align 8
  %19 = load %struct.ad7780_state*, %struct.ad7780_state** %12, align 8
  %20 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %19, i32 0, i32 5
  %21 = load %struct.ad7780_chip_info*, %struct.ad7780_chip_info** %20, align 8
  store %struct.ad7780_chip_info* %21, %struct.ad7780_chip_info** %13, align 8
  %22 = load %struct.ad7780_chip_info*, %struct.ad7780_chip_info** %13, align 8
  %23 = getelementptr inbounds %struct.ad7780_chip_info, %struct.ad7780_chip_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %94

29:                                               ; preds = %5
  %30 = load i64, i64* %11, align 8
  switch i64 %30, label %92 [
    i64 128, label %31
    i64 129, label %69
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %94

37:                                               ; preds = %31
  %38 = load %struct.ad7780_state*, %struct.ad7780_state** %12, align 8
  %39 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = mul nsw i64 %40, 1000000
  store i64 %41, i64* %14, align 8
  %42 = load %struct.ad7780_chip_info*, %struct.ad7780_chip_info** %13, align 8
  %43 = getelementptr inbounds %struct.ad7780_chip_info, %struct.ad7780_chip_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = shl i32 1, %47
  store i32 %48, i32* %15, align 4
  %49 = load i64, i64* %14, align 8
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @DIV_ROUND_CLOSEST_ULL(i64 %49, i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @DIV_ROUND_CLOSEST(i32 %52, i32 %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load %struct.ad7780_state*, %struct.ad7780_state** %12, align 8
  %57 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* @AD7780_GAIN_MIDPOINT, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %37
  store i32 0, i32* %16, align 4
  br label %63

62:                                               ; preds = %37
  store i32 1, i32* %16, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = load %struct.ad7780_state*, %struct.ad7780_state** %12, align 8
  %65 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @gpiod_set_value(i32 %66, i32 %67)
  br label %93

69:                                               ; preds = %29
  %70 = load i32, i32* %9, align 4
  %71 = mul nsw i32 1000, %70
  %72 = load i32, i32* %10, align 4
  %73 = sdiv i32 %72, 1000
  %74 = add nsw i32 %71, %73
  %75 = load i32, i32* @AD7780_FILTER_MIDPOINT, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  store i32 0, i32* %9, align 4
  br label %79

78:                                               ; preds = %69
  store i32 1, i32* %9, align 4
  br label %79

79:                                               ; preds = %78, %77
  %80 = load i32*, i32** @ad778x_odr_avail, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ad7780_state*, %struct.ad7780_state** %12, align 8
  %86 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.ad7780_state*, %struct.ad7780_state** %12, align 8
  %88 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @gpiod_set_value(i32 %89, i32 %90)
  br label %93

92:                                               ; preds = %29
  br label %93

93:                                               ; preds = %92, %79, %63
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %93, %34, %26
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local %struct.ad7780_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i64, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
