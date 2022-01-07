; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_axp288_adc.c_axp288_adc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_axp288_adc.c_axp288_adc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.axp288_adc_info = type { i64, i32 }
%struct.iio_dev = type { i32, i32*, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.axp20x_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unable to enable ADC device\0A\00", align 1
@axp288_adc_channels = common dso_local global i32 0, align 4
@axp288_adc_iio_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@axp288_adc_default_maps = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to register iio device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @axp288_adc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp288_adc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.axp288_adc_info*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.axp20x_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.axp20x_dev* @dev_get_drvdata(i32 %11)
  store %struct.axp20x_dev* %12, %struct.axp20x_dev** %7, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_5__* %14, i32 16)
  store %struct.iio_dev* %15, %struct.iio_dev** %6, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %17 = icmp ne %struct.iio_dev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %99

21:                                               ; preds = %1
  %22 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %23 = call %struct.axp288_adc_info* @iio_priv(%struct.iio_dev* %22)
  store %struct.axp288_adc_info* %23, %struct.axp288_adc_info** %5, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = call i64 @platform_get_irq(%struct.platform_device* %24, i32 0)
  %26 = load %struct.axp288_adc_info*, %struct.axp288_adc_info** %5, align 8
  %27 = getelementptr inbounds %struct.axp288_adc_info, %struct.axp288_adc_info* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.axp288_adc_info*, %struct.axp288_adc_info** %5, align 8
  %29 = getelementptr inbounds %struct.axp288_adc_info, %struct.axp288_adc_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load %struct.axp288_adc_info*, %struct.axp288_adc_info** %5, align 8
  %34 = getelementptr inbounds %struct.axp288_adc_info, %struct.axp288_adc_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %2, align 4
  br label %99

37:                                               ; preds = %21
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %40 = call i32 @platform_set_drvdata(%struct.platform_device* %38, %struct.iio_dev* %39)
  %41 = load %struct.axp20x_dev*, %struct.axp20x_dev** %7, align 8
  %42 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.axp288_adc_info*, %struct.axp288_adc_info** %5, align 8
  %45 = getelementptr inbounds %struct.axp288_adc_info, %struct.axp288_adc_info* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.axp288_adc_info*, %struct.axp288_adc_info** %5, align 8
  %47 = call i32 @axp288_adc_initialize(%struct.axp288_adc_info* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %37
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 @dev_err(%struct.TYPE_5__* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %99

55:                                               ; preds = %37
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store %struct.TYPE_5__* %57, %struct.TYPE_5__** %60, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %65 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @axp288_adc_channels, align 4
  %67 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @axp288_adc_channels, align 4
  %70 = call i32 @ARRAY_SIZE(i32 %69)
  %71 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %72 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %74 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %73, i32 0, i32 1
  store i32* @axp288_adc_iio_info, i32** %74, align 8
  %75 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %76 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %77 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %79 = load i32, i32* @axp288_adc_default_maps, align 4
  %80 = call i32 @iio_map_array_register(%struct.iio_dev* %78, i32 %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %55
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %99

85:                                               ; preds = %55
  %86 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %87 = call i32 @iio_device_register(%struct.iio_dev* %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = call i32 @dev_err(%struct.TYPE_5__* %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %95

94:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %99

95:                                               ; preds = %90
  %96 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %97 = call i32 @iio_map_array_unregister(%struct.iio_dev* %96)
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %95, %94, %83, %50, %32, %18
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.axp20x_dev* @dev_get_drvdata(i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.axp288_adc_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @axp288_adc_initialize(%struct.axp288_adc_info*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iio_map_array_register(%struct.iio_dev*, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_map_array_unregister(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
