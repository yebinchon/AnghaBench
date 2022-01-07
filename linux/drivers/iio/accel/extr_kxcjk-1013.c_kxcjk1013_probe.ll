; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, i32 }
%struct.i2c_device_id = type { i8*, i64 }
%struct.kxcjk1013_data = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32, %struct.i2c_client* }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.iio_dev = type { i8*, %struct.TYPE_9__*, i32, i32*, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.kxcjk_1013_platform_data = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@kxcjk1013_channels = common dso_local global i32 0, align 4
@kxcjk1013_scan_masks = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@kxcjk1013_info = common dso_local global i32 0, align 4
@kxcjk1013_data_rdy_trig_poll = common dso_local global i32 0, align 4
@kxcjk1013_event_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@KXCJK1013_IRQ_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s-any-motion-dev%d\00", align 1
@kxcjk1013_trigger_ops = common dso_local global i32 0, align 4
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@kxcjk1013_trigger_handler = common dso_local global i32 0, align 4
@kxcjk1013_buffer_setup_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"iio triggered buffer setup failed\0A\00", align 1
@KXCJK1013_SLEEP_DELAY_MS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"unable to register iio device\0A\00", align 1
@STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @kxcjk1013_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxcjk1013_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.kxcjk1013_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.kxcjk_1013_platform_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %12, i32 40)
  store %struct.iio_dev* %13, %struct.iio_dev** %7, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = icmp ne %struct.iio_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %302

19:                                               ; preds = %2
  %20 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %21 = call %struct.kxcjk1013_data* @iio_priv(%struct.iio_dev* %20)
  store %struct.kxcjk1013_data* %21, %struct.kxcjk1013_data** %6, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %24 = call i32 @i2c_set_clientdata(%struct.i2c_client* %22, %struct.iio_dev* %23)
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %27 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %26, i32 0, i32 6
  store %struct.i2c_client* %25, %struct.i2c_client** %27, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 1
  %30 = call %struct.kxcjk_1013_platform_data* @dev_get_platdata(i32* %29)
  store %struct.kxcjk_1013_platform_data* %30, %struct.kxcjk_1013_platform_data** %8, align 8
  %31 = load %struct.kxcjk_1013_platform_data*, %struct.kxcjk_1013_platform_data** %8, align 8
  %32 = icmp ne %struct.kxcjk_1013_platform_data* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %19
  %34 = load %struct.kxcjk_1013_platform_data*, %struct.kxcjk_1013_platform_data** %8, align 8
  %35 = getelementptr inbounds %struct.kxcjk_1013_platform_data, %struct.kxcjk_1013_platform_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %38 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %42

39:                                               ; preds = %19
  %40 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %41 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %33
  %43 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %44 = icmp ne %struct.i2c_device_id* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %47 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %51 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %53 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %9, align 8
  br label %72

