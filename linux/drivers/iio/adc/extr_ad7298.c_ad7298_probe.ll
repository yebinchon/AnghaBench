; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7298.c_ad7298_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7298.c_ad7298_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.ad7298_platform_data* }
%struct.ad7298_platform_data = type { i64 }
%struct.ad7298_state = type { i32, i64, i32, %struct.TYPE_7__*, i32*, i32*, %struct.spi_device* }
%struct.TYPE_7__ = type { i32, i32, i32*, i32* }
%struct.iio_dev = type { i32*, i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AD7298_EXTREF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ad7298_channels = common dso_local global i32 0, align 4
@ad7298_info = common dso_local global i32 0, align 4
@ad7298_trigger_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad7298_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7298_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad7298_platform_data*, align 8
  %5 = alloca %struct.ad7298_state*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load %struct.ad7298_platform_data*, %struct.ad7298_platform_data** %10, align 8
  store %struct.ad7298_platform_data* %11, %struct.ad7298_platform_data** %4, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 0
  %14 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_9__* %13, i32 56)
  store %struct.iio_dev* %14, %struct.iio_dev** %6, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %16 = icmp eq %struct.iio_dev* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %205

20:                                               ; preds = %1
  %21 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %22 = call %struct.ad7298_state* @iio_priv(%struct.iio_dev* %21)
  store %struct.ad7298_state* %22, %struct.ad7298_state** %5, align 8
  %23 = load %struct.ad7298_platform_data*, %struct.ad7298_platform_data** %4, align 8
  %24 = icmp ne %struct.ad7298_platform_data* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.ad7298_platform_data*, %struct.ad7298_platform_data** %4, align 8
  %27 = getelementptr inbounds %struct.ad7298_platform_data, %struct.ad7298_platform_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i64, i64* @AD7298_EXTREF, align 8
  %32 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %33 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %25, %20
  %35 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %36 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %34
  %40 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %41 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %40, i32 0, i32 0
  %42 = call i32 @devm_regulator_get(%struct.TYPE_9__* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %44 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %46 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %52 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %2, align 4
  br label %205

55:                                               ; preds = %39
  %56 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %57 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @regulator_enable(i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %205

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %34
  %66 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %67 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %68 = call i32 @spi_set_drvdata(%struct.spi_device* %66, %struct.iio_dev* %67)
  %69 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %70 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %71 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %70, i32 0, i32 6
  store %struct.spi_device* %69, %struct.spi_device** %71, align 8
  %72 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %73 = call %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device* %72)
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %77 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  %78 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %79 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %78, i32 0, i32 0
  %80 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %81 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** %82, align 8
  %83 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %84 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %88 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %91 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %92 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @ad7298_channels, align 4
  %94 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %95 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @ad7298_channels, align 4
  %97 = call i32 @ARRAY_SIZE(i32 %96)
  %98 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %99 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %101 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %100, i32 0, i32 0
  store i32* @ad7298_info, i32** %101, align 8
  %102 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %103 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %102, i32 0, i32 5
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %107 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %106, i32 0, i32 3
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 3
  store i32* %105, i32** %110, align 8
  %111 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %112 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %111, i32 0, i32 3
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  store i32 2, i32* %115, align 8
  %116 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %117 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %116, i32 0, i32 3
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  store i32 1, i32* %120, align 4
  %121 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %122 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %121, i32 0, i32 5
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %126 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %125, i32 0, i32 3
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 1
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 3
  store i32* %124, i32** %129, align 8
  %130 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %131 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %130, i32 0, i32 3
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  store i32 2, i32* %134, align 8
  %135 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %136 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %135, i32 0, i32 3
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i64 1
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  store i32 1, i32* %139, align 4
  %140 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %141 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %140, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %145 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %144, i32 0, i32 3
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 2
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  store i32* %143, i32** %148, align 8
  %149 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %150 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %149, i32 0, i32 3
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i64 2
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  store i32 2, i32* %153, align 8
  %154 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %155 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %154, i32 0, i32 2
  %156 = call i32 @spi_message_init(i32* %155)
  %157 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %158 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %157, i32 0, i32 3
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i64 0
  %161 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %162 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %161, i32 0, i32 2
  %163 = call i32 @spi_message_add_tail(%struct.TYPE_7__* %160, i32* %162)
  %164 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %165 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %164, i32 0, i32 3
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i64 1
  %168 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %169 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %168, i32 0, i32 2
  %170 = call i32 @spi_message_add_tail(%struct.TYPE_7__* %167, i32* %169)
  %171 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %172 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %171, i32 0, i32 3
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i64 2
  %175 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %176 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %175, i32 0, i32 2
  %177 = call i32 @spi_message_add_tail(%struct.TYPE_7__* %174, i32* %176)
  %178 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %179 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %178, i32* null, i32* @ad7298_trigger_handler, i32* null)
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %65
  br label %193

183:                                              ; preds = %65
  %184 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %185 = call i32 @iio_device_register(%struct.iio_dev* %184)
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %190

189:                                              ; preds = %183
  store i32 0, i32* %2, align 4
  br label %205

190:                                              ; preds = %188
  %191 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %192 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %191)
  br label %193

193:                                              ; preds = %190, %182
  %194 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %195 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %200 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @regulator_disable(i32 %201)
  br label %203

203:                                              ; preds = %198, %193
  %204 = load i32, i32* %7, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %203, %189, %62, %50, %17
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.ad7298_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @spi_message_init(i32*) #1

declare dso_local i32 @spi_message_add_tail(%struct.TYPE_7__*, i32*) #1

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
