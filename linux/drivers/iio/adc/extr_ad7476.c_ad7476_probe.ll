; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7476.c_ad7476_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7476.c_ad7476_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (%struct.ad7476_state*)*, %struct.TYPE_11__* }
%struct.ad7476_state = type { i32, %struct.TYPE_15__*, i32, %struct.TYPE_12__, i32, %struct.spi_device* }
%struct.TYPE_12__ = type { i32, i32* }
%struct.spi_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.iio_dev = type { i32, i32*, %struct.TYPE_11__*, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ad7476_chip_info_tbl = common dso_local global %struct.TYPE_15__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ad7476_info = common dso_local global i32 0, align 4
@ad7476_trigger_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad7476_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7476_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad7476_state*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_14__* %8, i32 56)
  store %struct.iio_dev* %9, %struct.iio_dev** %5, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = icmp ne %struct.iio_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %151

15:                                               ; preds = %1
  %16 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %17 = call %struct.ad7476_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.ad7476_state* %17, %struct.ad7476_state** %4, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ad7476_chip_info_tbl, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = call %struct.TYPE_13__* @spi_get_device_id(%struct.spi_device* %19)
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i64 %22
  %24 = load %struct.ad7476_state*, %struct.ad7476_state** %4, align 8
  %25 = getelementptr inbounds %struct.ad7476_state, %struct.ad7476_state* %24, i32 0, i32 1
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %25, align 8
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 0
  %28 = call i32 @devm_regulator_get(%struct.TYPE_14__* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.ad7476_state*, %struct.ad7476_state** %4, align 8
  %30 = getelementptr inbounds %struct.ad7476_state, %struct.ad7476_state* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ad7476_state*, %struct.ad7476_state** %4, align 8
  %32 = getelementptr inbounds %struct.ad7476_state, %struct.ad7476_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %15
  %37 = load %struct.ad7476_state*, %struct.ad7476_state** %4, align 8
  %38 = getelementptr inbounds %struct.ad7476_state, %struct.ad7476_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @PTR_ERR(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %151

41:                                               ; preds = %15
  %42 = load %struct.ad7476_state*, %struct.ad7476_state** %4, align 8
  %43 = getelementptr inbounds %struct.ad7476_state, %struct.ad7476_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @regulator_enable(i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %151

50:                                               ; preds = %41
  %51 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %52 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %53 = call i32 @spi_set_drvdata(%struct.spi_device* %51, %struct.iio_dev* %52)
  %54 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %55 = load %struct.ad7476_state*, %struct.ad7476_state** %4, align 8
  %56 = getelementptr inbounds %struct.ad7476_state, %struct.ad7476_state* %55, i32 0, i32 5
  store %struct.spi_device* %54, %struct.spi_device** %56, align 8
  %57 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %58 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %57, i32 0, i32 0
  %59 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  store %struct.TYPE_14__* %58, %struct.TYPE_14__** %61, align 8
  %62 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %63 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %67 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %70 = call %struct.TYPE_13__* @spi_get_device_id(%struct.spi_device* %69)
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %74 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %76 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %77 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load %struct.ad7476_state*, %struct.ad7476_state** %4, align 8
  %79 = getelementptr inbounds %struct.ad7476_state, %struct.ad7476_state* %78, i32 0, i32 1
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %84 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %83, i32 0, i32 2
  store %struct.TYPE_11__* %82, %struct.TYPE_11__** %84, align 8
  %85 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %86 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %85, i32 0, i32 0
  store i32 2, i32* %86, align 8
  %87 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %88 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %87, i32 0, i32 1
  store i32* @ad7476_info, i32** %88, align 8
  %89 = load %struct.ad7476_state*, %struct.ad7476_state** %4, align 8
  %90 = getelementptr inbounds %struct.ad7476_state, %struct.ad7476_state* %89, i32 0, i32 4
  %91 = load %struct.ad7476_state*, %struct.ad7476_state** %4, align 8
  %92 = getelementptr inbounds %struct.ad7476_state, %struct.ad7476_state* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  store i32* %90, i32** %93, align 8
  %94 = load %struct.ad7476_state*, %struct.ad7476_state** %4, align 8
  %95 = getelementptr inbounds %struct.ad7476_state, %struct.ad7476_state* %94, i32 0, i32 1
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sdiv i32 %102, 8
  %104 = load %struct.ad7476_state*, %struct.ad7476_state** %4, align 8
  %105 = getelementptr inbounds %struct.ad7476_state, %struct.ad7476_state* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct.ad7476_state*, %struct.ad7476_state** %4, align 8
  %108 = getelementptr inbounds %struct.ad7476_state, %struct.ad7476_state* %107, i32 0, i32 2
  %109 = call i32 @spi_message_init(i32* %108)
  %110 = load %struct.ad7476_state*, %struct.ad7476_state** %4, align 8
  %111 = getelementptr inbounds %struct.ad7476_state, %struct.ad7476_state* %110, i32 0, i32 3
  %112 = load %struct.ad7476_state*, %struct.ad7476_state** %4, align 8
  %113 = getelementptr inbounds %struct.ad7476_state, %struct.ad7476_state* %112, i32 0, i32 2
  %114 = call i32 @spi_message_add_tail(%struct.TYPE_12__* %111, i32* %113)
  %115 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %116 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %115, i32* null, i32* @ad7476_trigger_handler, i32* null)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %50
  br label %145

120:                                              ; preds = %50
  %121 = load %struct.ad7476_state*, %struct.ad7476_state** %4, align 8
  %122 = getelementptr inbounds %struct.ad7476_state, %struct.ad7476_state* %121, i32 0, i32 1
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i32 (%struct.ad7476_state*)*, i32 (%struct.ad7476_state*)** %124, align 8
  %126 = icmp ne i32 (%struct.ad7476_state*)* %125, null
  br i1 %126, label %127, label %135

127:                                              ; preds = %120
  %128 = load %struct.ad7476_state*, %struct.ad7476_state** %4, align 8
  %129 = getelementptr inbounds %struct.ad7476_state, %struct.ad7476_state* %128, i32 0, i32 1
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i32 (%struct.ad7476_state*)*, i32 (%struct.ad7476_state*)** %131, align 8
  %133 = load %struct.ad7476_state*, %struct.ad7476_state** %4, align 8
  %134 = call i32 %132(%struct.ad7476_state* %133)
  br label %135

135:                                              ; preds = %127, %120
  %136 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %137 = call i32 @iio_device_register(%struct.iio_dev* %136)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %142

141:                                              ; preds = %135
  store i32 0, i32* %2, align 4
  br label %151

142:                                              ; preds = %140
  %143 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %144 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %143)
  br label %145

145:                                              ; preds = %142, %119
  %146 = load %struct.ad7476_state*, %struct.ad7476_state** %4, align 8
  %147 = getelementptr inbounds %struct.ad7476_state, %struct.ad7476_state* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @regulator_disable(i32 %148)
  %150 = load i32, i32* %6, align 4
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %145, %141, %48, %36, %12
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.ad7476_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.TYPE_13__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_14__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @spi_message_init(i32*) #1

declare dso_local i32 @spi_message_add_tail(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32*, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
