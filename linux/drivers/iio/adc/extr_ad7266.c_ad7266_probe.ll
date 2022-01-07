; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7266.c_ad7266_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7266.c_ad7266_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.ad7266_platform_data* }
%struct.ad7266_platform_data = type { i32, i32*, i32, i32 }
%struct.iio_dev = type { i32*, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_15__* }
%struct.ad7266_state = type { i32, i32, i32, %struct.TYPE_14__*, i32, %struct.TYPE_12__*, %struct.TYPE_11__, %struct.spi_device*, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32*, i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@ad7266_gpio_labels = common dso_local global i32* null, align 8
@AD7266_RANGE_VREF = common dso_local global i32 0, align 4
@AD7266_MODE_DIFF = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ad7266_info = common dso_local global i32 0, align 4
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@ad7266_trigger_handler = common dso_local global i32 0, align 4
@iio_triggered_buffer_setup_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad7266_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7266_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad7266_platform_data*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.ad7266_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %12 = load %struct.ad7266_platform_data*, %struct.ad7266_platform_data** %11, align 8
  store %struct.ad7266_platform_data* %12, %struct.ad7266_platform_data** %4, align 8
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_15__* %14, i32 64)
  store %struct.iio_dev* %15, %struct.iio_dev** %5, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %17 = icmp eq %struct.iio_dev* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %317

