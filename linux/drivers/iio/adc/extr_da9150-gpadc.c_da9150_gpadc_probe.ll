; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_da9150-gpadc.c_da9150_gpadc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_da9150-gpadc.c_da9150_gpadc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, i32 }
%struct.da9150 = type { i32 }
%struct.da9150_gpadc = type { i32, i32, %struct.device*, %struct.da9150* }
%struct.iio_dev = type { i32, i32, i32, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.device* }

@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate IIO device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"GPADC\00", align 1
@da9150_gpadc_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to request IRQ %d: %d\0A\00", align 1
@da9150_gpadc_default_maps = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to register IIO maps: %d\0A\00", align 1
@da9150_gpadc_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@da9150_gpadc_channels = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to register IIO device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9150_gpadc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9150_gpadc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.da9150*, align 8
  %6 = alloca %struct.da9150_gpadc*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.da9150* @dev_get_drvdata(i32 %14)
  store %struct.da9150* %15, %struct.da9150** %5, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %16, i32 24)
  store %struct.iio_dev* %17, %struct.iio_dev** %7, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = icmp ne %struct.iio_dev* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %117

26:                                               ; preds = %1
  %27 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %28 = call %struct.da9150_gpadc* @iio_priv(%struct.iio_dev* %27)
  store %struct.da9150_gpadc* %28, %struct.da9150_gpadc** %6, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %31 = call i32 @platform_set_drvdata(%struct.platform_device* %29, %struct.iio_dev* %30)
  %32 = load %struct.da9150*, %struct.da9150** %5, align 8
  %33 = load %struct.da9150_gpadc*, %struct.da9150_gpadc** %6, align 8
  %34 = getelementptr inbounds %struct.da9150_gpadc, %struct.da9150_gpadc* %33, i32 0, i32 3
  store %struct.da9150* %32, %struct.da9150** %34, align 8
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load %struct.da9150_gpadc*, %struct.da9150_gpadc** %6, align 8
  %37 = getelementptr inbounds %struct.da9150_gpadc, %struct.da9150_gpadc* %36, i32 0, i32 2
  store %struct.device* %35, %struct.device** %37, align 8
  %38 = load %struct.da9150_gpadc*, %struct.da9150_gpadc** %6, align 8
  %39 = getelementptr inbounds %struct.da9150_gpadc, %struct.da9150_gpadc* %38, i32 0, i32 1
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.da9150_gpadc*, %struct.da9150_gpadc** %6, align 8
  %42 = getelementptr inbounds %struct.da9150_gpadc, %struct.da9150_gpadc* %41, i32 0, i32 0
  %43 = call i32 @init_completion(i32* %42)
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = call i32 @platform_get_irq_byname(%struct.platform_device* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %26
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %2, align 4
  br label %117

50:                                               ; preds = %26
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @da9150_gpadc_irq, align 4
  %54 = load i32, i32* @IRQF_ONESHOT, align 4
  %55 = load %struct.da9150_gpadc*, %struct.da9150_gpadc** %6, align 8
  %56 = call i32 @devm_request_threaded_irq(%struct.device* %51, i32 %52, i32* null, i32 %53, i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.da9150_gpadc* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %50
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %2, align 4
  br label %117

65:                                               ; preds = %50
  %66 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %67 = load i32, i32* @da9150_gpadc_default_maps, align 4
  %68 = call i32 @iio_map_array_register(%struct.iio_dev* %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %2, align 4
  br label %117

76:                                               ; preds = %65
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = call i32 @dev_name(%struct.device* %77)
  %79 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %80 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %83 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store %struct.device* %81, %struct.device** %84, align 8
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.device, %struct.device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %90 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %93 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %92, i32 0, i32 3
  store i32* @da9150_gpadc_info, i32** %93, align 8
  %94 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %95 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %96 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @da9150_gpadc_channels, align 4
  %98 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %99 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @da9150_gpadc_channels, align 4
  %101 = call i32 @ARRAY_SIZE(i32 %100)
  %102 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %103 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %105 = call i32 @iio_device_register(%struct.iio_dev* %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %76
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %109, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  br label %113

112:                                              ; preds = %76
  store i32 0, i32* %2, align 4
  br label %117

113:                                              ; preds = %108
  %114 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %115 = call i32 @iio_map_array_unregister(%struct.iio_dev* %114)
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %113, %112, %71, %59, %48, %20
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.da9150* @dev_get_drvdata(i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.da9150_gpadc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.da9150_gpadc*) #1

declare dso_local i32 @iio_map_array_register(%struct.iio_dev*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_map_array_unregister(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
