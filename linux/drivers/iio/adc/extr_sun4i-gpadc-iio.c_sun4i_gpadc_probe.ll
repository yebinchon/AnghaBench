; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sun4i-gpadc-iio.c_sun4i_gpadc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sun4i-gpadc-iio.c_sun4i_gpadc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.sun4i_gpadc_iio = type { i32, i32, i32, i32, %struct.iio_dev*, i32 }
%struct.iio_dev = type { i32, i32*, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_13__* }

@ENOMEM = common dso_local global i32 0, align 4
@sun4i_gpadc_iio_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@SUN4I_GPADC_AUTOSUSPEND_DELAY = common dso_local global i32 0, align 4
@CONFIG_THERMAL_OF = common dso_local global i32 0, align 4
@sun4i_ts_tz_ops = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"could not register thermal sensor: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"could not register the device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sun4i_gpadc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_gpadc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sun4i_gpadc_iio*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_13__* %8, i32 32)
  store %struct.iio_dev* %9, %struct.iio_dev** %5, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = icmp ne %struct.iio_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %153

15:                                               ; preds = %1
  %16 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %17 = call %struct.sun4i_gpadc_iio* @iio_priv(%struct.iio_dev* %16)
  store %struct.sun4i_gpadc_iio* %17, %struct.sun4i_gpadc_iio** %4, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %20 = call i32 @platform_set_drvdata(%struct.platform_device* %18, %struct.iio_dev* %19)
  %21 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %4, align 8
  %22 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %21, i32 0, i32 5
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %25 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %4, align 8
  %26 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %25, i32 0, i32 4
  store %struct.iio_dev* %24, %struct.iio_dev** %26, align 8
  %27 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %4, align 8
  %28 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %27, i32 0, i32 3
  %29 = call i32 @init_completion(i32* %28)
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 @dev_name(%struct.TYPE_13__* %31)
  %33 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %34 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %39, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  %47 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 1
  store i32* @sun4i_gpadc_iio_info, i32** %48, align 8
  %49 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %50 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %15
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %60 = call i32 @sun4i_gpadc_probe_dt(%struct.platform_device* %58, %struct.iio_dev* %59)
  store i32 %60, i32* %6, align 4
  br label %65

61:                                               ; preds = %15
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %64 = call i32 @sun4i_gpadc_probe_mfd(%struct.platform_device* %62, %struct.iio_dev* %63)
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %57
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %153

70:                                               ; preds = %65
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load i32, i32* @SUN4I_GPADC_AUTOSUSPEND_DELAY, align 4
  %74 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_13__* %72, i32 %73)
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_13__* %76)
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call i32 @pm_runtime_set_suspended(%struct.TYPE_13__* %79)
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 @pm_runtime_enable(%struct.TYPE_13__* %82)
  %84 = load i32, i32* @CONFIG_THERMAL_OF, align 4
  %85 = call i64 @IS_ENABLED(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %121

87:                                               ; preds = %70
  %88 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %4, align 8
  %89 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %4, align 8
  %92 = call i32 @thermal_zone_of_sensor_register(i32 %90, i32 0, %struct.sun4i_gpadc_iio* %91, i32* @sun4i_ts_tz_ops)
  %93 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %4, align 8
  %94 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %4, align 8
  %96 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @IS_ERR(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %120

100:                                              ; preds = %87
  %101 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %4, align 8
  %102 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @PTR_ERR(i32 %103)
  %105 = load i32, i32* @ENODEV, align 4
  %106 = sub nsw i32 0, %105
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %100
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %4, align 8
  %112 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @PTR_ERR(i32 %113)
  %115 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %110, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %114)
  %116 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %4, align 8
  %117 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @PTR_ERR(i32 %118)
  store i32 %119, i32* %2, align 4
  br label %153

120:                                              ; preds = %100, %87
  br label %121

121:                                              ; preds = %120, %70
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %125 = call i32 @devm_iio_device_register(%struct.TYPE_13__* %123, %struct.iio_dev* %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %130, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %133

132:                                              ; preds = %121
  store i32 0, i32* %2, align 4
  br label %153

133:                                              ; preds = %128
  %134 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %4, align 8
  %135 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %133
  %139 = load i32, i32* @CONFIG_THERMAL_OF, align 4
  %140 = call i64 @IS_ENABLED(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %144 = call i32 @iio_map_array_unregister(%struct.iio_dev* %143)
  br label %145

145:                                              ; preds = %142, %138, %133
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = call i32 @pm_runtime_put(%struct.TYPE_13__* %147)
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = call i32 @pm_runtime_disable(%struct.TYPE_13__* %150)
  %152 = load i32, i32* %6, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %145, %132, %108, %68, %12
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.sun4i_gpadc_iio* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @dev_name(%struct.TYPE_13__*) #1

declare dso_local i32 @sun4i_gpadc_probe_dt(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @sun4i_gpadc_probe_mfd(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_13__*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.TYPE_13__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_13__*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @thermal_zone_of_sensor_register(i32, i32, %struct.sun4i_gpadc_iio*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32 @devm_iio_device_register(%struct.TYPE_13__*, %struct.iio_dev*) #1

declare dso_local i32 @iio_map_array_unregister(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_put(%struct.TYPE_13__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
