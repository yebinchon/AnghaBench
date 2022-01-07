; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_enable_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_enable_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ads1015_data = type { i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.iio_chan_spec = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@ADS1015_CFG_COMP_MODE_TRAD = common dso_local global i32 0, align 4
@ADS1015_CFG_COMP_MODE_WINDOW = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ADS1015_LO_THRESH_REG = common dso_local global i32 0, align 4
@ADS1015_HI_THRESH_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ads1015_data*, %struct.iio_chan_spec*, i32)* @ads1015_enable_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads1015_enable_event_config(%struct.ads1015_data* %0, %struct.iio_chan_spec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ads1015_data*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ads1015_data* %0, %struct.ads1015_data** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %13 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %16 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %22 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %25 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %31 = call i64 @ads1015_event_channel_enabled(%struct.ads1015_data* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %3
  %34 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %35 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %38 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %51, label %41

41:                                               ; preds = %33
  %42 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %43 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ADS1015_CFG_COMP_MODE_TRAD, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @ADS1015_CFG_COMP_MODE_WINDOW, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47, %33
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %132

54:                                               ; preds = %47, %41
  store i32 0, i32* %4, align 4
  br label %132

55:                                               ; preds = %3
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @ADS1015_CFG_COMP_MODE_TRAD, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %61 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = shl i32 -1, %64
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 %66, 1
  %68 = call i32 @max(i32 %65, i32 %67)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %59, %55
  %70 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %71 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ADS1015_LO_THRESH_REG, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %76 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %74, %78
  %80 = call i32 @regmap_write(i32 %72, i32 %73, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %69
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %4, align 4
  br label %132

85:                                               ; preds = %69
  %86 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %87 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ADS1015_HI_THRESH_REG, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %92 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %90, %94
  %96 = call i32 @regmap_write(i32 %88, i32 %89, i32 %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %85
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %4, align 4
  br label %132

101:                                              ; preds = %85
  %102 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %103 = call i32 @ads1015_set_power_state(%struct.ads1015_data* %102, i32 1)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %4, align 4
  br label %132

108:                                              ; preds = %101
  %109 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %110 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %111 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @ads1015_event_channel_enable(%struct.ads1015_data* %109, i64 %112, i32 %113)
  %115 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %116 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %117 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @ads1015_get_adc_result(%struct.ads1015_data* %115, i64 %118, i32* %11)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %108
  %123 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %124 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %125 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @ads1015_event_channel_disable(%struct.ads1015_data* %123, i64 %126)
  %128 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %129 = call i32 @ads1015_set_power_state(%struct.ads1015_data* %128, i32 0)
  br label %130

130:                                              ; preds = %122, %108
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %130, %106, %99, %83, %54, %51
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i64 @ads1015_event_channel_enabled(%struct.ads1015_data*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @ads1015_set_power_state(%struct.ads1015_data*, i32) #1

declare dso_local i32 @ads1015_event_channel_enable(%struct.ads1015_data*, i64, i32) #1

declare dso_local i32 @ads1015_get_adc_result(%struct.ads1015_data*, i64, i32*) #1

declare dso_local i32 @ads1015_event_channel_disable(%struct.ads1015_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
