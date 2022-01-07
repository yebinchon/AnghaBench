; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad799x.c_ad799x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad799x.c_ad799x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad799x_chip_info = type { i32, %struct.TYPE_7__, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.i2c_client = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.i2c_device_id = type { i64, i32 }
%struct.ad799x_state = type { i64, i32, i8*, i8*, %struct.TYPE_7__*, %struct.i2c_client* }
%struct.iio_dev = type { i32, i32, i32, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__* }

@ad799x_chip_info_tbl = common dso_local global %struct.ad799x_chip_info* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ad799x_trigger_handler = common dso_local global i32 0, align 4
@ad799x_event_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ad799x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad799x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ad799x_state*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.ad799x_chip_info*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.ad799x_chip_info*, %struct.ad799x_chip_info** @ad799x_chip_info_tbl, align 8
  %11 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.ad799x_chip_info, %struct.ad799x_chip_info* %10, i64 %13
  store %struct.ad799x_chip_info* %14, %struct.ad799x_chip_info** %9, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 2
  %17 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_8__* %16, i32 48)
  store %struct.iio_dev* %17, %struct.iio_dev** %8, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %19 = icmp eq %struct.iio_dev* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %216

23:                                               ; preds = %2
  %24 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %25 = call %struct.ad799x_state* @iio_priv(%struct.iio_dev* %24)
  store %struct.ad799x_state* %25, %struct.ad799x_state** %7, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %28 = call i32 @i2c_set_clientdata(%struct.i2c_client* %26, %struct.iio_dev* %27)
  %29 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %30 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %33 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %23
  %39 = load %struct.ad799x_chip_info*, %struct.ad799x_chip_info** %9, align 8
  %40 = getelementptr inbounds %struct.ad799x_chip_info, %struct.ad799x_chip_info* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.ad799x_chip_info*, %struct.ad799x_chip_info** %9, align 8
  %46 = getelementptr inbounds %struct.ad799x_chip_info, %struct.ad799x_chip_info* %45, i32 0, i32 2
  %47 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %48 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %47, i32 0, i32 4
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %48, align 8
  br label %54

49:                                               ; preds = %38, %23
  %50 = load %struct.ad799x_chip_info*, %struct.ad799x_chip_info** %9, align 8
  %51 = getelementptr inbounds %struct.ad799x_chip_info, %struct.ad799x_chip_info* %50, i32 0, i32 1
  %52 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %53 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %52, i32 0, i32 4
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %53, align 8
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 2
  %57 = call i8* @devm_regulator_get(%struct.TYPE_8__* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %59 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %61 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @IS_ERR(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %54
  %66 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %67 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @PTR_ERR(i8* %68)
  store i32 %69, i32* %3, align 4
  br label %216

70:                                               ; preds = %54
  %71 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %72 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @regulator_enable(i8* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %216

79:                                               ; preds = %70
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 2
  %82 = call i8* @devm_regulator_get(%struct.TYPE_8__* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %84 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %86 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %85, i32 0, i32 3
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @IS_ERR(i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %79
  %91 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %92 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @PTR_ERR(i8* %93)
  store i32 %94, i32* %6, align 4
  br label %210

95:                                               ; preds = %79
  %96 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %97 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %96, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @regulator_enable(i8* %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %210

103:                                              ; preds = %95
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %106 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %105, i32 0, i32 5
  store %struct.i2c_client* %104, %struct.i2c_client** %106, align 8
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %107, i32 0, i32 2
  %109 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %110 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  store %struct.TYPE_8__* %108, %struct.TYPE_8__** %111, align 8
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %117 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 8
  %119 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %120 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %123 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 8
  %124 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %125 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %124, i32 0, i32 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %130 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %129, i32 0, i32 3
  store i64 %128, i64* %130, align 8
  %131 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %132 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %133 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %135 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %134, i32 0, i32 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %140 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.ad799x_chip_info*, %struct.ad799x_chip_info** %9, align 8
  %142 = getelementptr inbounds %struct.ad799x_chip_info, %struct.ad799x_chip_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %145 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %147 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %148 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %147, i32 0, i32 4
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @ad799x_write_config(%struct.ad799x_state* %146, i32 %151)
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %103
  br label %205

156:                                              ; preds = %103
  %157 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %158 = call i32 @ad799x_read_config(%struct.ad799x_state* %157)
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %205

162:                                              ; preds = %156
  %163 = load i32, i32* %6, align 4
  %164 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %165 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 8
  %166 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %167 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %166, i32* null, i32* @ad799x_trigger_handler, i32* null)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  br label %205

171:                                              ; preds = %162
  %172 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %173 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp sgt i64 %174, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %171
  %177 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %178 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %177, i32 0, i32 2
  %179 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %180 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* @ad799x_event_handler, align 4
  %183 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %184 = load i32, i32* @IRQF_ONESHOT, align 4
  %185 = or i32 %183, %184
  %186 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %187 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %190 = call i32 @devm_request_threaded_irq(%struct.TYPE_8__* %178, i64 %181, i32* null, i32 %182, i32 %185, i32 %188, %struct.iio_dev* %189)
  store i32 %190, i32* %6, align 4
  %191 = load i32, i32* %6, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %176
  br label %202

194:                                              ; preds = %176
  br label %195

195:                                              ; preds = %194, %171
  %196 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %197 = call i32 @iio_device_register(%struct.iio_dev* %196)
  store i32 %197, i32* %6, align 4
  %198 = load i32, i32* %6, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %202

201:                                              ; preds = %195
  store i32 0, i32* %3, align 4
  br label %216

202:                                              ; preds = %200, %193
  %203 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %204 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %203)
  br label %205

205:                                              ; preds = %202, %170, %161, %155
  %206 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %207 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %206, i32 0, i32 3
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @regulator_disable(i8* %208)
  br label %210

210:                                              ; preds = %205, %102, %90
  %211 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %212 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %211, i32 0, i32 2
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @regulator_disable(i8* %213)
  %215 = load i32, i32* %6, align 4
  store i32 %215, i32* %3, align 4
  br label %216

216:                                              ; preds = %210, %201, %77, %65, %20
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.ad799x_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i8* @devm_regulator_get(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @regulator_enable(i8*) #1

declare dso_local i32 @ad799x_write_config(%struct.ad799x_state*, i32) #1

declare dso_local i32 @ad799x_read_config(%struct.ad799x_state*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32*, i32*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_8__*, i64, i32*, i32, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