55:                                               ; preds = %42
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 1
  %58 = call i64 @ACPI_HANDLE(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 1
  %63 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %64 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %63, i32 0, i32 1
  %65 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %66 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %65, i32 0, i32 4
  %67 = call i8* @kxcjk1013_match_acpi_device(i32* %62, i32* %64, i32* %66)
  store i8* %67, i8** %9, align 8
  br label %71

68:                                               ; preds = %55
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %302

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71, %45
  %73 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %74 = call i32 @kxcjk1013_chip_init(%struct.kxcjk1013_data* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %3, align 4
  br label %302

79:                                               ; preds = %72
  %80 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %81 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %80, i32 0, i32 5
  %82 = call i32 @mutex_init(i32* %81)
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 1
  %85 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %86 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %85, i32 0, i32 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i32* %84, i32** %87, align 8
  %88 = load i32, i32* @kxcjk1013_channels, align 4
  %89 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %90 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %89, i32 0, i32 7
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @kxcjk1013_channels, align 4
  %92 = call i32 @ARRAY_SIZE(i32 %91)
  %93 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %94 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @kxcjk1013_scan_masks, align 4
  %96 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %97 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 4
  %98 = load i8*, i8** %9, align 8
  %99 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %100 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %102 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %103 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  %104 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %105 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %104, i32 0, i32 3
  store i32* @kxcjk1013_info, i32** %105, align 8
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %230

110:                                              ; preds = %79
  %111 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %112 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %230, label %115

115:                                              ; preds = %110
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 1
  %118 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %119 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* @kxcjk1013_data_rdy_trig_poll, align 4
  %122 = load i32, i32* @kxcjk1013_event_handler, align 4
  %123 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %124 = load i32, i32* @KXCJK1013_IRQ_NAME, align 4
  %125 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %126 = call i32 @devm_request_threaded_irq(i32* %117, i64 %120, i32 %121, i32 %122, i32 %123, i32 %124, %struct.iio_dev* %125)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %115
  br label %297

130:                                              ; preds = %115
  %131 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %132 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %131, i32 0, i32 1
  %133 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %134 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %137 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i8* @devm_iio_trigger_alloc(i32* %132, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %135, i32 %138)
  %140 = bitcast i8* %139 to %struct.TYPE_9__*
  %141 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %142 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %141, i32 0, i32 3
  store %struct.TYPE_9__* %140, %struct.TYPE_9__** %142, align 8
  %143 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %144 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %143, i32 0, i32 3
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = icmp ne %struct.TYPE_9__* %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %130
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %10, align 4
  br label %297

150:                                              ; preds = %130
  %151 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %152 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %151, i32 0, i32 1
  %153 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %154 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %157 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i8* @devm_iio_trigger_alloc(i32* %152, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %155, i32 %158)
  %160 = bitcast i8* %159 to %struct.TYPE_9__*
  %161 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %162 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %161, i32 0, i32 2
  store %struct.TYPE_9__* %160, %struct.TYPE_9__** %162, align 8
  %163 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %164 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %163, i32 0, i32 2
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = icmp ne %struct.TYPE_9__* %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %150
  %168 = load i32, i32* @ENOMEM, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %10, align 4
  br label %297

170:                                              ; preds = %150
  %171 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %172 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %171, i32 0, i32 1
  %173 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %174 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %173, i32 0, i32 3
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  store i32* %172, i32** %177, align 8
  %178 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %179 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %178, i32 0, i32 3
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  store i32* @kxcjk1013_trigger_ops, i32** %181, align 8
  %182 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %183 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %182, i32 0, i32 3
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %186 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_9__* %184, %struct.iio_dev* %185)
  %187 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %188 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %187, i32 0, i32 3
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %191 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %190, i32 0, i32 1
  store %struct.TYPE_9__* %189, %struct.TYPE_9__** %191, align 8
  %192 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %193 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %192, i32 0, i32 1
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %193, align 8
  %195 = call i32 @iio_trigger_get(%struct.TYPE_9__* %194)
  %196 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %197 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %196, i32 0, i32 3
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %197, align 8
  %199 = call i32 @iio_trigger_register(%struct.TYPE_9__* %198)
  store i32 %199, i32* %10, align 4
  %200 = load i32, i32* %10, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %170
  br label %297

203:                                              ; preds = %170
  %204 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %205 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %204, i32 0, i32 1
  %206 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %207 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %206, i32 0, i32 2
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  store i32* %205, i32** %210, align 8
  %211 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %212 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %211, i32 0, i32 2
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  store i32* @kxcjk1013_trigger_ops, i32** %214, align 8
  %215 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %216 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %215, i32 0, i32 2
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %216, align 8
  %218 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %219 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_9__* %217, %struct.iio_dev* %218)
  %220 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %221 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %220, i32 0, i32 2
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %221, align 8
  %223 = call i32 @iio_trigger_register(%struct.TYPE_9__* %222)
  store i32 %223, i32* %10, align 4
  %224 = load i32, i32* %10, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %203
  %227 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %228 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %227, i32 0, i32 2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %228, align 8
  br label %276

229:                                              ; preds = %203
  br label %230

