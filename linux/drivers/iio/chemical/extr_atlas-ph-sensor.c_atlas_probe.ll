; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_atlas-ph-sensor.c_atlas_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_atlas-ph-sensor.c_atlas_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atlas_device = type { i32 (%struct.atlas_data.0*)*, i32, i32 }
%struct.atlas_data.0 = type opaque
%struct.i2c_client = type { i64, i32 }
%struct.i2c_device_id = type { i64 }
%struct.atlas_data = type { %struct.iio_trigger*, i32, i32, %struct.atlas_device*, %struct.i2c_client* }
%struct.iio_trigger = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.of_device_id = type { i64 }
%struct.iio_dev = type { i32, %struct.TYPE_4__, i32, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@atlas_dt_ids = common dso_local global i32 0, align 4
@atlas_devices = common dso_local global %struct.atlas_device* null, align 8
@atlas_info = common dso_local global i32 0, align 4
@ATLAS_DRV_NAME = common dso_local global i32 0, align 4
@INDIO_BUFFER_SOFTWARE = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@atlas_interrupt_trigger_ops = common dso_local global i32 0, align 4
@atlas_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"regmap initialization failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"no valid irq defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to register trigger\0A\00", align 1
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@atlas_trigger_handler = common dso_local global i32 0, align 4
@atlas_buffer_setup_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"cannot setup iio trigger\0A\00", align 1
@atlas_work_handler = common dso_local global i32 0, align 4
@atlas_interrupt_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"atlas_irq\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"request irq (%d) failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"cannot power device on\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"unable to register device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @atlas_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atlas_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.atlas_data*, align 8
  %7 = alloca %struct.atlas_device*, align 8
  %8 = alloca %struct.of_device_id*, align 8
  %9 = alloca %struct.iio_trigger*, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %13, i32 32)
  store %struct.iio_dev* %14, %struct.iio_dev** %10, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %16 = icmp ne %struct.iio_dev* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %242

20:                                               ; preds = %2
  %21 = load i32, i32* @atlas_dt_ids, align 4
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 1
  %24 = call %struct.of_device_id* @of_match_device(i32 %21, i32* %23)
  store %struct.of_device_id* %24, %struct.of_device_id** %8, align 8
  %25 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %26 = icmp ne %struct.of_device_id* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = load %struct.atlas_device*, %struct.atlas_device** @atlas_devices, align 8
  %29 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %30 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.atlas_device, %struct.atlas_device* %28, i64 %31
  store %struct.atlas_device* %32, %struct.atlas_device** %7, align 8
  br label %39

33:                                               ; preds = %20
  %34 = load %struct.atlas_device*, %struct.atlas_device** @atlas_devices, align 8
  %35 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %36 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.atlas_device, %struct.atlas_device* %34, i64 %37
  store %struct.atlas_device* %38, %struct.atlas_device** %7, align 8
  br label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 6
  store i32* @atlas_info, i32** %41, align 8
  %42 = load i32, i32* @ATLAS_DRV_NAME, align 4
  %43 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.atlas_device*, %struct.atlas_device** %7, align 8
  %46 = getelementptr inbounds %struct.atlas_device, %struct.atlas_device* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load %struct.atlas_device*, %struct.atlas_device** %7, align 8
  %51 = getelementptr inbounds %struct.atlas_device, %struct.atlas_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @INDIO_BUFFER_SOFTWARE, align 4
  %56 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 1
  %62 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32* %61, i32** %64, align 8
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 1
  %67 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %71 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call %struct.iio_trigger* @devm_iio_trigger_alloc(i32* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %72)
  store %struct.iio_trigger* %73, %struct.iio_trigger** %9, align 8
  %74 = load %struct.iio_trigger*, %struct.iio_trigger** %9, align 8
  %75 = icmp ne %struct.iio_trigger* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %39
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %242

