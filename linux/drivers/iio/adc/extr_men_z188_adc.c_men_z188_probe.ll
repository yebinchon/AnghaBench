; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_men_z188_adc.c_men_z188_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_men_z188_adc.c_men_z188_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcb_device = type { i32 }
%struct.mcb_device_id = type { i32 }
%struct.z188_adc = type { %struct.resource*, i32* }
%struct.resource = type { i32 }
%struct.iio_dev = type { i8*, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"z188-adc\00", align 1
@z188_adc_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@z188_adc_iio_channels = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcb_device*, %struct.mcb_device_id*)* @men_z188_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @men_z188_probe(%struct.mcb_device* %0, %struct.mcb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mcb_device*, align 8
  %5 = alloca %struct.mcb_device_id*, align 8
  %6 = alloca %struct.z188_adc*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.resource*, align 8
  store %struct.mcb_device* %0, %struct.mcb_device** %4, align 8
  store %struct.mcb_device_id* %1, %struct.mcb_device_id** %5, align 8
  %9 = load %struct.mcb_device*, %struct.mcb_device** %4, align 8
  %10 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %9, i32 0, i32 0
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %10, i32 16)
  store %struct.iio_dev* %11, %struct.iio_dev** %7, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %79

17:                                               ; preds = %2
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.z188_adc* @iio_priv(%struct.iio_dev* %18)
  store %struct.z188_adc* %19, %struct.z188_adc** %6, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %21 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %22 = load %struct.mcb_device*, %struct.mcb_device** %4, align 8
  %23 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %22, i32 0, i32 0
  %24 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %25 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32* %23, i32** %26, align 8
  %27 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %28 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %27, i32 0, i32 4
  store i32* @z188_adc_info, i32** %28, align 8
  %29 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %30 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %31 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @z188_adc_iio_channels, align 4
  %33 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %34 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @z188_adc_iio_channels, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.mcb_device*, %struct.mcb_device** %4, align 8
  %40 = call %struct.resource* @mcb_request_mem(%struct.mcb_device* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %40, %struct.resource** %8, align 8
  %41 = load %struct.resource*, %struct.resource** %8, align 8
  %42 = call i64 @IS_ERR(%struct.resource* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %17
  %45 = load %struct.resource*, %struct.resource** %8, align 8
  %46 = call i32 @PTR_ERR(%struct.resource* %45)
  store i32 %46, i32* %3, align 4
  br label %79

47:                                               ; preds = %17
  %48 = load %struct.resource*, %struct.resource** %8, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.resource*, %struct.resource** %8, align 8
  %52 = call i32 @resource_size(%struct.resource* %51)
  %53 = call i32* @ioremap(i32 %50, i32 %52)
  %54 = load %struct.z188_adc*, %struct.z188_adc** %6, align 8
  %55 = getelementptr inbounds %struct.z188_adc, %struct.z188_adc* %54, i32 0, i32 1
  store i32* %53, i32** %55, align 8
  %56 = load %struct.z188_adc*, %struct.z188_adc** %6, align 8
  %57 = getelementptr inbounds %struct.z188_adc, %struct.z188_adc* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %74

61:                                               ; preds = %47
  %62 = load %struct.z188_adc*, %struct.z188_adc** %6, align 8
  %63 = getelementptr inbounds %struct.z188_adc, %struct.z188_adc* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @men_z188_config_channels(i32* %64)
  %66 = load %struct.resource*, %struct.resource** %8, align 8
  %67 = load %struct.z188_adc*, %struct.z188_adc** %6, align 8
  %68 = getelementptr inbounds %struct.z188_adc, %struct.z188_adc* %67, i32 0, i32 0
  store %struct.resource* %66, %struct.resource** %68, align 8
  %69 = load %struct.mcb_device*, %struct.mcb_device** %4, align 8
  %70 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %71 = call i32 @mcb_set_drvdata(%struct.mcb_device* %69, %struct.iio_dev* %70)
  %72 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %73 = call i32 @iio_device_register(%struct.iio_dev* %72)
  store i32 %73, i32* %3, align 4
  br label %79

74:                                               ; preds = %60
  %75 = load %struct.resource*, %struct.resource** %8, align 8
  %76 = call i32 @mcb_release_mem(%struct.resource* %75)
  %77 = load i32, i32* @ENXIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %74, %61, %44, %14
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.z188_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.resource* @mcb_request_mem(%struct.mcb_device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.resource*) #1

declare dso_local i32 @PTR_ERR(%struct.resource*) #1

declare dso_local i32* @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @men_z188_config_channels(i32*) #1

declare dso_local i32 @mcb_set_drvdata(%struct.mcb_device*, %struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @mcb_release_mem(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
