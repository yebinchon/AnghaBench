; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ina2xx-adc.c_ina2xx_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ina2xx-adc.c_ina2xx_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ina2xx_chip_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@INA2XX_CONFIG = common dso_local global i32 0, align 4
@ina226 = common dso_local global i32 0, align 4
@INA2XX_SHUNT_VOLTAGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @ina2xx_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina2xx_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ina2xx_chip_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.ina2xx_chip_info* @iio_priv(%struct.iio_dev* %16)
  store %struct.ina2xx_chip_info* %17, %struct.ina2xx_chip_info** %12, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call i64 @iio_buffer_enabled(%struct.iio_dev* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %124

24:                                               ; preds = %5
  %25 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %12, align 8
  %26 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %12, align 8
  %29 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @INA2XX_CONFIG, align 4
  %32 = call i32 @regmap_read(i32 %30, i32 %31, i32* %13)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %119

36:                                               ; preds = %24
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %14, align 4
  %38 = load i64, i64* %11, align 8
  switch i64 %38, label %101 [
    i64 128, label %39
    i64 129, label %43
    i64 130, label %82
  ]

39:                                               ; preds = %36
  %40 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %12, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @ina226_set_average(%struct.ina2xx_chip_info* %40, i32 %41, i32* %14)
  store i32 %42, i32* %15, align 4
  br label %104

43:                                               ; preds = %36
  %44 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %12, align 8
  %45 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ina226, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %43
  %52 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %53 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @INA2XX_SHUNT_VOLTAGE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %12, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @ina226_set_int_time_vshunt(%struct.ina2xx_chip_info* %58, i32 %59, i32* %14)
  store i32 %60, i32* %15, align 4
  br label %65

61:                                               ; preds = %51
  %62 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %12, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @ina226_set_int_time_vbus(%struct.ina2xx_chip_info* %62, i32 %63, i32* %14)
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %61, %57
  br label %81

66:                                               ; preds = %43
  %67 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %68 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @INA2XX_SHUNT_VOLTAGE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %12, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @ina219_set_int_time_vshunt(%struct.ina2xx_chip_info* %73, i32 %74, i32* %14)
  store i32 %75, i32* %15, align 4
  br label %80

76:                                               ; preds = %66
  %77 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %12, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @ina219_set_int_time_vbus(%struct.ina2xx_chip_info* %77, i32 %78, i32* %14)
  store i32 %79, i32* %15, align 4
  br label %80

80:                                               ; preds = %76, %72
  br label %81

81:                                               ; preds = %80, %65
  br label %104

82:                                               ; preds = %36
  %83 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %84 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @INA2XX_SHUNT_VOLTAGE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %12, align 8
  %90 = load i32, i32* %9, align 4
  %91 = mul nsw i32 %90, 1000
  %92 = load i32, i32* %10, align 4
  %93 = sdiv i32 %92, 1000
  %94 = add nsw i32 %91, %93
  %95 = call i32 @ina219_set_vshunt_pga_gain(%struct.ina2xx_chip_info* %89, i32 %94, i32* %14)
  store i32 %95, i32* %15, align 4
  br label %100

96:                                               ; preds = %82
  %97 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %12, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @ina219_set_vbus_range_denom(%struct.ina2xx_chip_info* %97, i32 %98, i32* %14)
  store i32 %99, i32* %15, align 4
  br label %100

100:                                              ; preds = %96, %88
  br label %104

101:                                              ; preds = %36
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %15, align 4
  br label %104

104:                                              ; preds = %101, %100, %81, %39
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %12, align 8
  %113 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @INA2XX_CONFIG, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @regmap_write(i32 %114, i32 %115, i32 %116)
  store i32 %117, i32* %15, align 4
  br label %118

118:                                              ; preds = %111, %107, %104
  br label %119

119:                                              ; preds = %118, %35
  %120 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %12, align 8
  %121 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %120, i32 0, i32 0
  %122 = call i32 @mutex_unlock(i32* %121)
  %123 = load i32, i32* %15, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %119, %21
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local %struct.ina2xx_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @iio_buffer_enabled(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @ina226_set_average(%struct.ina2xx_chip_info*, i32, i32*) #1

declare dso_local i32 @ina226_set_int_time_vshunt(%struct.ina2xx_chip_info*, i32, i32*) #1

declare dso_local i32 @ina226_set_int_time_vbus(%struct.ina2xx_chip_info*, i32, i32*) #1

declare dso_local i32 @ina219_set_int_time_vshunt(%struct.ina2xx_chip_info*, i32, i32*) #1

declare dso_local i32 @ina219_set_int_time_vbus(%struct.ina2xx_chip_info*, i32, i32*) #1

declare dso_local i32 @ina219_set_vshunt_pga_gain(%struct.ina2xx_chip_info*, i32, i32*) #1

declare dso_local i32 @ina219_set_vbus_range_denom(%struct.ina2xx_chip_info*, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
