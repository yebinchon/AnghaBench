; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/health/extr_max30102.c_max30102_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/health/extr_max30102.c_max30102_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, i32 }
%struct.i2c_device_id = type { i32 }
%struct.max30102_data = type { i32, i32, i32, %struct.i2c_client*, %struct.iio_dev* }
%struct.iio_dev = type { i32, i32, i8*, i8*, %struct.TYPE_2__, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.iio_buffer = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MAX30102_DRV_NAME = common dso_local global i32 0, align 4
@max30102_info = common dso_local global i32 0, align 4
@INDIO_BUFFER_SOFTWARE = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@max30102_buffer_setup_ops = common dso_local global i32 0, align 4
@max30105_channels = common dso_local global i8* null, align 8
@max30105_scan_masks = common dso_local global i32 0, align 4
@max30102_channels = common dso_local global i8* null, align 8
@max30102_scan_masks = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@max30102_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"regmap initialization failed\0A\00", align 1
@MAX30102_REG_PART_ID = common dso_local global i32 0, align 4
@MAX30102_PART_NUMBER = common dso_local global i32 0, align 4
@MAX30102_REG_REV_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"max3010x revision %02x\0A\00", align 1
@MAX30102_REG_MODE_CONFIG_MODE_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"no valid irq defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@max30102_interrupt_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"max30102_irq\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"request irq (%d) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max30102_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max30102_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.max30102_data*, align 8
  %7 = alloca %struct.iio_buffer*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %12, i32 32)
  store %struct.iio_dev* %13, %struct.iio_dev** %8, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %15 = icmp ne %struct.iio_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %196

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = call %struct.iio_buffer* @devm_iio_kfifo_allocate(i32* %21)
  store %struct.iio_buffer* %22, %struct.iio_buffer** %7, align 8
  %23 = load %struct.iio_buffer*, %struct.iio_buffer** %7, align 8
  %24 = icmp ne %struct.iio_buffer* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %196

28:                                               ; preds = %19
  %29 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %30 = load %struct.iio_buffer*, %struct.iio_buffer** %7, align 8
  %31 = call i32 @iio_device_attach_buffer(%struct.iio_dev* %29, %struct.iio_buffer* %30)
  %32 = load i32, i32* @MAX30102_DRV_NAME, align 4
  %33 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %34 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  %35 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %36 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %35, i32 0, i32 6
  store i32* @max30102_info, i32** %36, align 8
  %37 = load i32, i32* @INDIO_BUFFER_SOFTWARE, align 4
  %38 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %43 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %42, i32 0, i32 5
  store i32* @max30102_buffer_setup_ops, i32** %43, align 8
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 1
  %46 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32* %45, i32** %48, align 8
  %49 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %50 = call %struct.max30102_data* @iio_priv(%struct.iio_dev* %49)
  store %struct.max30102_data* %50, %struct.max30102_data** %6, align 8
  %51 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %52 = load %struct.max30102_data*, %struct.max30102_data** %6, align 8
  %53 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %52, i32 0, i32 4
  store %struct.iio_dev* %51, %struct.iio_dev** %53, align 8
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = load %struct.max30102_data*, %struct.max30102_data** %6, align 8
  %56 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %55, i32 0, i32 3
  store %struct.i2c_client* %54, %struct.i2c_client** %56, align 8
  %57 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %58 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.max30102_data*, %struct.max30102_data** %6, align 8
  %61 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.max30102_data*, %struct.max30102_data** %6, align 8
  %63 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %62, i32 0, i32 2
  %64 = call i32 @mutex_init(i32* %63)
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %67 = call i32 @i2c_set_clientdata(%struct.i2c_client* %65, %struct.iio_dev* %66)
  %68 = load %struct.max30102_data*, %struct.max30102_data** %6, align 8
  %69 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %93 [
    i32 128, label %71
    i32 129, label %82
  ]

71:                                               ; preds = %28
  %72 = load i8*, i8** @max30105_channels, align 8
  %73 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %74 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** @max30105_channels, align 8
  %76 = call i8* @ARRAY_SIZE(i8* %75)
  %77 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %78 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @max30105_scan_masks, align 4
  %80 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %81 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %96

