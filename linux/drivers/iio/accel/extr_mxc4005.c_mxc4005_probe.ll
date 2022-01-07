; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mxc4005.c_mxc4005_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mxc4005.c_mxc4005_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, i32 }
%struct.i2c_device_id = type { i32 }
%struct.mxc4005_data = type { %struct.TYPE_10__*, i32, %struct.regmap*, i32* }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.regmap = type { i32 }
%struct.iio_dev = type { %struct.TYPE_10__*, i32, i32, i32*, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@mxc4005_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to initialize regmap\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to initialize chip\0A\00", align 1
@mxc4005_channels = common dso_local global i32 0, align 4
@mxc4005_scan_masks = common dso_local global i32 0, align 4
@MXC4005_DRV_NAME = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@mxc4005_info = common dso_local global i32 0, align 4
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@mxc4005_trigger_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to setup iio triggered buffer\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@iio_trigger_generic_data_rdy_poll = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@MXC4005_IRQ_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to init threaded irq\0A\00", align 1
@mxc4005_trigger_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to register trigger\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mxc4005_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxc4005_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mxc4005_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %11, i32 32)
  store %struct.iio_dev* %12, %struct.iio_dev** %7, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %183

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %19, i32* @mxc4005_regmap_config)
  store %struct.regmap* %20, %struct.regmap** %8, align 8
  %21 = load %struct.regmap*, %struct.regmap** %8, align 8
  %22 = call i64 @IS_ERR(%struct.regmap* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 1
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.regmap*, %struct.regmap** %8, align 8
  %29 = call i32 @PTR_ERR(%struct.regmap* %28)
  store i32 %29, i32* %3, align 4
  br label %183

30:                                               ; preds = %18
  %31 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %32 = call %struct.mxc4005_data* @iio_priv(%struct.iio_dev* %31)
  store %struct.mxc4005_data* %32, %struct.mxc4005_data** %6, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %35 = call i32 @i2c_set_clientdata(%struct.i2c_client* %33, %struct.iio_dev* %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 1
  %38 = load %struct.mxc4005_data*, %struct.mxc4005_data** %6, align 8
  %39 = getelementptr inbounds %struct.mxc4005_data, %struct.mxc4005_data* %38, i32 0, i32 3
  store i32* %37, i32** %39, align 8
  %40 = load %struct.regmap*, %struct.regmap** %8, align 8
  %41 = load %struct.mxc4005_data*, %struct.mxc4005_data** %6, align 8
  %42 = getelementptr inbounds %struct.mxc4005_data, %struct.mxc4005_data* %41, i32 0, i32 2
  store %struct.regmap* %40, %struct.regmap** %42, align 8
  %43 = load %struct.mxc4005_data*, %struct.mxc4005_data** %6, align 8
  %44 = call i32 @mxc4005_chip_init(%struct.mxc4005_data* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %30
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 1
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %183

52:                                               ; preds = %30
  %53 = load %struct.mxc4005_data*, %struct.mxc4005_data** %6, align 8
  %54 = getelementptr inbounds %struct.mxc4005_data, %struct.mxc4005_data* %53, i32 0, i32 1
  %55 = call i32 @mutex_init(i32* %54)
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 1
  %58 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32* %57, i32** %60, align 8
  %61 = load i32, i32* @mxc4005_channels, align 4
  %62 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @mxc4005_channels, align 4
  %65 = call i32 @ARRAY_SIZE(i32 %64)
  %66 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %67 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @mxc4005_scan_masks, align 4
  %69 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @MXC4005_DRV_NAME, align 4
  %72 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %73 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %75 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %76 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %78 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %77, i32 0, i32 3
  store i32* @mxc4005_info, i32** %78, align 8
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 1
  %81 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %82 = load i32, i32* @iio_pollfunc_store_time, align 4
  %83 = load i32, i32* @mxc4005_trigger_handler, align 4
  %84 = call i32 @devm_iio_triggered_buffer_setup(i32* %80, %struct.iio_dev* %81, i32 %82, i32 %83, i32* null)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %52
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 1
  %90 = call i32 @dev_err(i32* %89, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %3, align 4
  br label %183

92:                                               ; preds = %52
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %178

97:                                               ; preds = %92
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %98, i32 0, i32 1
  %100 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %101 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %104 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call %struct.TYPE_10__* @devm_iio_trigger_alloc(i32* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %102, i32 %105)
  %107 = load %struct.mxc4005_data*, %struct.mxc4005_data** %6, align 8
  %108 = getelementptr inbounds %struct.mxc4005_data, %struct.mxc4005_data* %107, i32 0, i32 0
  store %struct.TYPE_10__* %106, %struct.TYPE_10__** %108, align 8
  %109 = load %struct.mxc4005_data*, %struct.mxc4005_data** %6, align 8
  %110 = getelementptr inbounds %struct.mxc4005_data, %struct.mxc4005_data* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = icmp ne %struct.TYPE_10__* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %97
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %183

116:                                              ; preds = %97
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %117, i32 0, i32 1
  %119 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %120 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @iio_trigger_generic_data_rdy_poll, align 4
  %123 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %124 = load i32, i32* @IRQF_ONESHOT, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @MXC4005_IRQ_NAME, align 4
  %127 = load %struct.mxc4005_data*, %struct.mxc4005_data** %6, align 8
  %128 = getelementptr inbounds %struct.mxc4005_data, %struct.mxc4005_data* %127, i32 0, i32 0
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = call i32 @devm_request_threaded_irq(i32* %118, i64 %121, i32 %122, i32* null, i32 %125, i32 %126, %struct.TYPE_10__* %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %116
  %134 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %135 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %134, i32 0, i32 1
  %136 = call i32 @dev_err(i32* %135, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %3, align 4
  br label %183

138:                                              ; preds = %116
  %139 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %140 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %139, i32 0, i32 1
  %141 = load %struct.mxc4005_data*, %struct.mxc4005_data** %6, align 8
  %142 = getelementptr inbounds %struct.mxc4005_data, %struct.mxc4005_data* %141, i32 0, i32 0
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  store i32* %140, i32** %145, align 8
  %146 = load %struct.mxc4005_data*, %struct.mxc4005_data** %6, align 8
  %147 = getelementptr inbounds %struct.mxc4005_data, %struct.mxc4005_data* %146, i32 0, i32 0
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  store i32* @mxc4005_trigger_ops, i32** %149, align 8
  %150 = load %struct.mxc4005_data*, %struct.mxc4005_data** %6, align 8
  %151 = getelementptr inbounds %struct.mxc4005_data, %struct.mxc4005_data* %150, i32 0, i32 0
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %154 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_10__* %152, %struct.iio_dev* %153)
  %155 = load %struct.mxc4005_data*, %struct.mxc4005_data** %6, align 8
  %156 = getelementptr inbounds %struct.mxc4005_data, %struct.mxc4005_data* %155, i32 0, i32 0
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %159 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %158, i32 0, i32 0
  store %struct.TYPE_10__* %157, %struct.TYPE_10__** %159, align 8
  %160 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %161 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %160, i32 0, i32 0
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = call i32 @iio_trigger_get(%struct.TYPE_10__* %162)
  %164 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %165 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %164, i32 0, i32 1
  %166 = load %struct.mxc4005_data*, %struct.mxc4005_data** %6, align 8
  %167 = getelementptr inbounds %struct.mxc4005_data, %struct.mxc4005_data* %166, i32 0, i32 0
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = call i32 @devm_iio_trigger_register(i32* %165, %struct.TYPE_10__* %168)
  store i32 %169, i32* %9, align 4
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %138
  %173 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %174 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %173, i32 0, i32 1
  %175 = call i32 @dev_err(i32* %174, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %176 = load i32, i32* %9, align 4
  store i32 %176, i32* %3, align 4
  br label %183

177:                                              ; preds = %138
  br label %178

178:                                              ; preds = %177, %92
  %179 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %180 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %179, i32 0, i32 1
  %181 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %182 = call i32 @devm_iio_device_register(i32* %180, %struct.iio_dev* %181)
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %178, %172, %133, %113, %87, %47, %24, %15
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.mxc4005_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mxc4005_chip_init(%struct.mxc4005_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_iio_triggered_buffer_setup(i32*, %struct.iio_dev*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_10__* @devm_iio_trigger_alloc(i32*, i8*, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32, i32*, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_10__*, %struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_get(%struct.TYPE_10__*) #1

declare dso_local i32 @devm_iio_trigger_register(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
