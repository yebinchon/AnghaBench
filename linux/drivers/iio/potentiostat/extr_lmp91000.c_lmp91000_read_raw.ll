; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/potentiostat/extr_lmp91000.c_lmp91000_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/potentiostat/extr_lmp91000.c_lmp91000_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.lmp91000_data = type { i32, i32 }

@lmp91000_temp_lut = common dso_local global i32* null, align 8
@LMP91000_TEMP_BASE = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @lmp91000_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lmp91000_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.lmp91000_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.lmp91000_data* @iio_priv(%struct.iio_dev* %16)
  store %struct.lmp91000_data* %17, %struct.lmp91000_data** %12, align 8
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %98 [
    i64 129, label %19
    i64 130, label %19
    i64 131, label %84
    i64 128, label %91
  ]

19:                                               ; preds = %5, %5
  %20 = load %struct.lmp91000_data*, %struct.lmp91000_data** %12, align 8
  %21 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @iio_channel_start_all_cb(i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %6, align 4
  br label %101

28:                                               ; preds = %19
  %29 = load %struct.lmp91000_data*, %struct.lmp91000_data** %12, align 8
  %30 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %31 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @lmp91000_read(%struct.lmp91000_data* %29, i32 %32, i32* %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.lmp91000_data*, %struct.lmp91000_data** %12, align 8
  %36 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @iio_channel_stop_all_cb(i32 %37)
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %6, align 4
  br label %101

43:                                               ; preds = %28
  %44 = load i64, i64* %11, align 8
  %45 = icmp eq i64 %44, 130
  br i1 %45, label %46, label %82

46:                                               ; preds = %43
  %47 = load %struct.lmp91000_data*, %struct.lmp91000_data** %12, align 8
  %48 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @iio_convert_raw_to_processed(i32 %49, i32 %51, i32* %14, i32 1)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %6, align 4
  br label %101

57:                                               ; preds = %46
  store i32 0, i32* %15, align 4
  br label %58

58:                                               ; preds = %73, %57
  %59 = load i32, i32* %15, align 4
  %60 = load i32*, i32** @lmp91000_temp_lut, align 8
  %61 = call i32 @ARRAY_SIZE(i32* %60)
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load i32*, i32** @lmp91000_temp_lut, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %76

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %15, align 4
  br label %58

76:                                               ; preds = %71, %58
  %77 = load i32, i32* @LMP91000_TEMP_BASE, align 4
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %77, %78
  %80 = mul nsw i32 %79, 1000
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %76, %43
  %83 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %83, i32* %6, align 4
  br label %101

84:                                               ; preds = %5
  %85 = load %struct.lmp91000_data*, %struct.lmp91000_data** %12, align 8
  %86 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @iio_read_channel_offset(i32 %87, i32* %88, i32* %89)
  store i32 %90, i32* %6, align 4
  br label %101

91:                                               ; preds = %5
  %92 = load %struct.lmp91000_data*, %struct.lmp91000_data** %12, align 8
  %93 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %9, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = call i32 @iio_read_channel_scale(i32 %94, i32* %95, i32* %96)
  store i32 %97, i32* %6, align 4
  br label %101

98:                                               ; preds = %5
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %98, %91, %84, %82, %55, %41, %26
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local %struct.lmp91000_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_channel_start_all_cb(i32) #1

declare dso_local i32 @lmp91000_read(%struct.lmp91000_data*, i32, i32*) #1

declare dso_local i32 @iio_channel_stop_all_cb(i32) #1

declare dso_local i32 @iio_convert_raw_to_processed(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @iio_read_channel_offset(i32, i32*, i32*) #1

declare dso_local i32 @iio_read_channel_scale(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
