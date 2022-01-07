; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7766.c_ad7766_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7766.c_ad7766_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8* }
%struct.spi_device = type { i64, i32 }
%struct.spi_device_id = type { i64, i32 }
%struct.iio_dev = type { i32, i32, i32*, i32, %struct.TYPE_15__*, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.ad7766 = type { i32, %struct.TYPE_13__, i32*, %struct.spi_device*, %struct.TYPE_14__*, i32, %struct.TYPE_15__*, i32, i32* }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_12__, i32* }
%struct.TYPE_12__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@ad7766_chip_info = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"avdd\00", align 1
@AD7766_SUPPLY_AVDD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"dvdd\00", align 1
@AD7766_SUPPLY_DVDD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@AD7766_SUPPLY_VREF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"powerdown\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ad7766_channels = common dso_local global %struct.TYPE_15__* null, align 8
@ad7766_info = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@ad7766_trigger_ops = common dso_local global i32 0, align 4
@ad7766_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@ad7766_trigger_handler = common dso_local global i32 0, align 4
@ad7766_buffer_setup_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad7766_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7766_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_device_id*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.ad7766*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %8)
  store %struct.spi_device_id* %9, %struct.spi_device_id** %4, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 1
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %11, i32 80)
  store %struct.iio_dev* %12, %struct.iio_dev** %5, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %234

