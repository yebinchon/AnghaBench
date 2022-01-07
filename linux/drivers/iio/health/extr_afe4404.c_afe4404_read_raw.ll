; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/health/extr_afe4404.c_afe4404_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/health/extr_afe4404.c_afe4404_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32 }
%struct.afe4404_data = type { i32*, i32 }

@afe4404_channel_values = common dso_local global i32* null, align 8
@afe4404_channel_leds = common dso_local global i32* null, align 8
@afe4404_channel_offdacs = common dso_local global i32* null, align 8
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @afe4404_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afe4404_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.afe4404_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call %struct.afe4404_data* @iio_priv(%struct.iio_dev* %17)
  store %struct.afe4404_data* %18, %struct.afe4404_data** %12, align 8
  %19 = load i32*, i32** @afe4404_channel_values, align 8
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %21 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load i32*, i32** @afe4404_channel_leds, align 8
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %27 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %14, align 4
  %31 = load i32*, i32** @afe4404_channel_offdacs, align 8
  %32 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %33 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %15, align 4
  %37 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %38 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %95 [
    i32 128, label %40
    i32 129, label %72
  ]

40:                                               ; preds = %5
  %41 = load i64, i64* %11, align 8
  switch i64 %41, label %71 [
    i64 131, label %42
    i64 132, label %55
  ]

42:                                               ; preds = %40
  %43 = load %struct.afe4404_data*, %struct.afe4404_data** %12, align 8
  %44 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @regmap_read(i32 %45, i32 %46, i32* %47)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %16, align 4
  store i32 %52, i32* %6, align 4
  br label %99

53:                                               ; preds = %42
  %54 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %54, i32* %6, align 4
  br label %99

55:                                               ; preds = %40
  %56 = load %struct.afe4404_data*, %struct.afe4404_data** %12, align 8
  %57 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @regmap_field_read(i32 %62, i32* %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %55
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* %6, align 4
  br label %99

69:                                               ; preds = %55
  %70 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %70, i32* %6, align 4
  br label %99

71:                                               ; preds = %40
  br label %96

72:                                               ; preds = %5
  %73 = load i64, i64* %11, align 8
  switch i64 %73, label %94 [
    i64 131, label %74
    i64 130, label %90
  ]

74:                                               ; preds = %72
  %75 = load %struct.afe4404_data*, %struct.afe4404_data** %12, align 8
  %76 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %14, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @regmap_field_read(i32 %81, i32* %82)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %74
  %87 = load i32, i32* %16, align 4
  store i32 %87, i32* %6, align 4
  br label %99

88:                                               ; preds = %74
  %89 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %89, i32* %6, align 4
  br label %99

90:                                               ; preds = %72
  %91 = load i32*, i32** %9, align 8
  store i32 0, i32* %91, align 4
  %92 = load i32*, i32** %10, align 8
  store i32 800000, i32* %92, align 4
  %93 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %93, i32* %6, align 4
  br label %99

94:                                               ; preds = %72
  br label %96

95:                                               ; preds = %5
  br label %96

96:                                               ; preds = %95, %94, %71
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %96, %90, %88, %86, %69, %67, %53, %51
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local %struct.afe4404_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_field_read(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
