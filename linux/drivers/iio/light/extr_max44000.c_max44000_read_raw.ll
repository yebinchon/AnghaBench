; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_max44000.c_max44000_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_max44000.c_max44000_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.max44000_data = type { i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@MAX44000_REG_PRX_DATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX44000_ALSPGA_MAX_SHIFT = common dso_local global i32 0, align 4
@MAX44000_ALS_TO_LUX_DEFAULT_FRACTION_LOG2 = common dso_local global i32 0, align 4
@max44000_alspga_shift = common dso_local global i32* null, align 8
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@max44000_int_time_avail_ns_array = common dso_local global i32* null, align 8
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @max44000_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max44000_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.max44000_data*, align 8
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
  %18 = call %struct.max44000_data* @iio_priv(%struct.iio_dev* %17)
  store %struct.max44000_data* %18, %struct.max44000_data** %12, align 8
  %19 = load i64, i64* %11, align 8
  switch i64 %19, label %141 [
    i64 132, label %20
    i64 131, label %81
    i64 133, label %119
  ]

20:                                               ; preds = %5
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %78 [
    i32 129, label %24
    i32 128, label %41
    i32 130, label %61
  ]

24:                                               ; preds = %20
  %25 = load %struct.max44000_data*, %struct.max44000_data** %12, align 8
  %26 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.max44000_data*, %struct.max44000_data** %12, align 8
  %29 = call i32 @max44000_read_alsval(%struct.max44000_data* %28)
  store i32 %29, i32* %16, align 4
  %30 = load %struct.max44000_data*, %struct.max44000_data** %12, align 8
  %31 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %16, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %6, align 4
  br label %144

37:                                               ; preds = %24
  %38 = load i32, i32* %16, align 4
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %40, i32* %6, align 4
  br label %144

41:                                               ; preds = %20
  %42 = load %struct.max44000_data*, %struct.max44000_data** %12, align 8
  %43 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.max44000_data*, %struct.max44000_data** %12, align 8
  %46 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MAX44000_REG_PRX_DATA, align 4
  %49 = call i32 @regmap_read(i32 %47, i32 %48, i32* %15)
  store i32 %49, i32* %16, align 4
  %50 = load %struct.max44000_data*, %struct.max44000_data** %12, align 8
  %51 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %16, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = load i32, i32* %16, align 4
  store i32 %56, i32* %6, align 4
  br label %144

57:                                               ; preds = %41
  %58 = load i32, i32* %15, align 4
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %60, i32* %6, align 4
  br label %144

61:                                               ; preds = %20
  %62 = load %struct.max44000_data*, %struct.max44000_data** %12, align 8
  %63 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %62, i32 0, i32 0
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load %struct.max44000_data*, %struct.max44000_data** %12, align 8
  %66 = call i32 @max44000_read_led_current_raw(%struct.max44000_data* %65)
  store i32 %66, i32* %16, align 4
  %67 = load %struct.max44000_data*, %struct.max44000_data** %12, align 8
  %68 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %16, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = load i32, i32* %16, align 4
  store i32 %73, i32* %6, align 4
  br label %144

74:                                               ; preds = %61
  %75 = load i32, i32* %16, align 4
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %77, i32* %6, align 4
  br label %144

78:                                               ; preds = %20
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %144

81:                                               ; preds = %5
  %82 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %83 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %116 [
    i32 130, label %85
    i32 129, label %88
  ]

85:                                               ; preds = %81
  %86 = load i32*, i32** %9, align 8
  store i32 10, i32* %86, align 4
  %87 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %87, i32* %6, align 4
  br label %144

88:                                               ; preds = %81
  %89 = load %struct.max44000_data*, %struct.max44000_data** %12, align 8
  %90 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %89, i32 0, i32 0
  %91 = call i32 @mutex_lock(i32* %90)
  %92 = load %struct.max44000_data*, %struct.max44000_data** %12, align 8
  %93 = call i32 @max44000_read_alspga(%struct.max44000_data* %92)
  store i32 %93, i32* %16, align 4
  store i32 %93, i32* %14, align 4
  %94 = load %struct.max44000_data*, %struct.max44000_data** %12, align 8
  %95 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* %16, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %88
  %100 = load i32, i32* %16, align 4
  store i32 %100, i32* %6, align 4
  br label %144

101:                                              ; preds = %88
  %102 = load i32, i32* @MAX44000_ALSPGA_MAX_SHIFT, align 4
  %103 = shl i32 1, %102
  %104 = load i32*, i32** %9, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* @MAX44000_ALS_TO_LUX_DEFAULT_FRACTION_LOG2, align 4
  %106 = load i32, i32* @MAX44000_ALSPGA_MAX_SHIFT, align 4
  %107 = add nsw i32 %105, %106
  %108 = load i32*, i32** @max44000_alspga_shift, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %107, %112
  %114 = load i32*, i32** %10, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %115, i32* %6, align 4
  br label %144

116:                                              ; preds = %81
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %6, align 4
  br label %144

119:                                              ; preds = %5
  %120 = load %struct.max44000_data*, %struct.max44000_data** %12, align 8
  %121 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %120, i32 0, i32 0
  %122 = call i32 @mutex_lock(i32* %121)
  %123 = load %struct.max44000_data*, %struct.max44000_data** %12, align 8
  %124 = call i32 @max44000_read_alstim(%struct.max44000_data* %123)
  store i32 %124, i32* %16, align 4
  store i32 %124, i32* %13, align 4
  %125 = load %struct.max44000_data*, %struct.max44000_data** %12, align 8
  %126 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %125, i32 0, i32 0
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = load i32, i32* %16, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %119
  %131 = load i32, i32* %16, align 4
  store i32 %131, i32* %6, align 4
  br label %144

132:                                              ; preds = %119
  %133 = load i32*, i32** %9, align 8
  store i32 0, i32* %133, align 4
  %134 = load i32*, i32** @max44000_int_time_avail_ns_array, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %10, align 8
  store i32 %138, i32* %139, align 4
  %140 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %140, i32* %6, align 4
  br label %144

141:                                              ; preds = %5
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %141, %132, %130, %116, %101, %99, %85, %78, %74, %72, %57, %55, %37, %35
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local %struct.max44000_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @max44000_read_alsval(%struct.max44000_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @max44000_read_led_current_raw(%struct.max44000_data*) #1

declare dso_local i32 @max44000_read_alspga(%struct.max44000_data*) #1

declare dso_local i32 @max44000_read_alstim(%struct.max44000_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