82:                                               ; preds = %28
  %83 = load i8*, i8** @max30102_channels, align 8
  %84 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %85 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** @max30102_channels, align 8
  %87 = call i8* @ARRAY_SIZE(i8* %86)
  %88 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %89 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* @max30102_scan_masks, align 4
  %91 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %92 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  br label %96

93:                                               ; preds = %28
  %94 = load i32, i32* @ENODEV, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %196

96:                                               ; preds = %82, %71
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %97, i32* @max30102_regmap_config)
  %99 = load %struct.max30102_data*, %struct.max30102_data** %6, align 8
  %100 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.max30102_data*, %struct.max30102_data** %6, align 8
  %102 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @IS_ERR(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %96
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %107, i32 0, i32 1
  %109 = call i32 (i32*, i8*, ...) @dev_err(i32* %108, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %110 = load %struct.max30102_data*, %struct.max30102_data** %6, align 8
  %111 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @PTR_ERR(i32 %112)
  store i32 %113, i32* %3, align 4
  br label %196

114:                                              ; preds = %96
  %115 = load %struct.max30102_data*, %struct.max30102_data** %6, align 8
  %116 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @MAX30102_REG_PART_ID, align 4
  %119 = call i32 @regmap_read(i32 %117, i32 %118, i32* %10)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %3, align 4
  br label %196

124:                                              ; preds = %114
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @MAX30102_PART_NUMBER, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32, i32* @ENODEV, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %196

131:                                              ; preds = %124
  %132 = load %struct.max30102_data*, %struct.max30102_data** %6, align 8
  %133 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @MAX30102_REG_REV_ID, align 4
  %136 = call i32 @regmap_read(i32 %134, i32 %135, i32* %10)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %131
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %3, align 4
  br label %196

141:                                              ; preds = %131
  %142 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %143 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %142, i32 0, i32 1
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @dev_dbg(i32* %143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load %struct.max30102_data*, %struct.max30102_data** %6, align 8
  %147 = load i32, i32* @MAX30102_REG_MODE_CONFIG_MODE_NONE, align 4
  %148 = call i32 @max30102_set_powermode(%struct.max30102_data* %146, i32 %147, i32 0)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %141
  %152 = load i32, i32* %9, align 4
  store i32 %152, i32* %3, align 4
  br label %196

153:                                              ; preds = %141
  %154 = load %struct.max30102_data*, %struct.max30102_data** %6, align 8
  %155 = call i32 @max30102_chip_init(%struct.max30102_data* %154)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i32, i32* %9, align 4
  store i32 %159, i32* %3, align 4
  br label %196

160:                                              ; preds = %153
  %161 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %162 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp sle i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %167 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %166, i32 0, i32 1
  %168 = call i32 (i32*, i8*, ...) @dev_err(i32* %167, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %3, align 4
  br label %196

171:                                              ; preds = %160
  %172 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %173 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %172, i32 0, i32 1
  %174 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %175 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i32, i32* @max30102_interrupt_handler, align 4
  %178 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %179 = load i32, i32* @IRQF_ONESHOT, align 4
  %180 = or i32 %178, %179
  %181 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %182 = call i32 @devm_request_threaded_irq(i32* %173, i64 %176, i32* null, i32 %177, i32 %180, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), %struct.iio_dev* %181)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %171
  %186 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %187 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %186, i32 0, i32 1
  %188 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %189 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = call i32 (i32*, i8*, ...) @dev_err(i32* %187, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %190)
  %192 = load i32, i32* %9, align 4
  store i32 %192, i32* %3, align 4
  br label %196

193:                                              ; preds = %171
  %194 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %195 = call i32 @iio_device_register(%struct.iio_dev* %194)
  store i32 %195, i32* %3, align 4
  br label %196

196:                                              ; preds = %193, %185, %165, %158, %151, %139, %128, %122, %106, %93, %25, %16
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.iio_buffer* @devm_iio_kfifo_allocate(i32*) #1

declare dso_local i32 @iio_device_attach_buffer(%struct.iio_dev*, %struct.iio_buffer*) #1

declare dso_local %struct.max30102_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @max30102_set_powermode(%struct.max30102_data*, i32, i32) #1

declare dso_local i32 @max30102_chip_init(%struct.max30102_data*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32*, i32, i32, i8*, %struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
