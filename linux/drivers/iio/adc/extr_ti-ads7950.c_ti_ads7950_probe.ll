; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads7950.c_ti_ads7950_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads7950.c_ti_ads7950_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_ads7950_chip_info = type { i32, i32 }
%struct.spi_device = type { i32, i32, i32 }
%struct.ti_ads7950_state = type { i32, i32, %struct.TYPE_10__, %struct.spi_device*, i32, %struct.TYPE_7__*, i32, i32, i32, i32, %struct.TYPE_8__, i32*, i32* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32*, i32* }
%struct.TYPE_8__ = type { i32, i32*, i32* }
%struct.iio_dev = type { i32*, i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_9__ = type { i64, i32 }

@SPI_CS_WORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Error in spi setup\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ti_ads7950_chip_info = common dso_local global %struct.ti_ads7950_chip_info* null, align 8
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ti_ads7950_info = common dso_local global i32 0, align 4
@TI_ADS7950_VA_MV_ACPI_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed get get regulator \22vref\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to enable regulator \22vref\22\0A\00", align 1
@ti_ads7950_trigger_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to setup triggered buffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed to init adc chip\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Failed to register iio device\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@TI_ADS7950_NUM_GPIOS = common dso_local global i32 0, align 4
@ti_ads7950_get_direction = common dso_local global i32 0, align 4
@ti_ads7950_direction_input = common dso_local global i32 0, align 4
@ti_ads7950_direction_output = common dso_local global i32 0, align 4
@ti_ads7950_get = common dso_local global i32 0, align 4
@ti_ads7950_set = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"Failed to init GPIOs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ti_ads7950_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_ads7950_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ti_ads7950_state*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.ti_ads7950_chip_info*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  store i32 16, i32* %9, align 4
  %10 = load i32, i32* @SPI_CS_WORD, align 4
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = call i32 @spi_setup(%struct.spi_device* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 1
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %293

24:                                               ; preds = %1
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 1
  %27 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %26, i32 136)
  store %struct.iio_dev* %27, %struct.iio_dev** %5, align 8
  %28 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %29 = icmp ne %struct.iio_dev* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %293

33:                                               ; preds = %24
  %34 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %35 = call %struct.ti_ads7950_state* @iio_priv(%struct.iio_dev* %34)
  store %struct.ti_ads7950_state* %35, %struct.ti_ads7950_state** %4, align 8
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %38 = call i32 @spi_set_drvdata(%struct.spi_device* %36, %struct.iio_dev* %37)
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %41 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %40, i32 0, i32 3
  store %struct.spi_device* %39, %struct.spi_device** %41, align 8
  %42 = load %struct.ti_ads7950_chip_info*, %struct.ti_ads7950_chip_info** @ti_ads7950_chip_info, align 8
  %43 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %44 = call %struct.TYPE_9__* @spi_get_device_id(%struct.spi_device* %43)
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.ti_ads7950_chip_info, %struct.ti_ads7950_chip_info* %42, i64 %46
  store %struct.ti_ads7950_chip_info* %47, %struct.ti_ads7950_chip_info** %6, align 8
  %48 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %49 = call %struct.TYPE_9__* @spi_get_device_id(%struct.spi_device* %48)
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 1
  %56 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32* %55, i32** %58, align 8
  %59 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %60 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ti_ads7950_chip_info*, %struct.ti_ads7950_chip_info** %6, align 8
  %63 = getelementptr inbounds %struct.ti_ads7950_chip_info, %struct.ti_ads7950_chip_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %66 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ti_ads7950_chip_info*, %struct.ti_ads7950_chip_info** %6, align 8
  %68 = getelementptr inbounds %struct.ti_ads7950_chip_info, %struct.ti_ads7950_chip_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %71 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %73 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %72, i32 0, i32 0
  store i32* @ti_ads7950_info, i32** %73, align 8
  %74 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %75 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %74, i32 0, i32 9
  %76 = call i32 @spi_message_init(i32* %75)
  %77 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %78 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %77, i32 0, i32 12
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %82 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %81, i32 0, i32 10
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  store i32* %80, i32** %83, align 8
  %84 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %85 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %84, i32 0, i32 11
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %89 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %88, i32 0, i32 10
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i32* %87, i32** %90, align 8
  %91 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %92 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %91, i32 0, i32 10
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  %94 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %95 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %94, i32 0, i32 10
  %96 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %97 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %96, i32 0, i32 9
  %98 = call i32 @spi_message_add_tail(%struct.TYPE_8__* %95, i32* %97)
  %99 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %100 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %99, i32 0, i32 8
  %101 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %102 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %101, i32 0, i32 5
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 3
  store i32* %100, i32** %105, align 8
  %106 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %107 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %106, i32 0, i32 5
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store i32 2, i32* %110, align 8
  %111 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %112 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %111, i32 0, i32 5
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  %116 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %117 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %116, i32 0, i32 8
  %118 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %119 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %118, i32 0, i32 5
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i64 1
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  store i32* %117, i32** %122, align 8
  %123 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %124 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %123, i32 0, i32 5
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 1
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  store i32 2, i32* %127, align 8
  %128 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %129 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %128, i32 0, i32 5
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i64 1
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  store i32 1, i32* %132, align 4
  %133 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %134 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %133, i32 0, i32 7
  %135 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %136 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %135, i32 0, i32 5
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i64 2
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  store i32* %134, i32** %139, align 8
  %140 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %141 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %140, i32 0, i32 5
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i64 2
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  store i32 2, i32* %144, align 8
  %145 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %146 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %145, i32 0, i32 6
  %147 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %148 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %147, i32 0, i32 5
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = call i32 @spi_message_init_with_transfers(i32* %146, %struct.TYPE_7__* %149, i32 3)
  %151 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %152 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %151, i32 0, i32 1
  %153 = call i64 @ACPI_COMPANION(i32* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %33
  %156 = load i32, i32* @TI_ADS7950_VA_MV_ACPI_DEFAULT, align 4
  %157 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %158 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %157, i32 0, i32 4
  store i32 %156, i32* %158, align 8
  br label %159

159:                                              ; preds = %155, %33
  %160 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %161 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %160, i32 0, i32 0
  %162 = call i32 @mutex_init(i32* %161)
  %163 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %164 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %163, i32 0, i32 1
  %165 = call i32 @devm_regulator_get(i32* %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %166 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %167 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %169 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @IS_ERR(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %159
  %174 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %175 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %174, i32 0, i32 1
  %176 = call i32 @dev_err(i32* %175, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %177 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %178 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @PTR_ERR(i32 %179)
  store i32 %180, i32* %7, align 4
  br label %288

181:                                              ; preds = %159
  %182 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %183 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @regulator_enable(i32 %184)
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %181
  %189 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %190 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %189, i32 0, i32 1
  %191 = call i32 @dev_err(i32* %190, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %288

192:                                              ; preds = %181
  %193 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %194 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %193, i32* null, i32* @ti_ads7950_trigger_handler, i32* null)
  store i32 %194, i32* %7, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %192
  %198 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %199 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %198, i32 0, i32 1
  %200 = call i32 @dev_err(i32* %199, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %283

201:                                              ; preds = %192
  %202 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %203 = call i32 @ti_ads7950_init_hw(%struct.ti_ads7950_state* %202)
  store i32 %203, i32* %7, align 4
  %204 = load i32, i32* %7, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %201
  %207 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %208 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %207, i32 0, i32 1
  %209 = call i32 @dev_err(i32* %208, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %280

210:                                              ; preds = %201
  %211 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %212 = call i32 @iio_device_register(%struct.iio_dev* %211)
  store i32 %212, i32* %7, align 4
  %213 = load i32, i32* %7, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %210
  %216 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %217 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %216, i32 0, i32 1
  %218 = call i32 @dev_err(i32* %217, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %280

219:                                              ; preds = %210
  %220 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %221 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %220, i32 0, i32 3
  %222 = load %struct.spi_device*, %struct.spi_device** %221, align 8
  %223 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %222, i32 0, i32 1
  %224 = call i32 @dev_name(i32* %223)
  %225 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %226 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 9
  store i32 %224, i32* %227, align 8
  %228 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %229 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %228, i32 0, i32 3
  %230 = load %struct.spi_device*, %struct.spi_device** %229, align 8
  %231 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %230, i32 0, i32 1
  %232 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %233 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 8
  store i32* %231, i32** %234, align 8
  %235 = load i32, i32* @THIS_MODULE, align 4
  %236 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %237 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 7
  store i32 %235, i32* %238, align 4
  %239 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %240 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  store i32 -1, i32* %241, align 8
  %242 = load i32, i32* @TI_ADS7950_NUM_GPIOS, align 4
  %243 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %244 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 6
  store i32 %242, i32* %245, align 8
  %246 = load i32, i32* @ti_ads7950_get_direction, align 4
  %247 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %248 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 5
  store i32 %246, i32* %249, align 4
  %250 = load i32, i32* @ti_ads7950_direction_input, align 4
  %251 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %252 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 4
  store i32 %250, i32* %253, align 8
  %254 = load i32, i32* @ti_ads7950_direction_output, align 4
  %255 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %256 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 3
  store i32 %254, i32* %257, align 4
  %258 = load i32, i32* @ti_ads7950_get, align 4
  %259 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %260 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 2
  store i32 %258, i32* %261, align 8
  %262 = load i32, i32* @ti_ads7950_set, align 4
  %263 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %264 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 1
  store i32 %262, i32* %265, align 4
  %266 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %267 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %266, i32 0, i32 2
  %268 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %269 = call i32 @gpiochip_add_data(%struct.TYPE_10__* %267, %struct.ti_ads7950_state* %268)
  store i32 %269, i32* %7, align 4
  %270 = load i32, i32* %7, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %219
  %273 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %274 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %273, i32 0, i32 1
  %275 = call i32 @dev_err(i32* %274, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %277

276:                                              ; preds = %219
  store i32 0, i32* %2, align 4
  br label %293

277:                                              ; preds = %272
  %278 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %279 = call i32 @iio_device_unregister(%struct.iio_dev* %278)
  br label %280

280:                                              ; preds = %277, %215, %206
  %281 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %282 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %281)
  br label %283

283:                                              ; preds = %280, %197
  %284 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %285 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @regulator_disable(i32 %286)
  br label %288

288:                                              ; preds = %283, %188, %173
  %289 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %4, align 8
  %290 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %289, i32 0, i32 0
  %291 = call i32 @mutex_destroy(i32* %290)
  %292 = load i32, i32* %7, align 4
  store i32 %292, i32* %2, align 4
  br label %293

293:                                              ; preds = %288, %276, %30, %19
  %294 = load i32, i32* %2, align 4
  ret i32 %294
}

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ti_ads7950_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.TYPE_9__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @spi_message_init(i32*) #1

declare dso_local i32 @spi_message_add_tail(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @spi_message_init_with_transfers(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i64 @ACPI_COMPANION(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32*, i32*) #1

declare dso_local i32 @ti_ads7950_init_hw(%struct.ti_ads7950_state*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_10__*, %struct.ti_ads7950_state*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