230:                                              ; preds = %229, %110, %79
  %231 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %232 = load i32, i32* @kxcjk1013_trigger_handler, align 4
  %233 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %231, i32* @iio_pollfunc_store_time, i32 %232, i32* @kxcjk1013_buffer_setup_ops)
  store i32 %233, i32* %10, align 4
  %234 = load i32, i32* %10, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %230
  %237 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %238 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %237, i32 0, i32 1
  %239 = call i32 @dev_err(i32* %238, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %276

240:                                              ; preds = %230
  %241 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %242 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %241, i32 0, i32 1
  %243 = call i32 @pm_runtime_set_active(i32* %242)
  store i32 %243, i32* %10, align 4
  %244 = load i32, i32* %10, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %240
  br label %267

247:                                              ; preds = %240
  %248 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %249 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %248, i32 0, i32 1
  %250 = call i32 @pm_runtime_enable(i32* %249)
  %251 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %252 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %251, i32 0, i32 1
  %253 = load i32, i32* @KXCJK1013_SLEEP_DELAY_MS, align 4
  %254 = call i32 @pm_runtime_set_autosuspend_delay(i32* %252, i32 %253)
  %255 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %256 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %255, i32 0, i32 1
  %257 = call i32 @pm_runtime_use_autosuspend(i32* %256)
  %258 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %259 = call i32 @iio_device_register(%struct.iio_dev* %258)
  store i32 %259, i32* %10, align 4
  %260 = load i32, i32* %10, align 4
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %247
  %263 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %264 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %263, i32 0, i32 1
  %265 = call i32 @dev_err(i32* %264, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %267

266:                                              ; preds = %247
  store i32 0, i32* %3, align 4
  br label %302

267:                                              ; preds = %262, %246
  %268 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %269 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %268, i32 0, i32 3
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %269, align 8
  %271 = icmp ne %struct.TYPE_9__* %270, null
  br i1 %271, label %272, label %275

272:                                              ; preds = %267
  %273 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %274 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %273)
  br label %275

275:                                              ; preds = %272, %267
  br label %276

276:                                              ; preds = %275, %236, %226
  %277 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %278 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %277, i32 0, i32 3
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %278, align 8
  %280 = icmp ne %struct.TYPE_9__* %279, null
  br i1 %280, label %281, label %286

281:                                              ; preds = %276
  %282 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %283 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %282, i32 0, i32 3
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %283, align 8
  %285 = call i32 @iio_trigger_unregister(%struct.TYPE_9__* %284)
  br label %286

286:                                              ; preds = %281, %276
  %287 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %288 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %287, i32 0, i32 2
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %288, align 8
  %290 = icmp ne %struct.TYPE_9__* %289, null
  br i1 %290, label %291, label %296

291:                                              ; preds = %286
  %292 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %293 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %292, i32 0, i32 2
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %293, align 8
  %295 = call i32 @iio_trigger_unregister(%struct.TYPE_9__* %294)
  br label %296

296:                                              ; preds = %291, %286
  br label %297

297:                                              ; preds = %296, %202, %167, %147, %129
  %298 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %6, align 8
  %299 = load i32, i32* @STANDBY, align 4
  %300 = call i32 @kxcjk1013_set_mode(%struct.kxcjk1013_data* %298, i32 %299)
  %301 = load i32, i32* %10, align 4
  store i32 %301, i32* %3, align 4
  br label %302

302:                                              ; preds = %297, %266, %77, %68, %16
  %303 = load i32, i32* %3, align 4
  ret i32 %303
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.kxcjk1013_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local %struct.kxcjk_1013_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i64 @ACPI_HANDLE(i32*) #1

declare dso_local i8* @kxcjk1013_match_acpi_device(i32*, i32*, i32*) #1

declare dso_local i32 @kxcjk1013_chip_init(%struct.kxcjk1013_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32, i32, i32, i32, %struct.iio_dev*) #1

declare dso_local i8* @devm_iio_trigger_alloc(i32*, i8*, i8*, i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_9__*, %struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_get(%struct.TYPE_9__*) #1

declare dso_local i32 @iio_trigger_register(%struct.TYPE_9__*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_unregister(%struct.TYPE_9__*) #1

declare dso_local i32 @kxcjk1013_set_mode(%struct.kxcjk1013_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
