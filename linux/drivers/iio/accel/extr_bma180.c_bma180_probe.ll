; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bma180.c_bma180_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bma180.c_bma180_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (%struct.bma180_data*)*, i32 (%struct.bma180_data*)*, i32, i32 }
%struct.bma180_data = type { %struct.TYPE_16__*, %struct.TYPE_20__*, i32, i32, %struct.i2c_client* }
%struct.TYPE_20__ = type { i32*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }
%struct.i2c_client = type { i64, %struct.TYPE_19__ }
%struct.i2c_device_id = type { i32, i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, i32, i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }

@ENOMEM = common dso_local global i32 0, align 4
@bma180_part_info = common dso_local global %struct.TYPE_16__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"mount-matrix\00", align 1
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@bma180_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@iio_trigger_generic_data_rdy_poll = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"bma180_event\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"unable to request IRQ\0A\00", align 1
@bma180_trigger_ops = common dso_local global i32 0, align 4
@bma180_trigger_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"unable to setup iio triggered buffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"unable to register iio device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @bma180_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bma180_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.bma180_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_19__* %11, i32 32)
  store %struct.iio_dev* %12, %struct.iio_dev** %7, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %219

18:                                               ; preds = %2
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = call %struct.bma180_data* @iio_priv(%struct.iio_dev* %19)
  store %struct.bma180_data* %20, %struct.bma180_data** %6, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %23 = call i32 @i2c_set_clientdata(%struct.i2c_client* %21, %struct.iio_dev* %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.bma180_data*, %struct.bma180_data** %6, align 8
  %26 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %25, i32 0, i32 4
  store %struct.i2c_client* %24, %struct.i2c_client** %26, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %18
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 1
  %35 = call i64 @of_device_get_match_data(%struct.TYPE_19__* %34)
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %8, align 4
  br label %41

37:                                               ; preds = %18
  %38 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %39 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** @bma180_part_info, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i64 %44
  %46 = load %struct.bma180_data*, %struct.bma180_data** %6, align 8
  %47 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %46, i32 0, i32 0
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %47, align 8
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 1
  %50 = load %struct.bma180_data*, %struct.bma180_data** %6, align 8
  %51 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %50, i32 0, i32 3
  %52 = call i32 @iio_read_mount_matrix(%struct.TYPE_19__* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %3, align 4
  br label %219

57:                                               ; preds = %41
  %58 = load %struct.bma180_data*, %struct.bma180_data** %6, align 8
  %59 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %58, i32 0, i32 0
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32 (%struct.bma180_data*)*, i32 (%struct.bma180_data*)** %61, align 8
  %63 = load %struct.bma180_data*, %struct.bma180_data** %6, align 8
  %64 = call i32 %62(%struct.bma180_data* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %210

68:                                               ; preds = %57
  %69 = load %struct.bma180_data*, %struct.bma180_data** %6, align 8
  %70 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %69, i32 0, i32 2
  %71 = call i32 @mutex_init(i32* %70)
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 1
  %74 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %75 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %74, i32 0, i32 7
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  store %struct.TYPE_19__* %73, %struct.TYPE_19__** %76, align 8
  %77 = load %struct.bma180_data*, %struct.bma180_data** %6, align 8
  %78 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %77, i32 0, i32 0
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %83 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 8
  %84 = load %struct.bma180_data*, %struct.bma180_data** %6, align 8
  %85 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %84, i32 0, i32 0
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %90 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 4
  %91 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %92 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %95 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %97 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %98 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %100 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %99, i32 0, i32 3
  store i32* @bma180_info, i32** %100, align 8
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %171

105:                                              ; preds = %68
  %106 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %107 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %110 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call %struct.TYPE_20__* @iio_trigger_alloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %111)
  %113 = load %struct.bma180_data*, %struct.bma180_data** %6, align 8
  %114 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %113, i32 0, i32 1
  store %struct.TYPE_20__* %112, %struct.TYPE_20__** %114, align 8
  %115 = load %struct.bma180_data*, %struct.bma180_data** %6, align 8
  %116 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %115, i32 0, i32 1
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %116, align 8
  %118 = icmp ne %struct.TYPE_20__* %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %105
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %9, align 4
  br label %210

122:                                              ; preds = %105
  %123 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %124 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %123, i32 0, i32 1
  %125 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %126 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* @iio_trigger_generic_data_rdy_poll, align 4
  %129 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %130 = load %struct.bma180_data*, %struct.bma180_data** %6, align 8
  %131 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %130, i32 0, i32 1
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %131, align 8
  %133 = call i32 @devm_request_irq(%struct.TYPE_19__* %124, i64 %127, i32 %128, i32 %129, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_20__* %132)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %122
  %137 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %138 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %137, i32 0, i32 1
  %139 = call i32 @dev_err(%struct.TYPE_19__* %138, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %205

140:                                              ; preds = %122
  %141 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %142 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %141, i32 0, i32 1
  %143 = load %struct.bma180_data*, %struct.bma180_data** %6, align 8
  %144 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %143, i32 0, i32 1
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  store %struct.TYPE_19__* %142, %struct.TYPE_19__** %147, align 8
  %148 = load %struct.bma180_data*, %struct.bma180_data** %6, align 8
  %149 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %148, i32 0, i32 1
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 0
  store i32* @bma180_trigger_ops, i32** %151, align 8
  %152 = load %struct.bma180_data*, %struct.bma180_data** %6, align 8
  %153 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %152, i32 0, i32 1
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %153, align 8
  %155 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %156 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_20__* %154, %struct.iio_dev* %155)
  %157 = load %struct.bma180_data*, %struct.bma180_data** %6, align 8
  %158 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %157, i32 0, i32 1
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %158, align 8
  %160 = call i32 @iio_trigger_get(%struct.TYPE_20__* %159)
  %161 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %162 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load %struct.bma180_data*, %struct.bma180_data** %6, align 8
  %164 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %163, i32 0, i32 1
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %164, align 8
  %166 = call i32 @iio_trigger_register(%struct.TYPE_20__* %165)
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %140
  br label %205

170:                                              ; preds = %140
  br label %171

171:                                              ; preds = %170, %68
  %172 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %173 = load i32, i32* @bma180_trigger_handler, align 4
  %174 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %172, i32* null, i32 %173, i32* null)
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %171
  %178 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %179 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %178, i32 0, i32 1
  %180 = call i32 @dev_err(%struct.TYPE_19__* %179, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %194

181:                                              ; preds = %171
  %182 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %183 = call i32 @iio_device_register(%struct.iio_dev* %182)
  store i32 %183, i32* %9, align 4
  %184 = load i32, i32* %9, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %188 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %187, i32 0, i32 1
  %189 = call i32 @dev_err(%struct.TYPE_19__* %188, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %191

190:                                              ; preds = %181
  store i32 0, i32* %3, align 4
  br label %219

191:                                              ; preds = %186
  %192 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %193 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %192)
  br label %194

194:                                              ; preds = %191, %177
  %195 = load %struct.bma180_data*, %struct.bma180_data** %6, align 8
  %196 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %195, i32 0, i32 1
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %196, align 8
  %198 = icmp ne %struct.TYPE_20__* %197, null
  br i1 %198, label %199, label %204

199:                                              ; preds = %194
  %200 = load %struct.bma180_data*, %struct.bma180_data** %6, align 8
  %201 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %200, i32 0, i32 1
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %201, align 8
  %203 = call i32 @iio_trigger_unregister(%struct.TYPE_20__* %202)
  br label %204

204:                                              ; preds = %199, %194
  br label %205

205:                                              ; preds = %204, %169, %136
  %206 = load %struct.bma180_data*, %struct.bma180_data** %6, align 8
  %207 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %206, i32 0, i32 1
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %207, align 8
  %209 = call i32 @iio_trigger_free(%struct.TYPE_20__* %208)
  br label %210

210:                                              ; preds = %205, %119, %67
  %211 = load %struct.bma180_data*, %struct.bma180_data** %6, align 8
  %212 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %211, i32 0, i32 0
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 1
  %215 = load i32 (%struct.bma180_data*)*, i32 (%struct.bma180_data*)** %214, align 8
  %216 = load %struct.bma180_data*, %struct.bma180_data** %6, align 8
  %217 = call i32 %215(%struct.bma180_data* %216)
  %218 = load i32, i32* %9, align 4
  store i32 %218, i32* %3, align 4
  br label %219

219:                                              ; preds = %210, %190, %55, %15
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.bma180_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_19__*) #1

declare dso_local i32 @iio_read_mount_matrix(%struct.TYPE_19__*, i8*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.TYPE_20__* @iio_trigger_alloc(i8*, i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_19__*, i64, i32, i32, i8*, %struct.TYPE_20__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_20__*, %struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_get(%struct.TYPE_20__*) #1

declare dso_local i32 @iio_trigger_register(%struct.TYPE_20__*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_unregister(%struct.TYPE_20__*) #1

declare dso_local i32 @iio_trigger_free(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
