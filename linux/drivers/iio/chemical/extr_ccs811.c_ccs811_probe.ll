; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_ccs811.c_ccs811_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_ccs811.c_ccs811_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { %struct.TYPE_10__*, i32, i32, i32, i32, i32, i32*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32* }
%struct.ccs811_data = type { %struct.TYPE_10__*, i32, %struct.i2c_client* }

@I2C_FUNC_SMBUS_WRITE_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_I2C_BLOCK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CCS811_HW_ID = common dso_local global i32 0, align 4
@CCS811_HW_ID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"hardware id doesn't match CCS81x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CCS811_HW_VERSION = common dso_local global i32 0, align 4
@CCS811_HW_VERSION_MASK = common dso_local global i32 0, align 4
@CCS811_HW_VERSION_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no CCS811 sensor\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ccs811_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ccs811_channels = common dso_local global i32 0, align 4
@ccs811_data_rdy_trigger_poll = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"ccs811_irq\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"irq request error %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@ccs811_trigger_ops = common dso_local global i32 0, align 4
@ccs811_trigger_handler = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"triggered buffer setup failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"unable to register iio device\0A\00", align 1
@CCS811_MEAS_MODE = common dso_local global i32 0, align 4
@CCS811_MODE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ccs811_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccs811_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.ccs811_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE, align 4
  %13 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @I2C_FUNC_SMBUS_READ_I2C_BLOCK, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @i2c_check_functionality(i32 %11, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %227

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load i32, i32* @CCS811_HW_ID, align 4
  %25 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %227

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @CCS811_HW_ID_VALUE, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 1
  %37 = call i32 (i32*, i8*, ...) @dev_err(i32* %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %227

40:                                               ; preds = %30
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load i32, i32* @CCS811_HW_VERSION, align 4
  %43 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %227

48:                                               ; preds = %40
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @CCS811_HW_VERSION_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @CCS811_HW_VERSION_VALUE, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 1
  %57 = call i32 (i32*, i8*, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %227

60:                                               ; preds = %48
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 1
  %63 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %62, i32 24)
  store %struct.iio_dev* %63, %struct.iio_dev** %6, align 8
  %64 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %65 = icmp ne %struct.iio_dev* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %227

69:                                               ; preds = %60
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = call i32 @ccs811_setup(%struct.i2c_client* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %227

76:                                               ; preds = %69
  %77 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %78 = call %struct.ccs811_data* @iio_priv(%struct.iio_dev* %77)
  store %struct.ccs811_data* %78, %struct.ccs811_data** %7, align 8
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %81 = call i32 @i2c_set_clientdata(%struct.i2c_client* %79, %struct.iio_dev* %80)
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = load %struct.ccs811_data*, %struct.ccs811_data** %7, align 8
  %84 = getelementptr inbounds %struct.ccs811_data, %struct.ccs811_data* %83, i32 0, i32 2
  store %struct.i2c_client* %82, %struct.i2c_client** %84, align 8
  %85 = load %struct.ccs811_data*, %struct.ccs811_data** %7, align 8
  %86 = getelementptr inbounds %struct.ccs811_data, %struct.ccs811_data* %85, i32 0, i32 1
  %87 = call i32 @mutex_init(i32* %86)
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 1
  %90 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %91 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %90, i32 0, i32 7
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store i32* %89, i32** %92, align 8
  %93 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %94 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %97 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %99 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %98, i32 0, i32 6
  store i32* @ccs811_info, i32** %99, align 8
  %100 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %101 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %102 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* @ccs811_channels, align 4
  %104 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %105 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @ccs811_channels, align 4
  %107 = call i32 @ARRAY_SIZE(i32 %106)
  %108 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %109 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 8
  %110 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %111 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %187

114:                                              ; preds = %76
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 1
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @ccs811_data_rdy_trigger_poll, align 4
  %121 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %122 = load i32, i32* @IRQF_ONESHOT, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %125 = call i32 @devm_request_threaded_irq(i32* %116, i64 %119, i32 %120, i32* null, i32 %123, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.iio_dev* %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %114
  %129 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %130 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %129, i32 0, i32 1
  %131 = load i32, i32* %8, align 4
  %132 = sub nsw i32 0, %131
  %133 = call i32 (i32*, i8*, ...) @dev_err(i32* %130, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %132)
  br label %221

134:                                              ; preds = %114
  %135 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %136 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %135, i32 0, i32 1
  %137 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %138 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %141 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call %struct.TYPE_10__* @devm_iio_trigger_alloc(i32* %136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %139, i32 %142)
  %144 = load %struct.ccs811_data*, %struct.ccs811_data** %7, align 8
  %145 = getelementptr inbounds %struct.ccs811_data, %struct.ccs811_data* %144, i32 0, i32 0
  store %struct.TYPE_10__* %143, %struct.TYPE_10__** %145, align 8
  %146 = load %struct.ccs811_data*, %struct.ccs811_data** %7, align 8
  %147 = getelementptr inbounds %struct.ccs811_data, %struct.ccs811_data* %146, i32 0, i32 0
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = icmp ne %struct.TYPE_10__* %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %134
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %8, align 4
  br label %221

153:                                              ; preds = %134
  %154 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %155 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %154, i32 0, i32 1
  %156 = load %struct.ccs811_data*, %struct.ccs811_data** %7, align 8
  %157 = getelementptr inbounds %struct.ccs811_data, %struct.ccs811_data* %156, i32 0, i32 0
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  store i32* %155, i32** %160, align 8
  %161 = load %struct.ccs811_data*, %struct.ccs811_data** %7, align 8
  %162 = getelementptr inbounds %struct.ccs811_data, %struct.ccs811_data* %161, i32 0, i32 0
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  store i32* @ccs811_trigger_ops, i32** %164, align 8
  %165 = load %struct.ccs811_data*, %struct.ccs811_data** %7, align 8
  %166 = getelementptr inbounds %struct.ccs811_data, %struct.ccs811_data* %165, i32 0, i32 0
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %169 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_10__* %167, %struct.iio_dev* %168)
  %170 = load %struct.ccs811_data*, %struct.ccs811_data** %7, align 8
  %171 = getelementptr inbounds %struct.ccs811_data, %struct.ccs811_data* %170, i32 0, i32 0
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %174 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %173, i32 0, i32 0
  store %struct.TYPE_10__* %172, %struct.TYPE_10__** %174, align 8
  %175 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %176 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %175, i32 0, i32 0
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %176, align 8
  %178 = call i32 @iio_trigger_get(%struct.TYPE_10__* %177)
  %179 = load %struct.ccs811_data*, %struct.ccs811_data** %7, align 8
  %180 = getelementptr inbounds %struct.ccs811_data, %struct.ccs811_data* %179, i32 0, i32 0
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = call i32 @iio_trigger_register(%struct.TYPE_10__* %181)
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %153
  br label %221

186:                                              ; preds = %153
  br label %187

187:                                              ; preds = %186, %76
  %188 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %189 = load i32, i32* @ccs811_trigger_handler, align 4
  %190 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %188, i32* null, i32 %189, i32* null)
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %8, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %195 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %194, i32 0, i32 1
  %196 = call i32 (i32*, i8*, ...) @dev_err(i32* %195, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %210

197:                                              ; preds = %187
  %198 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %199 = call i32 @iio_device_register(%struct.iio_dev* %198)
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %8, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %204 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %203, i32 0, i32 1
  %205 = call i32 (i32*, i8*, ...) @dev_err(i32* %204, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %207

206:                                              ; preds = %197
  store i32 0, i32* %3, align 4
  br label %227

207:                                              ; preds = %202
  %208 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %209 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %208)
  br label %210

210:                                              ; preds = %207, %193
  %211 = load %struct.ccs811_data*, %struct.ccs811_data** %7, align 8
  %212 = getelementptr inbounds %struct.ccs811_data, %struct.ccs811_data* %211, i32 0, i32 0
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %212, align 8
  %214 = icmp ne %struct.TYPE_10__* %213, null
  br i1 %214, label %215, label %220

215:                                              ; preds = %210
  %216 = load %struct.ccs811_data*, %struct.ccs811_data** %7, align 8
  %217 = getelementptr inbounds %struct.ccs811_data, %struct.ccs811_data* %216, i32 0, i32 0
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = call i32 @iio_trigger_unregister(%struct.TYPE_10__* %218)
  br label %220

220:                                              ; preds = %215, %210
  br label %221

221:                                              ; preds = %220, %185, %150, %128
  %222 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %223 = load i32, i32* @CCS811_MEAS_MODE, align 4
  %224 = load i32, i32* @CCS811_MODE_IDLE, align 4
  %225 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %222, i32 %223, i32 %224)
  %226 = load i32, i32* %8, align 4
  store i32 %226, i32* %3, align 4
  br label %227

227:                                              ; preds = %221, %206, %74, %66, %54, %46, %34, %28, %19
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local i32 @ccs811_setup(%struct.i2c_client*) #1

declare dso_local %struct.ccs811_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32, i32*, i32, i8*, %struct.iio_dev*) #1

declare dso_local %struct.TYPE_10__* @devm_iio_trigger_alloc(i32*, i8*, i32, i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_10__*, %struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_get(%struct.TYPE_10__*) #1

declare dso_local i32 @iio_trigger_register(%struct.TYPE_10__*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_unregister(%struct.TYPE_10__*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
