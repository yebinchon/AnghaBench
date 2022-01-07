; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sun4i-gpadc-iio.c_sun4i_gpadc_probe_mfd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sun4i-gpadc-iio.c_sun4i_gpadc_probe_mfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.iio_dev = type { i8*, i8* }
%struct.sun4i_gpadc_iio = type { i32, i32, i32, i32, i32, i32, %struct.gpadc_data*, i32 }
%struct.gpadc_data = type { i32 }
%struct.sun4i_gpadc_dev = type { i32 }
%struct.TYPE_3__ = type { i64 }

@sun4i_gpadc_channels = common dso_local global i8* null, align 8
@CONFIG_THERMAL_OF = common dso_local global i32 0, align 4
@sun4i_gpadc_channels_no_temp = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"TEMP_DATA_PENDING\00", align 1
@sun4i_gpadc_temp_data_irq_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"temp_data\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"FIFO_DATA_PENDING\00", align 1
@sun4i_gpadc_fifo_data_irq_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"fifo_data\00", align 1
@sun4i_gpadc_hwmon_maps = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to register iio map array\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.iio_dev*)* @sun4i_gpadc_probe_mfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_gpadc_probe_mfd(%struct.platform_device* %0, %struct.iio_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.sun4i_gpadc_iio*, align 8
  %7 = alloca %struct.sun4i_gpadc_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.iio_dev* %1, %struct.iio_dev** %5, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %10 = call %struct.sun4i_gpadc_iio* @iio_priv(%struct.iio_dev* %9)
  store %struct.sun4i_gpadc_iio* %10, %struct.sun4i_gpadc_iio** %6, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.sun4i_gpadc_dev* @dev_get_drvdata(i32 %14)
  store %struct.sun4i_gpadc_dev* %15, %struct.sun4i_gpadc_dev** %7, align 8
  %16 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %6, align 8
  %17 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.sun4i_gpadc_dev*, %struct.sun4i_gpadc_dev** %7, align 8
  %19 = getelementptr inbounds %struct.sun4i_gpadc_dev, %struct.sun4i_gpadc_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %6, align 8
  %22 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** @sun4i_gpadc_channels, align 8
  %24 = call i8* @ARRAY_SIZE(i8* %23)
  %25 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %26 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @sun4i_gpadc_channels, align 8
  %28 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %31 = call %struct.TYPE_3__* @platform_get_device_id(%struct.platform_device* %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.gpadc_data*
  %35 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %6, align 8
  %36 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %35, i32 0, i32 6
  store %struct.gpadc_data* %34, %struct.gpadc_data** %36, align 8
  %37 = load i32, i32* @CONFIG_THERMAL_OF, align 4
  %38 = call i64 @IS_ENABLED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %2
  %41 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %6, align 8
  %46 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  br label %55

47:                                               ; preds = %2
  %48 = load i8*, i8** @sun4i_gpadc_channels_no_temp, align 8
  %49 = call i8* @ARRAY_SIZE(i8* %48)
  %50 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @sun4i_gpadc_channels_no_temp, align 8
  %53 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %47, %40
  %56 = load i32, i32* @CONFIG_THERMAL_OF, align 4
  %57 = call i64 @IS_ENABLED(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %61 = load i32, i32* @sun4i_gpadc_temp_data_irq_handler, align 4
  %62 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %6, align 8
  %63 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %62, i32 0, i32 4
  %64 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %6, align 8
  %65 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %64, i32 0, i32 3
  %66 = call i32 @sun4i_irq_init(%struct.platform_device* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %63, i32* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %101

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71, %55
  %73 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %74 = load i32, i32* @sun4i_gpadc_fifo_data_irq_handler, align 4
  %75 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %6, align 8
  %76 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %75, i32 0, i32 2
  %77 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %6, align 8
  %78 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %77, i32 0, i32 1
  %79 = call i32 @sun4i_irq_init(%struct.platform_device* %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %76, i32* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %101

84:                                               ; preds = %72
  %85 = load i32, i32* @CONFIG_THERMAL_OF, align 4
  %86 = call i64 @IS_ENABLED(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %90 = load i32, i32* @sun4i_gpadc_hwmon_maps, align 4
  %91 = call i32 @iio_map_array_register(%struct.iio_dev* %89, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 @dev_err(%struct.TYPE_4__* %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %3, align 4
  br label %101

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %84
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %94, %82, %69
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.sun4i_gpadc_iio* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.sun4i_gpadc_dev* @dev_get_drvdata(i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local %struct.TYPE_3__* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @sun4i_irq_init(%struct.platform_device*, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @iio_map_array_register(%struct.iio_dev*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