21:                                               ; preds = %1
  %22 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %23 = call %struct.ad7266_state* @iio_priv(%struct.iio_dev* %22)
  store %struct.ad7266_state* %23, %struct.ad7266_state** %6, align 8
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 0
  %26 = call i32 @devm_regulator_get_optional(%struct.TYPE_15__* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %28 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %30 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @IS_ERR(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %56, label %34

34:                                               ; preds = %21
  %35 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %36 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @regulator_enable(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %2, align 4
  br label %317

43:                                               ; preds = %34
  %44 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %45 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @regulator_get_voltage(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %304

51:                                               ; preds = %43
  %52 = load i32, i32* %8, align 4
  %53 = sdiv i32 %52, 1000
  %54 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %55 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %72

56:                                               ; preds = %21
  %57 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %58 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @PTR_ERR(i32 %59)
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %66 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @PTR_ERR(i32 %67)
  store i32 %68, i32* %2, align 4
  br label %317

69:                                               ; preds = %56
  %70 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %71 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %70, i32 0, i32 0
  store i32 2500, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %51
  %73 = load %struct.ad7266_platform_data*, %struct.ad7266_platform_data** %4, align 8
  %74 = icmp ne %struct.ad7266_platform_data* %73, null
  br i1 %74, label %75, label %155

75:                                               ; preds = %72
  %76 = load %struct.ad7266_platform_data*, %struct.ad7266_platform_data** %4, align 8
  %77 = getelementptr inbounds %struct.ad7266_platform_data, %struct.ad7266_platform_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %80 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.ad7266_platform_data*, %struct.ad7266_platform_data** %4, align 8
  %82 = getelementptr inbounds %struct.ad7266_platform_data, %struct.ad7266_platform_data* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %85 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %84, i32 0, i32 8
  store i32 %83, i32* %85, align 8
  %86 = load %struct.ad7266_platform_data*, %struct.ad7266_platform_data** %4, align 8
  %87 = getelementptr inbounds %struct.ad7266_platform_data, %struct.ad7266_platform_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %90 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %89, i32 0, i32 9
  store i32 %88, i32* %90, align 4
  %91 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %92 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %154, label %95

95:                                               ; preds = %75
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %138, %95
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %99 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %98, i32 0, i32 3
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = call i32 @ARRAY_SIZE(%struct.TYPE_14__* %100)
  %102 = icmp ult i32 %97, %101
  br i1 %102, label %103, label %141

103:                                              ; preds = %96
  %104 = load %struct.ad7266_platform_data*, %struct.ad7266_platform_data** %4, align 8
  %105 = getelementptr inbounds %struct.ad7266_platform_data, %struct.ad7266_platform_data* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %112 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %111, i32 0, i32 3
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  store i32 %110, i32* %117, align 4
  %118 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %119 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %120 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %119, i32 0, i32 3
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  store i32 %118, i32* %125, align 4
  %126 = load i32*, i32** @ad7266_gpio_labels, align 8
  %127 = load i32, i32* %7, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %132 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %131, i32 0, i32 3
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  store i32 %130, i32* %137, align 4
  br label %138

138:                                              ; preds = %103
  %139 = load i32, i32* %7, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %96

141:                                              ; preds = %96
  %142 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %143 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %142, i32 0, i32 3
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %143, align 8
  %145 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %146 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %145, i32 0, i32 3
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = call i32 @ARRAY_SIZE(%struct.TYPE_14__* %147)
  %149 = call i32 @gpio_request_array(%struct.TYPE_14__* %144, i32 %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %141
  br label %304

153:                                              ; preds = %141
  br label %154

154:                                              ; preds = %153, %75
  br label %164

155:                                              ; preds = %72
  %156 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %157 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %156, i32 0, i32 1
  store i32 1, i32* %157, align 4
  %158 = load i32, i32* @AD7266_RANGE_VREF, align 4
  %159 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %160 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %159, i32 0, i32 9
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* @AD7266_MODE_DIFF, align 4
  %162 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %163 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %162, i32 0, i32 8
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %155, %154
  %165 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %166 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %167 = call i32 @spi_set_drvdata(%struct.spi_device* %165, %struct.iio_dev* %166)
  %168 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %169 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %170 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %169, i32 0, i32 7
  store %struct.spi_device* %168, %struct.spi_device** %170, align 8
  %171 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %172 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %171, i32 0, i32 0
  %173 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %174 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  store %struct.TYPE_15__* %172, %struct.TYPE_15__** %175, align 8
  %176 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %177 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %181 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  store i32 %179, i32* %182, align 8
  %183 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %184 = call %struct.TYPE_13__* @spi_get_device_id(%struct.spi_device* %183)
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %188 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %190 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %191 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 8
  %192 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %193 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %192, i32 0, i32 0
  store i32* @ad7266_info, i32** %193, align 8
  %194 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %195 = call i32 @ad7266_init_channels(%struct.iio_dev* %194)
  %196 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %197 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %196, i32 0, i32 6
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %202 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %201, i32 0, i32 5
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i64 0
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 3
  store i32* %200, i32** %205, align 8
  %206 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %207 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %206, i32 0, i32 5
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i64 0
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  store i32 2, i32* %210, align 8
  %211 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %212 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %211, i32 0, i32 5
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i64 0
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 1
  store i32 1, i32* %215, align 4
  %216 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %217 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %216, i32 0, i32 6
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %221 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %220, i32 0, i32 5
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i64 1
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 3
  store i32* %219, i32** %224, align 8
  %225 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %226 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %225, i32 0, i32 5
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i64 1
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  store i32 4, i32* %229, align 8
  %230 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %231 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %230, i32 0, i32 5
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i64 1
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 1
  store i32 1, i32* %234, align 4
  %235 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %236 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %235, i32 0, i32 6
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  %240 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %241 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %240, i32 0, i32 5
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i64 2
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 2
  store i32* %239, i32** %244, align 8
  %245 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %246 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %245, i32 0, i32 5
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i64 2
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  store i32 1, i32* %249, align 8
  %250 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %251 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %250, i32 0, i32 4
  %252 = call i32 @spi_message_init(i32* %251)
  %253 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %254 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %253, i32 0, i32 5
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i64 0
  %257 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %258 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %257, i32 0, i32 4
  %259 = call i32 @spi_message_add_tail(%struct.TYPE_12__* %256, i32* %258)
  %260 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %261 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %260, i32 0, i32 5
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i64 1
  %264 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %265 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %264, i32 0, i32 4
  %266 = call i32 @spi_message_add_tail(%struct.TYPE_12__* %263, i32* %265)
  %267 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %268 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %267, i32 0, i32 5
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i64 2
  %271 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %272 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %271, i32 0, i32 4
  %273 = call i32 @spi_message_add_tail(%struct.TYPE_12__* %270, i32* %272)
  %274 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %275 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %274, i32* @iio_pollfunc_store_time, i32* @ad7266_trigger_handler, i32* @iio_triggered_buffer_setup_ops)
  store i32 %275, i32* %8, align 4
  %276 = load i32, i32* %8, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %164
  br label %289

279:                                              ; preds = %164
  %280 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %281 = call i32 @iio_device_register(%struct.iio_dev* %280)
  store i32 %281, i32* %8, align 4
  %282 = load i32, i32* %8, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %279
  br label %286

285:                                              ; preds = %279
  store i32 0, i32* %2, align 4
  br label %317

286:                                              ; preds = %284
  %287 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %288 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %287)
  br label %289

289:                                              ; preds = %286, %278
  %290 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %291 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %303, label %294

294:                                              ; preds = %289
  %295 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %296 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %295, i32 0, i32 3
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %296, align 8
  %298 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %299 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %298, i32 0, i32 3
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %299, align 8
  %301 = call i32 @ARRAY_SIZE(%struct.TYPE_14__* %300)
  %302 = call i32 @gpio_free_array(%struct.TYPE_14__* %297, i32 %301)
  br label %303

303:                                              ; preds = %294, %289
  br label %304

304:                                              ; preds = %303, %152, %50
  %305 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %306 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @IS_ERR(i32 %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %315, label %310

310:                                              ; preds = %304
  %311 = load %struct.ad7266_state*, %struct.ad7266_state** %6, align 8
  %312 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @regulator_disable(i32 %313)
  br label %315

315:                                              ; preds = %310, %304
  %316 = load i32, i32* %8, align 4
  store i32 %316, i32* %2, align 4
  br label %317

317:                                              ; preds = %315, %285, %64, %41, %18
  %318 = load i32, i32* %2, align 4
  ret i32 %318
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.ad7266_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @devm_regulator_get_optional(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_14__*) #1

declare dso_local i32 @gpio_request_array(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.TYPE_13__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @ad7266_init_channels(%struct.iio_dev*) #1

declare dso_local i32 @spi_message_init(i32*) #1

declare dso_local i32 @spi_message_add_tail(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32*, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @gpio_free_array(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