18:                                               ; preds = %1
  %19 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %20 = call %struct.ad7766* @iio_priv(%struct.iio_dev* %19)
  store %struct.ad7766* %20, %struct.ad7766** %6, align 8
  %21 = load i32*, i32** @ad7766_chip_info, align 8
  %22 = load %struct.spi_device_id*, %struct.spi_device_id** %4, align 8
  %23 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %27 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %26, i32 0, i32 8
  store i32* %25, i32** %27, align 8
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 1
  %30 = call i32 @devm_clk_get(i32* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %32 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %34 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %18
  %39 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %40 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %2, align 4
  br label %234

43:                                               ; preds = %18
  %44 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %45 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %44, i32 0, i32 6
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = load i64, i64* @AD7766_SUPPLY_AVDD, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %49, align 8
  %50 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %51 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %50, i32 0, i32 6
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = load i64, i64* @AD7766_SUPPLY_DVDD, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %55, align 8
  %56 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %57 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %56, i32 0, i32 6
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = load i64, i64* @AD7766_SUPPLY_VREF, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %61, align 8
  %62 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %63 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %62, i32 0, i32 1
  %64 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %65 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %64, i32 0, i32 6
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = call i32 @ARRAY_SIZE(%struct.TYPE_15__* %66)
  %68 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %69 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %68, i32 0, i32 6
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = call i32 @devm_regulator_bulk_get(i32* %63, i32 %67, %struct.TYPE_15__* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %43
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %234

76:                                               ; preds = %43
  %77 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %78 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %77, i32 0, i32 1
  %79 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %80 = call i32 @devm_gpiod_get_optional(i32* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %82 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  %83 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %84 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @IS_ERR(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %76
  %89 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %90 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @PTR_ERR(i32 %91)
  store i32 %92, i32* %2, align 4
  br label %234

93:                                               ; preds = %76
  %94 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %95 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %94, i32 0, i32 1
  %96 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %97 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  store i32* %95, i32** %98, align 8
  %99 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %100 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %99)
  %101 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %104 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %106 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %107 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ad7766_channels, align 8
  %109 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %110 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %109, i32 0, i32 4
  store %struct.TYPE_15__* %108, %struct.TYPE_15__** %110, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ad7766_channels, align 8
  %112 = call i32 @ARRAY_SIZE(%struct.TYPE_15__* %111)
  %113 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %114 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 8
  %115 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %116 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %115, i32 0, i32 2
  store i32* @ad7766_info, i32** %116, align 8
  %117 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %118 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sgt i64 %119, 0
  br i1 %120, label %121, label %191

121:                                              ; preds = %93
  %122 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %123 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %122, i32 0, i32 1
  %124 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %125 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %128 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call %struct.TYPE_14__* @devm_iio_trigger_alloc(i32* %123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %126, i32 %129)
  %131 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %132 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %131, i32 0, i32 4
  store %struct.TYPE_14__* %130, %struct.TYPE_14__** %132, align 8
  %133 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %134 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %133, i32 0, i32 4
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = icmp ne %struct.TYPE_14__* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %121
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  br label %234

140:                                              ; preds = %121
  %141 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %142 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %141, i32 0, i32 4
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  store i32* @ad7766_trigger_ops, i32** %144, align 8
  %145 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %146 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %145, i32 0, i32 1
  %147 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %148 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %147, i32 0, i32 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  store i32* %146, i32** %151, align 8
  %152 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %153 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %152, i32 0, i32 4
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %156 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_14__* %154, %struct.ad7766* %155)
  %157 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %158 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %157, i32 0, i32 1
  %159 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %160 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* @ad7766_irq, align 4
  %163 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %164 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %165 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %164, i32 0, i32 1
  %166 = call i32 @dev_name(i32* %165)
  %167 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %168 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %167, i32 0, i32 4
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %168, align 8
  %170 = call i32 @devm_request_irq(i32* %158, i64 %161, i32 %162, i32 %163, i32 %166, %struct.TYPE_14__* %169)
  store i32 %170, i32* %7, align 4
  %171 = load i32, i32* %7, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %140
  %174 = load i32, i32* %7, align 4
  store i32 %174, i32* %2, align 4
  br label %234

175:                                              ; preds = %140
  %176 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %177 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @disable_irq(i64 %178)
  %180 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %181 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %180, i32 0, i32 1
  %182 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %183 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %182, i32 0, i32 4
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %183, align 8
  %185 = call i32 @devm_iio_trigger_register(i32* %181, %struct.TYPE_14__* %184)
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %175
  %189 = load i32, i32* %7, align 4
  store i32 %189, i32* %2, align 4
  br label %234

190:                                              ; preds = %175
  br label %191

191:                                              ; preds = %190, %93
  %192 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %193 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %194 = call i32 @spi_set_drvdata(%struct.spi_device* %192, %struct.iio_dev* %193)
  %195 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %196 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %197 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %196, i32 0, i32 3
  store %struct.spi_device* %195, %struct.spi_device** %197, align 8
  %198 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %199 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  %202 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %203 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 1
  store i32* %201, i32** %204, align 8
  %205 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %206 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 0
  store i32 3, i32* %207, align 8
  %208 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %209 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %208, i32 0, i32 0
  %210 = call i32 @spi_message_init(i32* %209)
  %211 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %212 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %211, i32 0, i32 1
  %213 = load %struct.ad7766*, %struct.ad7766** %6, align 8
  %214 = getelementptr inbounds %struct.ad7766, %struct.ad7766* %213, i32 0, i32 0
  %215 = call i32 @spi_message_add_tail(%struct.TYPE_13__* %212, i32* %214)
  %216 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %217 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %216, i32 0, i32 1
  %218 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %219 = call i32 @devm_iio_triggered_buffer_setup(i32* %217, %struct.iio_dev* %218, i32* @iio_pollfunc_store_time, i32* @ad7766_trigger_handler, i32* @ad7766_buffer_setup_ops)
  store i32 %219, i32* %7, align 4
  %220 = load i32, i32* %7, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %191
  %223 = load i32, i32* %7, align 4
  store i32 %223, i32* %2, align 4
  br label %234

224:                                              ; preds = %191
  %225 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %226 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %225, i32 0, i32 1
  %227 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %228 = call i32 @devm_iio_device_register(i32* %226, %struct.iio_dev* %227)
  store i32 %228, i32* %7, align 4
  %229 = load i32, i32* %7, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %224
  %232 = load i32, i32* %7, align 4
  store i32 %232, i32* %2, align 4
  br label %234

233:                                              ; preds = %224
  store i32 0, i32* %2, align 4
  br label %234

234:                                              ; preds = %233, %231, %222, %188, %173, %137, %88, %74, %38, %15
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ad7766* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_regulator_bulk_get(i32*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_15__*) #1

declare dso_local i32 @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_14__* @devm_iio_trigger_alloc(i32*, i8*, i32, i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_14__*, %struct.ad7766*) #1

declare dso_local i32 @devm_request_irq(i32*, i64, i32, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @disable_irq(i64) #1

declare dso_local i32 @devm_iio_trigger_register(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @spi_message_init(i32*) #1

declare dso_local i32 @spi_message_add_tail(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @devm_iio_triggered_buffer_setup(i32*, %struct.iio_dev*, i32*, i32*, i32*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
