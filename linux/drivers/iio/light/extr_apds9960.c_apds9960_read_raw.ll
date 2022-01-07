; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9960.c_apds9960_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9960.c_apds9960_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.apds9960_data = type { i32, i64, i64, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@apds9960_pxs_gain_map = common dso_local global i32* null, align 8
@apds9960_als_gain_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @apds9960_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds9960_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.apds9960_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.apds9960_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.apds9960_data* %16, %struct.apds9960_data** %12, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %14, align 4
  %19 = load %struct.apds9960_data*, %struct.apds9960_data** %12, align 8
  %20 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %125

26:                                               ; preds = %5
  %27 = load i64, i64* %11, align 8
  switch i64 %27, label %123 [
    i64 131, label %28
    i64 132, label %70
    i64 130, label %91
  ]

28:                                               ; preds = %26
  %29 = load %struct.apds9960_data*, %struct.apds9960_data** %12, align 8
  %30 = call i32 @apds9960_set_power_state(%struct.apds9960_data* %29, i32 1)
  %31 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %32 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %64 [
    i32 128, label %34
    i32 129, label %48
  ]

34:                                               ; preds = %28
  %35 = load %struct.apds9960_data*, %struct.apds9960_data** %12, align 8
  %36 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %39 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @regmap_read(i32 %37, i32 %40, i32* %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %45, %34
  br label %67

48:                                               ; preds = %28
  %49 = load %struct.apds9960_data*, %struct.apds9960_data** %12, align 8
  %50 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %53 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @regmap_bulk_read(i32 %51, i32 %54, i32* %13, i32 2)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %48
  %59 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @le16_to_cpu(i32 %60)
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %58, %48
  br label %67

64:                                               ; preds = %28
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %64, %63, %47
  %68 = load %struct.apds9960_data*, %struct.apds9960_data** %12, align 8
  %69 = call i32 @apds9960_set_power_state(%struct.apds9960_data* %68, i32 0)
  br label %123

70:                                               ; preds = %26
  %71 = load %struct.apds9960_data*, %struct.apds9960_data** %12, align 8
  %72 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %71, i32 0, i32 3
  %73 = call i32 @mutex_lock(i32* %72)
  %74 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %75 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  switch i32 %76, label %84 [
    i32 129, label %77
  ]

77:                                               ; preds = %70
  %78 = load i32*, i32** %9, align 8
  store i32 0, i32* %78, align 4
  %79 = load %struct.apds9960_data*, %struct.apds9960_data** %12, align 8
  %80 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** %10, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %83, i32* %14, align 4
  br label %87

84:                                               ; preds = %70
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %84, %77
  %88 = load %struct.apds9960_data*, %struct.apds9960_data** %12, align 8
  %89 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %88, i32 0, i32 3
  %90 = call i32 @mutex_unlock(i32* %89)
  br label %123

91:                                               ; preds = %26
  %92 = load %struct.apds9960_data*, %struct.apds9960_data** %12, align 8
  %93 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %92, i32 0, i32 3
  %94 = call i32 @mutex_lock(i32* %93)
  %95 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %96 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %116 [
    i32 128, label %98
    i32 129, label %107
  ]

98:                                               ; preds = %91
  %99 = load i32*, i32** @apds9960_pxs_gain_map, align 8
  %100 = load %struct.apds9960_data*, %struct.apds9960_data** %12, align 8
  %101 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %9, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %106, i32* %14, align 4
  br label %119

107:                                              ; preds = %91
  %108 = load i32*, i32** @apds9960_als_gain_map, align 8
  %109 = load %struct.apds9960_data*, %struct.apds9960_data** %12, align 8
  %110 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %9, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %115, i32* %14, align 4
  br label %119

116:                                              ; preds = %91
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %14, align 4
  br label %119

119:                                              ; preds = %116, %107, %98
  %120 = load %struct.apds9960_data*, %struct.apds9960_data** %12, align 8
  %121 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %120, i32 0, i32 3
  %122 = call i32 @mutex_unlock(i32* %121)
  br label %123

123:                                              ; preds = %26, %119, %87, %67
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %123, %23
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local %struct.apds9960_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @apds9960_set_power_state(%struct.apds9960_data*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
