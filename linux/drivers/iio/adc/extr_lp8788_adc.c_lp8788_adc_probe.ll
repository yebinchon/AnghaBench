; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_lp8788_adc.c_lp8788_adc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_lp8788_adc.c_lp8788_adc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.lp8788 = type { i32 }
%struct.iio_dev = type { i32, i32, i32*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__*, i32 }
%struct.lp8788_adc = type { i32, %struct.lp8788* }

@ENOMEM = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@lp8788_adc_info = common dso_local global i32 0, align 4
@lp8788_adc_channels = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"iio dev register err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lp8788_adc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_adc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lp8788*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.lp8788_adc*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.lp8788* @dev_get_drvdata(i32 %11)
  store %struct.lp8788* %12, %struct.lp8788** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_5__* %14, i32 16)
  store %struct.iio_dev* %15, %struct.iio_dev** %5, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %17 = icmp ne %struct.iio_dev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %87

21:                                               ; preds = %1
  %22 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %23 = call %struct.lp8788_adc* @iio_priv(%struct.iio_dev* %22)
  store %struct.lp8788_adc* %23, %struct.lp8788_adc** %6, align 8
  %24 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %25 = load %struct.lp8788_adc*, %struct.lp8788_adc** %6, align 8
  %26 = getelementptr inbounds %struct.lp8788_adc, %struct.lp8788_adc* %25, i32 0, i32 1
  store %struct.lp8788* %24, %struct.lp8788** %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %29 = call i32 @platform_set_drvdata(%struct.platform_device* %27, %struct.iio_dev* %28)
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %35 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  %37 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %38 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %39 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.lp8788_adc*, %struct.lp8788_adc** %6, align 8
  %42 = call i32 @lp8788_iio_map_register(%struct.iio_dev* %37, i32 %40, %struct.lp8788_adc* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %21
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %87

47:                                               ; preds = %21
  %48 = load %struct.lp8788_adc*, %struct.lp8788_adc** %6, align 8
  %49 = getelementptr inbounds %struct.lp8788_adc, %struct.lp8788_adc* %48, i32 0, i32 0
  %50 = call i32 @mutex_init(i32* %49)
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %55, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %62 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %65 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %64, i32 0, i32 2
  store i32* @lp8788_adc_info, i32** %65, align 8
  %66 = load i32, i32* @lp8788_adc_channels, align 4
  %67 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @lp8788_adc_channels, align 4
  %70 = call i32 @ARRAY_SIZE(i32 %69)
  %71 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %72 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %74 = call i32 @iio_device_register(%struct.iio_dev* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %47
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @dev_err(%struct.TYPE_5__* %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %83

82:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %87

83:                                               ; preds = %77
  %84 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %85 = call i32 @iio_map_array_unregister(%struct.iio_dev* %84)
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %83, %82, %45, %18
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.lp8788* @dev_get_drvdata(i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.lp8788_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @lp8788_iio_map_register(%struct.iio_dev*, i32, %struct.lp8788_adc*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @iio_map_array_unregister(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
