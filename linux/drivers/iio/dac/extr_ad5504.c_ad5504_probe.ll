; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5504.c_ad5504_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5504.c_ad5504_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.ad5504_platform_data* }
%struct.ad5504_platform_data = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.ad5504_state = type { i32, %struct.spi_device*, %struct.regulator* }
%struct.regulator = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"reference voltage unspecified\0A\00", align 1
@ad5504_info = common dso_local global i32 0, align 4
@ID_AD5501 = common dso_local global i64 0, align 8
@ad5504_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ad5504_event_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad5504_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5504_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad5504_platform_data*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.ad5504_state*, align 8
  %7 = alloca %struct.regulator*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.ad5504_platform_data*, %struct.ad5504_platform_data** %12, align 8
  store %struct.ad5504_platform_data* %13, %struct.ad5504_platform_data** %4, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 1
  %16 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_9__* %15, i32 24)
  store %struct.iio_dev* %16, %struct.iio_dev** %5, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %18 = icmp ne %struct.iio_dev* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %155

22:                                               ; preds = %1
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 1
  %25 = call %struct.regulator* @devm_regulator_get(%struct.TYPE_9__* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.regulator* %25, %struct.regulator** %7, align 8
  %26 = load %struct.regulator*, %struct.regulator** %7, align 8
  %27 = call i32 @IS_ERR(%struct.regulator* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %22
  %30 = load %struct.regulator*, %struct.regulator** %7, align 8
  %31 = call i32 @regulator_enable(%struct.regulator* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %2, align 4
  br label %155

36:                                               ; preds = %29
  %37 = load %struct.regulator*, %struct.regulator** %7, align 8
  %38 = call i32 @regulator_get_voltage(%struct.regulator* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %146

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %42, %22
  %45 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %46 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %47 = call i32 @spi_set_drvdata(%struct.spi_device* %45, %struct.iio_dev* %46)
  %48 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %49 = call %struct.ad5504_state* @iio_priv(%struct.iio_dev* %48)
  store %struct.ad5504_state* %49, %struct.ad5504_state** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load i32, i32* %9, align 4
  %54 = sdiv i32 %53, 1000
  %55 = load %struct.ad5504_state*, %struct.ad5504_state** %6, align 8
  %56 = getelementptr inbounds %struct.ad5504_state, %struct.ad5504_state* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %71

57:                                               ; preds = %44
  %58 = load %struct.ad5504_platform_data*, %struct.ad5504_platform_data** %4, align 8
  %59 = icmp ne %struct.ad5504_platform_data* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.ad5504_platform_data*, %struct.ad5504_platform_data** %4, align 8
  %62 = getelementptr inbounds %struct.ad5504_platform_data, %struct.ad5504_platform_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ad5504_state*, %struct.ad5504_state** %6, align 8
  %65 = getelementptr inbounds %struct.ad5504_state, %struct.ad5504_state* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %70

66:                                               ; preds = %57
  %67 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %68 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %67, i32 0, i32 1
  %69 = call i32 @dev_warn(%struct.TYPE_9__* %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %60
  br label %71

71:                                               ; preds = %70, %52
  %72 = load %struct.regulator*, %struct.regulator** %7, align 8
  %73 = load %struct.ad5504_state*, %struct.ad5504_state** %6, align 8
  %74 = getelementptr inbounds %struct.ad5504_state, %struct.ad5504_state* %73, i32 0, i32 2
  store %struct.regulator* %72, %struct.regulator** %74, align 8
  %75 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %76 = load %struct.ad5504_state*, %struct.ad5504_state** %6, align 8
  %77 = getelementptr inbounds %struct.ad5504_state, %struct.ad5504_state* %76, i32 0, i32 1
  store %struct.spi_device* %75, %struct.spi_device** %77, align 8
  %78 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %79 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %78, i32 0, i32 1
  %80 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %81 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** %82, align 8
  %83 = load %struct.ad5504_state*, %struct.ad5504_state** %6, align 8
  %84 = getelementptr inbounds %struct.ad5504_state, %struct.ad5504_state* %83, i32 0, i32 1
  %85 = load %struct.spi_device*, %struct.spi_device** %84, align 8
  %86 = call %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device* %85)
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %90 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %92 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %91, i32 0, i32 3
  store i32* @ad5504_info, i32** %92, align 8
  %93 = load %struct.ad5504_state*, %struct.ad5504_state** %6, align 8
  %94 = getelementptr inbounds %struct.ad5504_state, %struct.ad5504_state* %93, i32 0, i32 1
  %95 = load %struct.spi_device*, %struct.spi_device** %94, align 8
  %96 = call %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device* %95)
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @ID_AD5501, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %71
  %102 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %103 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  br label %107

104:                                              ; preds = %71
  %105 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %106 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %105, i32 0, i32 0
  store i32 4, i32* %106, align 8
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i32, i32* @ad5504_channels, align 4
  %109 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %110 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %112 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %113 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %115 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %107
  %119 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %120 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %119, i32 0, i32 1
  %121 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %122 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %125 = load i32, i32* @IRQF_ONESHOT, align 4
  %126 = or i32 %124, %125
  %127 = load %struct.ad5504_state*, %struct.ad5504_state** %6, align 8
  %128 = getelementptr inbounds %struct.ad5504_state, %struct.ad5504_state* %127, i32 0, i32 1
  %129 = load %struct.spi_device*, %struct.spi_device** %128, align 8
  %130 = call %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device* %129)
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %134 = call i32 @devm_request_threaded_irq(%struct.TYPE_9__* %120, i64 %123, i32* null, i32* @ad5504_event_handler, i32 %126, i32 %132, %struct.iio_dev* %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %118
  br label %146

138:                                              ; preds = %118
  br label %139

139:                                              ; preds = %138, %107
  %140 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %141 = call i32 @iio_device_register(%struct.iio_dev* %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %146

145:                                              ; preds = %139
  store i32 0, i32* %2, align 4
  br label %155

146:                                              ; preds = %144, %137, %41
  %147 = load %struct.regulator*, %struct.regulator** %7, align 8
  %148 = call i32 @IS_ERR(%struct.regulator* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %146
  %151 = load %struct.regulator*, %struct.regulator** %7, align 8
  %152 = call i32 @regulator_disable(%struct.regulator* %151)
  br label %153

153:                                              ; preds = %150, %146
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %153, %145, %34, %19
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.regulator* @devm_regulator_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @regulator_enable(%struct.regulator*) #1

declare dso_local i32 @regulator_get_voltage(%struct.regulator*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.ad5504_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_9__*, i64, i32*, i32*, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(%struct.regulator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
