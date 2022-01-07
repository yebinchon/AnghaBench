; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_as3935.c_as3935_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_as3935.c_as3935_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.iio_dev = type { %struct.TYPE_15__, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.iio_trigger = type { i32*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.as3935_state = type { i64, i64, i32, i64, %struct.iio_trigger*, i32, %struct.spi_device* }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"unable to get event interrupt\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ams,tuning-capacitor-pf\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"no tuning-capacitor-pf set, defaulting to %d\00", align 1
@MAX_PF_CAP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"wrong tuning-capacitor-pf setting of %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"ams,nflwdth\00", align 1
@AS3935_NFLWDTH_MASK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"invalid nflwdth setting of %d\0A\00", align 1
@as3935_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@as3935_info = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@iio_interrupt_trigger_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to register trigger\0A\00", align 1
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@as3935_trigger_handler = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"cannot setup iio trigger\0A\00", align 1
@as3935_event_work = common dso_local global i32 0, align 4
@as3935_stop_work = common dso_local global i32 0, align 4
@as3935_interrupt_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"unable to request irq\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"unable to register device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @as3935_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3935_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.iio_trigger*, align 8
  %6 = alloca %struct.as3935_state*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %7, align 8
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  %20 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %228

23:                                               ; preds = %1
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 0
  %26 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_17__* %25, i32 56)
  store %struct.iio_dev* %26, %struct.iio_dev** %4, align 8
  %27 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %28 = icmp ne %struct.iio_dev* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %228

32:                                               ; preds = %23
  %33 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %34 = call %struct.as3935_state* @iio_priv(%struct.iio_dev* %33)
  store %struct.as3935_state* %34, %struct.as3935_state** %6, align 8
  %35 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %36 = load %struct.as3935_state*, %struct.as3935_state** %6, align 8
  %37 = getelementptr inbounds %struct.as3935_state, %struct.as3935_state* %36, i32 0, i32 6
  store %struct.spi_device* %35, %struct.spi_device** %37, align 8
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %40 = call i32 @spi_set_drvdata(%struct.spi_device* %38, %struct.iio_dev* %39)
  %41 = load %struct.as3935_state*, %struct.as3935_state** %6, align 8
  %42 = getelementptr inbounds %struct.as3935_state, %struct.as3935_state* %41, i32 0, i32 5
  %43 = call i32 @mutex_init(i32* %42)
  %44 = load %struct.device_node*, %struct.device_node** %7, align 8
  %45 = load %struct.as3935_state*, %struct.as3935_state** %6, align 8
  %46 = getelementptr inbounds %struct.as3935_state, %struct.as3935_state* %45, i32 0, i32 0
  %47 = call i32 @of_property_read_u32(%struct.device_node* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %32
  %51 = load %struct.as3935_state*, %struct.as3935_state** %6, align 8
  %52 = getelementptr inbounds %struct.as3935_state, %struct.as3935_state* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %53, i32 0, i32 0
  %55 = load %struct.as3935_state*, %struct.as3935_state** %6, align 8
  %56 = getelementptr inbounds %struct.as3935_state, %struct.as3935_state* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @dev_warn(%struct.TYPE_17__* %54, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  br label %59

59:                                               ; preds = %50, %32
  %60 = load %struct.as3935_state*, %struct.as3935_state** %6, align 8
  %61 = getelementptr inbounds %struct.as3935_state, %struct.as3935_state* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MAX_PF_CAP, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %67 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %66, i32 0, i32 0
  %68 = load %struct.as3935_state*, %struct.as3935_state** %6, align 8
  %69 = getelementptr inbounds %struct.as3935_state, %struct.as3935_state* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %228

74:                                               ; preds = %59
  %75 = load %struct.device_node*, %struct.device_node** %7, align 8
  %76 = load %struct.as3935_state*, %struct.as3935_state** %6, align 8
  %77 = getelementptr inbounds %struct.as3935_state, %struct.as3935_state* %76, i32 0, i32 1
  %78 = call i32 @of_property_read_u32(%struct.device_node* %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %96, label %81

81:                                               ; preds = %74
  %82 = load %struct.as3935_state*, %struct.as3935_state** %6, align 8
  %83 = getelementptr inbounds %struct.as3935_state, %struct.as3935_state* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @AS3935_NFLWDTH_MASK, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %89 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %88, i32 0, i32 0
  %90 = load %struct.as3935_state*, %struct.as3935_state** %6, align 8
  %91 = getelementptr inbounds %struct.as3935_state, %struct.as3935_state* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %228

96:                                               ; preds = %81, %74
  %97 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %98 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %97, i32 0, i32 0
  %99 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %100 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  store %struct.TYPE_17__* %98, %struct.TYPE_17__** %101, align 8
  %102 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %103 = call %struct.TYPE_16__* @spi_get_device_id(%struct.spi_device* %102)
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %107 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @as3935_channels, align 4
  %109 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %110 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @as3935_channels, align 4
  %112 = call i32 @ARRAY_SIZE(i32 %111)
  %113 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %114 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %116 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %117 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 8
  %118 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %119 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %118, i32 0, i32 3
  store i32* @as3935_info, i32** %119, align 8
  %120 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %121 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %120, i32 0, i32 0
  %122 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %123 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %126 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call %struct.iio_trigger* @devm_iio_trigger_alloc(%struct.TYPE_17__* %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %124, i32 %127)
  store %struct.iio_trigger* %128, %struct.iio_trigger** %5, align 8
  %129 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %130 = icmp ne %struct.iio_trigger* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %96
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %228

134:                                              ; preds = %96
  %135 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %136 = load %struct.as3935_state*, %struct.as3935_state** %6, align 8
  %137 = getelementptr inbounds %struct.as3935_state, %struct.as3935_state* %136, i32 0, i32 4
  store %struct.iio_trigger* %135, %struct.iio_trigger** %137, align 8
  %138 = load i64, i64* @jiffies, align 8
  %139 = load i64, i64* @HZ, align 8
  %140 = sub nsw i64 %138, %139
  %141 = load %struct.as3935_state*, %struct.as3935_state** %6, align 8
  %142 = getelementptr inbounds %struct.as3935_state, %struct.as3935_state* %141, i32 0, i32 3
  store i64 %140, i64* %142, align 8
  %143 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %144 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  %147 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %148 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  store %struct.TYPE_17__* %146, %struct.TYPE_17__** %149, align 8
  %150 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %151 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %152 = call i32 @iio_trigger_set_drvdata(%struct.iio_trigger* %150, %struct.iio_dev* %151)
  %153 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %154 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %153, i32 0, i32 0
  store i32* @iio_interrupt_trigger_ops, i32** %154, align 8
  %155 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %156 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %155, i32 0, i32 0
  %157 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %158 = call i32 @devm_iio_trigger_register(%struct.TYPE_17__* %156, %struct.iio_trigger* %157)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %134
  %162 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %163 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %162, i32 0, i32 0
  %164 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %163, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %2, align 4
  br label %228

166:                                              ; preds = %134
  %167 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %168 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %167, i32 0, i32 0
  %169 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %170 = load i32, i32* @iio_pollfunc_store_time, align 4
  %171 = load i32, i32* @as3935_trigger_handler, align 4
  %172 = call i32 @devm_iio_triggered_buffer_setup(%struct.TYPE_17__* %168, %struct.iio_dev* %169, i32 %170, i32 %171, i32* null)
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %8, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %166
  %176 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %177 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %176, i32 0, i32 0
  %178 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %177, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %179 = load i32, i32* %8, align 4
  store i32 %179, i32* %2, align 4
  br label %228

180:                                              ; preds = %166
  %181 = load %struct.as3935_state*, %struct.as3935_state** %6, align 8
  %182 = call i32 @calibrate_as3935(%struct.as3935_state* %181)
  %183 = load %struct.as3935_state*, %struct.as3935_state** %6, align 8
  %184 = getelementptr inbounds %struct.as3935_state, %struct.as3935_state* %183, i32 0, i32 2
  %185 = load i32, i32* @as3935_event_work, align 4
  %186 = call i32 @INIT_DELAYED_WORK(i32* %184, i32 %185)
  %187 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %188 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %187, i32 0, i32 0
  %189 = load i32, i32* @as3935_stop_work, align 4
  %190 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %191 = call i32 @devm_add_action(%struct.TYPE_17__* %188, i32 %189, %struct.iio_dev* %190)
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %8, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %180
  %195 = load i32, i32* %8, align 4
  store i32 %195, i32* %2, align 4
  br label %228

196:                                              ; preds = %180
  %197 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %198 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %197, i32 0, i32 0
  %199 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %200 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %203 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %204 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %203, i32 0, i32 0
  %205 = call i32 @dev_name(%struct.TYPE_17__* %204)
  %206 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %207 = call i32 @devm_request_irq(%struct.TYPE_17__* %198, i32 %201, i32* @as3935_interrupt_handler, i32 %202, i32 %205, %struct.iio_dev* %206)
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %8, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %196
  %211 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %212 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %211, i32 0, i32 0
  %213 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %212, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %214 = load i32, i32* %8, align 4
  store i32 %214, i32* %2, align 4
  br label %228

215:                                              ; preds = %196
  %216 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %217 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %216, i32 0, i32 0
  %218 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %219 = call i32 @devm_iio_device_register(%struct.TYPE_17__* %217, %struct.iio_dev* %218)
  store i32 %219, i32* %8, align 4
  %220 = load i32, i32* %8, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %215
  %223 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %224 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %223, i32 0, i32 0
  %225 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %224, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %226 = load i32, i32* %8, align 4
  store i32 %226, i32* %2, align 4
  br label %228

227:                                              ; preds = %215
  store i32 0, i32* %2, align 4
  br label %228

228:                                              ; preds = %227, %222, %210, %194, %175, %161, %131, %87, %65, %29, %17
  %229 = load i32, i32* %2, align 4
  ret i32 %229
}

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*, ...) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.as3935_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_17__*, i8*, i64) #1

declare dso_local %struct.TYPE_16__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.iio_trigger* @devm_iio_trigger_alloc(%struct.TYPE_17__*, i8*, i32, i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.iio_trigger*, %struct.iio_dev*) #1

declare dso_local i32 @devm_iio_trigger_register(%struct.TYPE_17__*, %struct.iio_trigger*) #1

declare dso_local i32 @devm_iio_triggered_buffer_setup(%struct.TYPE_17__*, %struct.iio_dev*, i32, i32, i32*) #1

declare dso_local i32 @calibrate_as3935(%struct.as3935_state*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @devm_add_action(%struct.TYPE_17__*, i32, %struct.iio_dev*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_17__*, i32, i32*, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @dev_name(%struct.TYPE_17__*) #1

declare dso_local i32 @devm_iio_device_register(%struct.TYPE_17__*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
