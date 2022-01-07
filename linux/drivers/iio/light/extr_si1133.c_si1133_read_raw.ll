; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.si1133_data = type { i64* }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SI1133_ADCSENS_HW_GAIN_MASK = common dso_local global i64 0, align 8
@si1133_int_time_table = common dso_local global i32** null, align 8
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@SI1133_ADCSENS_SCALE_MASK = common dso_local global i64 0, align 8
@SI1133_ADCSENS_SCALE_SHIFT = common dso_local global i64 0, align 8
@SI1133_ADCSENS_HSIG_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @si1133_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si1133_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.si1133_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.si1133_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.si1133_data* %16, %struct.si1133_data** %12, align 8
  %17 = load %struct.si1133_data*, %struct.si1133_data** %12, align 8
  %18 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %11, align 8
  switch i64 %22, label %117 [
    i64 133, label %23
    i64 132, label %40
    i64 134, label %58
    i64 131, label %84
    i64 135, label %102
  ]

23:                                               ; preds = %5
  %24 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %25 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %37 [
    i32 129, label %27
  ]

27:                                               ; preds = %23
  %28 = load %struct.si1133_data*, %struct.si1133_data** %12, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @si1133_get_lux(%struct.si1133_data* %28, i32* %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %6, align 4
  br label %120

35:                                               ; preds = %27
  %36 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %36, i32* %6, align 4
  br label %120

37:                                               ; preds = %23
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %120

40:                                               ; preds = %5
  %41 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %42 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %55 [
    i32 130, label %44
    i32 128, label %44
  ]

44:                                               ; preds = %40, %40
  %45 = load %struct.si1133_data*, %struct.si1133_data** %12, align 8
  %46 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @si1133_measure(%struct.si1133_data* %45, %struct.iio_chan_spec* %46, i32* %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %6, align 4
  br label %120

53:                                               ; preds = %44
  %54 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %54, i32* %6, align 4
  br label %120

55:                                               ; preds = %40
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %120

58:                                               ; preds = %5
  %59 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %60 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %81 [
    i32 130, label %62
    i32 128, label %62
  ]

62:                                               ; preds = %58, %58
  %63 = load i64, i64* @SI1133_ADCSENS_HW_GAIN_MASK, align 8
  %64 = load i64, i64* %13, align 8
  %65 = and i64 %64, %63
  store i64 %65, i64* %13, align 8
  %66 = load i32**, i32*** @si1133_int_time_table, align 8
  %67 = load i64, i64* %13, align 8
  %68 = getelementptr inbounds i32*, i32** %66, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32**, i32*** @si1133_int_time_table, align 8
  %74 = load i64, i64* %13, align 8
  %75 = getelementptr inbounds i32*, i32** %73, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %10, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %80, i32* %6, align 4
  br label %120

81:                                               ; preds = %58
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %120

84:                                               ; preds = %5
  %85 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %86 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %99 [
    i32 130, label %88
    i32 128, label %88
  ]

88:                                               ; preds = %84, %84
  %89 = load i64, i64* @SI1133_ADCSENS_SCALE_MASK, align 8
  %90 = load i64, i64* %13, align 8
  %91 = and i64 %90, %89
  store i64 %91, i64* %13, align 8
  %92 = load i64, i64* @SI1133_ADCSENS_SCALE_SHIFT, align 8
  %93 = load i64, i64* %13, align 8
  %94 = lshr i64 %93, %92
  store i64 %94, i64* %13, align 8
  %95 = load i64, i64* %13, align 8
  %96 = call i32 @BIT(i64 %95)
  %97 = load i32*, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %98, i32* %6, align 4
  br label %120

99:                                               ; preds = %84
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %120

102:                                              ; preds = %5
  %103 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %104 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  switch i32 %105, label %114 [
    i32 130, label %106
    i32 128, label %106
  ]

106:                                              ; preds = %102, %102
  %107 = load i64, i64* @SI1133_ADCSENS_HSIG_SHIFT, align 8
  %108 = load i64, i64* %13, align 8
  %109 = lshr i64 %108, %107
  store i64 %109, i64* %13, align 8
  %110 = load i64, i64* %13, align 8
  %111 = trunc i64 %110 to i32
  %112 = load i32*, i32** %9, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %113, i32* %6, align 4
  br label %120

114:                                              ; preds = %102
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %6, align 4
  br label %120

117:                                              ; preds = %5
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %117, %114, %106, %99, %88, %81, %62, %55, %53, %51, %37, %35, %33
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local %struct.si1133_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @si1133_get_lux(%struct.si1133_data*, i32*) #1

declare dso_local i32 @si1133_measure(%struct.si1133_data*, %struct.iio_chan_spec*, i32*) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
