; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7923.c_ad7923_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7923.c_ad7923_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7923_chip_info = type { i32, i32 }
%struct.spi_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ad7923_state = type { i32, i32, i32, %struct.TYPE_7__*, i32*, i32*, %struct.spi_device* }
%struct.TYPE_7__ = type { i32, i32, i32*, i32* }
%struct.iio_dev = type { i32*, i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AD7923_CODING = common dso_local global i32 0, align 4
@AD7923_RANGE = common dso_local global i32 0, align 4
@AD7923_PM_MODE_OPS = common dso_local global i32 0, align 4
@ad7923_chip_info = common dso_local global %struct.ad7923_chip_info* null, align 8
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ad7923_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"refin\00", align 1
@ad7923_trigger_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad7923_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7923_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad7923_state*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.ad7923_chip_info*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_9__* %9, i32 48)
  store %struct.iio_dev* %10, %struct.iio_dev** %5, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = icmp ne %struct.iio_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %168

16:                                               ; preds = %1
  %17 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %18 = call %struct.ad7923_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.ad7923_state* %18, %struct.ad7923_state** %4, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %21 = call i32 @spi_set_drvdata(%struct.spi_device* %19, %struct.iio_dev* %20)
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = load %struct.ad7923_state*, %struct.ad7923_state** %4, align 8
  %24 = getelementptr inbounds %struct.ad7923_state, %struct.ad7923_state* %23, i32 0, i32 6
  store %struct.spi_device* %22, %struct.spi_device** %24, align 8
  %25 = load i32, i32* @AD7923_CODING, align 4
  %26 = load i32, i32* @AD7923_RANGE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @AD7923_PM_MODE_OPS, align 4
  %29 = call i32 @AD7923_PM_MODE_WRITE(i32 %28)
  %30 = or i32 %27, %29
  %31 = load %struct.ad7923_state*, %struct.ad7923_state** %4, align 8
  %32 = getelementptr inbounds %struct.ad7923_state, %struct.ad7923_state* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ad7923_chip_info*, %struct.ad7923_chip_info** @ad7923_chip_info, align 8
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = call %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device* %34)
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.ad7923_chip_info, %struct.ad7923_chip_info* %33, i64 %37
  store %struct.ad7923_chip_info* %38, %struct.ad7923_chip_info** %6, align 8
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = call %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device* %39)
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 0
  %47 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %49, align 8
  %50 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %51 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %58 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ad7923_chip_info*, %struct.ad7923_chip_info** %6, align 8
  %61 = getelementptr inbounds %struct.ad7923_chip_info, %struct.ad7923_chip_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ad7923_chip_info*, %struct.ad7923_chip_info** %6, align 8
  %66 = getelementptr inbounds %struct.ad7923_chip_info, %struct.ad7923_chip_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %69 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %71 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %70, i32 0, i32 0
  store i32* @ad7923_info, i32** %71, align 8
  %72 = load %struct.ad7923_state*, %struct.ad7923_state** %4, align 8
  %73 = getelementptr inbounds %struct.ad7923_state, %struct.ad7923_state* %72, i32 0, i32 5
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load %struct.ad7923_state*, %struct.ad7923_state** %4, align 8
  %77 = getelementptr inbounds %struct.ad7923_state, %struct.ad7923_state* %76, i32 0, i32 3
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  store i32* %75, i32** %80, align 8
  %81 = load %struct.ad7923_state*, %struct.ad7923_state** %4, align 8
  %82 = getelementptr inbounds %struct.ad7923_state, %struct.ad7923_state* %81, i32 0, i32 3
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i32 2, i32* %85, align 8
  %86 = load %struct.ad7923_state*, %struct.ad7923_state** %4, align 8
  %87 = getelementptr inbounds %struct.ad7923_state, %struct.ad7923_state* %86, i32 0, i32 3
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  %91 = load %struct.ad7923_state*, %struct.ad7923_state** %4, align 8
  %92 = getelementptr inbounds %struct.ad7923_state, %struct.ad7923_state* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load %struct.ad7923_state*, %struct.ad7923_state** %4, align 8
  %96 = getelementptr inbounds %struct.ad7923_state, %struct.ad7923_state* %95, i32 0, i32 3
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  store i32* %94, i32** %99, align 8
  %100 = load %struct.ad7923_state*, %struct.ad7923_state** %4, align 8
  %101 = getelementptr inbounds %struct.ad7923_state, %struct.ad7923_state* %100, i32 0, i32 3
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i32 2, i32* %104, align 8
  %105 = load %struct.ad7923_state*, %struct.ad7923_state** %4, align 8
  %106 = getelementptr inbounds %struct.ad7923_state, %struct.ad7923_state* %105, i32 0, i32 2
  %107 = call i32 @spi_message_init(i32* %106)
  %108 = load %struct.ad7923_state*, %struct.ad7923_state** %4, align 8
  %109 = getelementptr inbounds %struct.ad7923_state, %struct.ad7923_state* %108, i32 0, i32 3
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 0
  %112 = load %struct.ad7923_state*, %struct.ad7923_state** %4, align 8
  %113 = getelementptr inbounds %struct.ad7923_state, %struct.ad7923_state* %112, i32 0, i32 2
  %114 = call i32 @spi_message_add_tail(%struct.TYPE_7__* %111, i32* %113)
  %115 = load %struct.ad7923_state*, %struct.ad7923_state** %4, align 8
  %116 = getelementptr inbounds %struct.ad7923_state, %struct.ad7923_state* %115, i32 0, i32 3
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 1
  %119 = load %struct.ad7923_state*, %struct.ad7923_state** %4, align 8
  %120 = getelementptr inbounds %struct.ad7923_state, %struct.ad7923_state* %119, i32 0, i32 2
  %121 = call i32 @spi_message_add_tail(%struct.TYPE_7__* %118, i32* %120)
  %122 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %123 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %122, i32 0, i32 0
  %124 = call i32 @devm_regulator_get(%struct.TYPE_9__* %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %125 = load %struct.ad7923_state*, %struct.ad7923_state** %4, align 8
  %126 = getelementptr inbounds %struct.ad7923_state, %struct.ad7923_state* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.ad7923_state*, %struct.ad7923_state** %4, align 8
  %128 = getelementptr inbounds %struct.ad7923_state, %struct.ad7923_state* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @IS_ERR(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %16
  %133 = load %struct.ad7923_state*, %struct.ad7923_state** %4, align 8
  %134 = getelementptr inbounds %struct.ad7923_state, %struct.ad7923_state* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @PTR_ERR(i32 %135)
  store i32 %136, i32* %2, align 4
  br label %168

137:                                              ; preds = %16
  %138 = load %struct.ad7923_state*, %struct.ad7923_state** %4, align 8
  %139 = getelementptr inbounds %struct.ad7923_state, %struct.ad7923_state* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @regulator_enable(i32 %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %137
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %2, align 4
  br label %168

146:                                              ; preds = %137
  %147 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %148 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %147, i32* null, i32* @ad7923_trigger_handler, i32* null)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %162

152:                                              ; preds = %146
  %153 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %154 = call i32 @iio_device_register(%struct.iio_dev* %153)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %159

158:                                              ; preds = %152
  store i32 0, i32* %2, align 4
  br label %168

159:                                              ; preds = %157
  %160 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %161 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %160)
  br label %162

162:                                              ; preds = %159, %151
  %163 = load %struct.ad7923_state*, %struct.ad7923_state** %4, align 8
  %164 = getelementptr inbounds %struct.ad7923_state, %struct.ad7923_state* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @regulator_disable(i32 %165)
  %167 = load i32, i32* %7, align 4
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %162, %158, %144, %132, %13
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.ad7923_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @AD7923_PM_MODE_WRITE(i32) #1

declare dso_local %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @spi_message_init(i32*) #1

declare dso_local i32 @spi_message_add_tail(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

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