79:                                               ; preds = %39
  %80 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %81 = call %struct.atlas_data* @iio_priv(%struct.iio_dev* %80)
  store %struct.atlas_data* %81, %struct.atlas_data** %6, align 8
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = load %struct.atlas_data*, %struct.atlas_data** %6, align 8
  %84 = getelementptr inbounds %struct.atlas_data, %struct.atlas_data* %83, i32 0, i32 4
  store %struct.i2c_client* %82, %struct.i2c_client** %84, align 8
  %85 = load %struct.iio_trigger*, %struct.iio_trigger** %9, align 8
  %86 = load %struct.atlas_data*, %struct.atlas_data** %6, align 8
  %87 = getelementptr inbounds %struct.atlas_data, %struct.atlas_data* %86, i32 0, i32 0
  store %struct.iio_trigger* %85, %struct.iio_trigger** %87, align 8
  %88 = load %struct.atlas_device*, %struct.atlas_device** %7, align 8
  %89 = load %struct.atlas_data*, %struct.atlas_data** %6, align 8
  %90 = getelementptr inbounds %struct.atlas_data, %struct.atlas_data* %89, i32 0, i32 3
  store %struct.atlas_device* %88, %struct.atlas_device** %90, align 8
  %91 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %92 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.iio_trigger*, %struct.iio_trigger** %9, align 8
  %96 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store i32* %94, i32** %97, align 8
  %98 = load %struct.iio_trigger*, %struct.iio_trigger** %9, align 8
  %99 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %98, i32 0, i32 0
  store i32* @atlas_interrupt_trigger_ops, i32** %99, align 8
  %100 = load %struct.iio_trigger*, %struct.iio_trigger** %9, align 8
  %101 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %102 = call i32 @iio_trigger_set_drvdata(%struct.iio_trigger* %100, %struct.iio_dev* %101)
  %103 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %104 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %105 = call i32 @i2c_set_clientdata(%struct.i2c_client* %103, %struct.iio_dev* %104)
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %106, i32* @atlas_regmap_config)
  %108 = load %struct.atlas_data*, %struct.atlas_data** %6, align 8
  %109 = getelementptr inbounds %struct.atlas_data, %struct.atlas_data* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.atlas_data*, %struct.atlas_data** %6, align 8
  %111 = getelementptr inbounds %struct.atlas_data, %struct.atlas_data* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @IS_ERR(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %79
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 1
  %118 = call i32 (i32*, i8*, ...) @dev_err(i32* %117, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %119 = load %struct.atlas_data*, %struct.atlas_data** %6, align 8
  %120 = getelementptr inbounds %struct.atlas_data, %struct.atlas_data* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @PTR_ERR(i32 %121)
  store i32 %122, i32* %3, align 4
  br label %242

123:                                              ; preds = %79
  %124 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %125 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %124, i32 0, i32 1
  %126 = call i32 @pm_runtime_set_active(i32* %125)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %3, align 4
  br label %242

131:                                              ; preds = %123
  %132 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %133 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp sle i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %138 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %137, i32 0, i32 1
  %139 = call i32 (i32*, i8*, ...) @dev_err(i32* %138, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %242

142:                                              ; preds = %131
  %143 = load %struct.atlas_device*, %struct.atlas_device** %7, align 8
  %144 = getelementptr inbounds %struct.atlas_device, %struct.atlas_device* %143, i32 0, i32 0
  %145 = load i32 (%struct.atlas_data.0*)*, i32 (%struct.atlas_data.0*)** %144, align 8
  %146 = load %struct.atlas_data*, %struct.atlas_data** %6, align 8
  %147 = bitcast %struct.atlas_data* %146 to %struct.atlas_data.0*
  %148 = call i32 %145(%struct.atlas_data.0* %147)
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %142
  %152 = load i32, i32* %11, align 4
  store i32 %152, i32* %3, align 4
  br label %242

153:                                              ; preds = %142
  %154 = load %struct.iio_trigger*, %struct.iio_trigger** %9, align 8
  %155 = call i32 @iio_trigger_register(%struct.iio_trigger* %154)
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %160 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %159, i32 0, i32 1
  %161 = call i32 (i32*, i8*, ...) @dev_err(i32* %160, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %162 = load i32, i32* %11, align 4
  store i32 %162, i32* %3, align 4
  br label %242

163:                                              ; preds = %153
  %164 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %165 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %164, i32* @iio_pollfunc_store_time, i32* @atlas_trigger_handler, i32* @atlas_buffer_setup_ops)
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %170 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %169, i32 0, i32 1
  %171 = call i32 (i32*, i8*, ...) @dev_err(i32* %170, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %236

172:                                              ; preds = %163
  %173 = load %struct.atlas_data*, %struct.atlas_data** %6, align 8
  %174 = getelementptr inbounds %struct.atlas_data, %struct.atlas_data* %173, i32 0, i32 1
  %175 = load i32, i32* @atlas_work_handler, align 4
  %176 = call i32 @init_irq_work(i32* %174, i32 %175)
  %177 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %178 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %177, i32 0, i32 1
  %179 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %180 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* @atlas_interrupt_handler, align 4
  %183 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %184 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @IRQF_ONESHOT, align 4
  %187 = or i32 %185, %186
  %188 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %189 = call i32 @devm_request_threaded_irq(i32* %178, i64 %181, i32* null, i32 %182, i32 %187, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.iio_dev* %188)
  store i32 %189, i32* %11, align 4
  %190 = load i32, i32* %11, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %172
  %193 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %194 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %193, i32 0, i32 1
  %195 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %196 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = call i32 (i32*, i8*, ...) @dev_err(i32* %194, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i64 %197)
  br label %233

199:                                              ; preds = %172
  %200 = load %struct.atlas_data*, %struct.atlas_data** %6, align 8
  %201 = call i32 @atlas_set_powermode(%struct.atlas_data* %200, i32 1)
  store i32 %201, i32* %11, align 4
  %202 = load i32, i32* %11, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %199
  %205 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %206 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %205, i32 0, i32 1
  %207 = call i32 (i32*, i8*, ...) @dev_err(i32* %206, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %233

208:                                              ; preds = %199
  %209 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %210 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %209, i32 0, i32 1
  %211 = call i32 @pm_runtime_enable(i32* %210)
  %212 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %213 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %212, i32 0, i32 1
  %214 = call i32 @pm_runtime_set_autosuspend_delay(i32* %213, i32 2500)
  %215 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %216 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %215, i32 0, i32 1
  %217 = call i32 @pm_runtime_use_autosuspend(i32* %216)
  %218 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %219 = call i32 @iio_device_register(%struct.iio_dev* %218)
  store i32 %219, i32* %11, align 4
  %220 = load i32, i32* %11, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %208
  %223 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %224 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %223, i32 0, i32 1
  %225 = call i32 (i32*, i8*, ...) @dev_err(i32* %224, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %227

226:                                              ; preds = %208
  store i32 0, i32* %3, align 4
  br label %242

227:                                              ; preds = %222
  %228 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %229 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %228, i32 0, i32 1
  %230 = call i32 @pm_runtime_disable(i32* %229)
  %231 = load %struct.atlas_data*, %struct.atlas_data** %6, align 8
  %232 = call i32 @atlas_set_powermode(%struct.atlas_data* %231, i32 0)
  br label %233

233:                                              ; preds = %227, %204, %192
  %234 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %235 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %234)
  br label %236

236:                                              ; preds = %233, %168
  %237 = load %struct.atlas_data*, %struct.atlas_data** %6, align 8
  %238 = getelementptr inbounds %struct.atlas_data, %struct.atlas_data* %237, i32 0, i32 0
  %239 = load %struct.iio_trigger*, %struct.iio_trigger** %238, align 8
  %240 = call i32 @iio_trigger_unregister(%struct.iio_trigger* %239)
  %241 = load i32, i32* %11, align 4
  store i32 %241, i32* %3, align 4
  br label %242

242:                                              ; preds = %236, %226, %158, %151, %136, %129, %115, %76, %17
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local %struct.iio_trigger* @devm_iio_trigger_alloc(i32*, i8*, i32, i32) #1

declare dso_local %struct.atlas_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.iio_trigger*, %struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @iio_trigger_register(%struct.iio_trigger*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32*, i32*) #1

declare dso_local i32 @init_irq_work(i32*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32*, i32, i32, i8*, %struct.iio_dev*) #1

declare dso_local i32 @atlas_set_powermode(%struct.atlas_data*, i32) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_unregister(%struct.iio_trigger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
