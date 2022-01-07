; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-hub.c_sensor_hub_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-hub.c_sensor_hub_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.hid_collection* }
%struct.hid_collection = type { i32 }
%struct.hid_report = type { i64, i32, %struct.TYPE_6__**, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.sensor_hub_data = type { i32 }
%struct.hid_sensor_hub_callbacks = type { i32, i32 (%struct.hid_sensor_hub_device*, i32, i32)*, i32 (%struct.hid_sensor_hub_device*, i64, i32, i32*, i32)* }
%struct.hid_sensor_hub_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [53 x i8] c"sensor_hub_raw_event report id:0x%x size:%d type:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"maxfield:%d\0A\00", align 1
@HID_INPUT_REPORT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"%d collection_index:%x hid:%x sz:%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"collection->usage %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"data was pending ...\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*, i32*, i32)* @sensor_hub_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sensor_hub_raw_event(%struct.hid_device* %0, %struct.hid_report* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_report*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sensor_hub_data*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.hid_sensor_hub_callbacks*, align 8
  %16 = alloca %struct.hid_collection*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.hid_sensor_hub_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_report* %1, %struct.hid_report** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %20 = call %struct.sensor_hub_data* @hid_get_drvdata(%struct.hid_device* %19)
  store %struct.sensor_hub_data* %20, %struct.sensor_hub_data** %13, align 8
  store %struct.hid_sensor_hub_callbacks* null, %struct.hid_sensor_hub_callbacks** %15, align 8
  store %struct.hid_collection* null, %struct.hid_collection** %16, align 8
  store i8* null, i8** %17, align 8
  store %struct.hid_sensor_hub_device* null, %struct.hid_sensor_hub_device** %18, align 8
  %21 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %22 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %23 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %27 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (%struct.hid_device*, i8*, ...) @hid_dbg(%struct.hid_device* %21, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i64 %28)
  %30 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %31 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %32 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (%struct.hid_device*, i8*, ...) @hid_dbg(%struct.hid_device* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %36 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @HID_INPUT_REPORT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %333

41:                                               ; preds = %4
  %42 = load i32*, i32** %8, align 8
  store i32* %42, i32** %11, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %11, align 8
  %45 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %13, align 8
  %46 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %45, i32 0, i32 0
  %47 = load i64, i64* %14, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %302, %41
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %52 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %305

55:                                               ; preds = %49
  %56 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %59 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %58, i32 0, i32 2
  %60 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %60, i64 %62
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %70 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %69, i32 0, i32 2
  %71 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %71, i64 %73
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %81 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %80, i32 0, i32 2
  %82 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %82, i64 %84
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %90 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %89, i32 0, i32 2
  %91 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %91, i64 %93
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %88, %97
  %99 = sdiv i32 %98, 8
  %100 = call i32 (%struct.hid_device*, i8*, ...) @hid_dbg(%struct.hid_device* %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %57, i64 %68, i64 %79, i32 %99)
  %101 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %102 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %101, i32 0, i32 2
  %103 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %103, i64 %105
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %111 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %110, i32 0, i32 2
  %112 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %112, i64 %114
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %109, %118
  %120 = sdiv i32 %119, 8
  store i32 %120, i32* %12, align 4
  %121 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %122 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %121, i32 0, i32 0
  %123 = load %struct.hid_collection*, %struct.hid_collection** %122, align 8
  %124 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %125 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %124, i32 0, i32 2
  %126 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %126, i64 %128
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %123, i64 %134
  store %struct.hid_collection* %135, %struct.hid_collection** %16, align 8
  %136 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %137 = load %struct.hid_collection*, %struct.hid_collection** %16, align 8
  %138 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (%struct.hid_device*, i8*, ...) @hid_dbg(%struct.hid_device* %136, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  %141 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %142 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %143 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %142, i32 0, i32 2
  %144 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %144, i64 %146
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %152 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %151, i32 0, i32 2
  %153 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %152, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %153, i64 %155
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 3
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call %struct.hid_sensor_hub_callbacks* @sensor_hub_get_callback(%struct.hid_device* %141, i32 %150, i64 %162, %struct.hid_sensor_hub_device** %18, i8** %17)
  store %struct.hid_sensor_hub_callbacks* %163, %struct.hid_sensor_hub_callbacks** %15, align 8
  %164 = load %struct.hid_sensor_hub_callbacks*, %struct.hid_sensor_hub_callbacks** %15, align 8
  %165 = icmp ne %struct.hid_sensor_hub_callbacks* %164, null
  br i1 %165, label %171, label %166

166:                                              ; preds = %55
  %167 = load i32, i32* %12, align 4
  %168 = load i32*, i32** %11, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32* %170, i32** %11, align 8
  br label %302

171:                                              ; preds = %55
  %172 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %18, align 8
  %173 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %238

177:                                              ; preds = %171
  %178 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %18, align 8
  %179 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %183 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %182, i32 0, i32 2
  %184 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %183, align 8
  %185 = load i32, i32* %10, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %184, i64 %186
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp eq i64 %181, %192
  br i1 %193, label %209, label %194

194:                                              ; preds = %177
  %195 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %18, align 8
  %196 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %200 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %199, i32 0, i32 2
  %201 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %200, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %201, i64 %203
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %198, %207
  br i1 %208, label %209, label %238

209:                                              ; preds = %194, %177
  %210 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %211 = call i32 (%struct.hid_device*, i8*, ...) @hid_dbg(%struct.hid_device* %210, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %212 = load i32*, i32** %11, align 8
  %213 = load i32, i32* %12, align 4
  %214 = load i32, i32* @GFP_ATOMIC, align 4
  %215 = call i64 @kmemdup(i32* %212, i32 %213, i32 %214)
  %216 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %18, align 8
  %217 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 3
  store i64 %215, i64* %218, align 8
  %219 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %18, align 8
  %220 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %209
  %225 = load i32, i32* %12, align 4
  %226 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %18, align 8
  %227 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 1
  store i32 %225, i32* %228, align 8
  br label %233

229:                                              ; preds = %209
  %230 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %18, align 8
  %231 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  store i32 0, i32* %232, align 8
  br label %233

233:                                              ; preds = %229, %224
  %234 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %18, align 8
  %235 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 2
  %237 = call i32 @complete(i32* %236)
  br label %238

238:                                              ; preds = %233, %194, %171
  %239 = load %struct.hid_sensor_hub_callbacks*, %struct.hid_sensor_hub_callbacks** %15, align 8
  %240 = getelementptr inbounds %struct.hid_sensor_hub_callbacks, %struct.hid_sensor_hub_callbacks* %239, i32 0, i32 2
  %241 = load i32 (%struct.hid_sensor_hub_device*, i64, i32, i32*, i32)*, i32 (%struct.hid_sensor_hub_device*, i64, i32, i32*, i32)** %240, align 8
  %242 = icmp ne i32 (%struct.hid_sensor_hub_device*, i64, i32, i32*, i32)* %241, null
  br i1 %242, label %243, label %297

243:                                              ; preds = %238
  %244 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %245 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %244, i32 0, i32 2
  %246 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %245, align 8
  %247 = load i32, i32* %10, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %246, i64 %248
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %274

254:                                              ; preds = %243
  %255 = load %struct.hid_sensor_hub_callbacks*, %struct.hid_sensor_hub_callbacks** %15, align 8
  %256 = getelementptr inbounds %struct.hid_sensor_hub_callbacks, %struct.hid_sensor_hub_callbacks* %255, i32 0, i32 2
  %257 = load i32 (%struct.hid_sensor_hub_device*, i64, i32, i32*, i32)*, i32 (%struct.hid_sensor_hub_device*, i64, i32, i32*, i32)** %256, align 8
  %258 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %18, align 8
  %259 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %260 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %259, i32 0, i32 2
  %261 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %260, align 8
  %262 = load i32, i32* %10, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %261, i64 %263
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = load i32, i32* %12, align 4
  %269 = load i32*, i32** %11, align 8
  %270 = load %struct.hid_sensor_hub_callbacks*, %struct.hid_sensor_hub_callbacks** %15, align 8
  %271 = getelementptr inbounds %struct.hid_sensor_hub_callbacks, %struct.hid_sensor_hub_callbacks* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = call i32 %257(%struct.hid_sensor_hub_device* %258, i64 %267, i32 %268, i32* %269, i32 %272)
  br label %296

274:                                              ; preds = %243
  %275 = load %struct.hid_sensor_hub_callbacks*, %struct.hid_sensor_hub_callbacks** %15, align 8
  %276 = getelementptr inbounds %struct.hid_sensor_hub_callbacks, %struct.hid_sensor_hub_callbacks* %275, i32 0, i32 2
  %277 = load i32 (%struct.hid_sensor_hub_device*, i64, i32, i32*, i32)*, i32 (%struct.hid_sensor_hub_device*, i64, i32, i32*, i32)** %276, align 8
  %278 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %18, align 8
  %279 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %280 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %279, i32 0, i32 2
  %281 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %280, align 8
  %282 = load i32, i32* %10, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %281, i64 %283
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 3
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = load i32, i32* %12, align 4
  %291 = load i32*, i32** %11, align 8
  %292 = load %struct.hid_sensor_hub_callbacks*, %struct.hid_sensor_hub_callbacks** %15, align 8
  %293 = getelementptr inbounds %struct.hid_sensor_hub_callbacks, %struct.hid_sensor_hub_callbacks* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = call i32 %277(%struct.hid_sensor_hub_device* %278, i64 %289, i32 %290, i32* %291, i32 %294)
  br label %296

296:                                              ; preds = %274, %254
  br label %297

297:                                              ; preds = %296, %238
  %298 = load i32, i32* %12, align 4
  %299 = load i32*, i32** %11, align 8
  %300 = sext i32 %298 to i64
  %301 = getelementptr inbounds i32, i32* %299, i64 %300
  store i32* %301, i32** %11, align 8
  br label %302

302:                                              ; preds = %297, %166
  %303 = load i32, i32* %10, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %10, align 4
  br label %49

305:                                              ; preds = %49
  %306 = load %struct.hid_sensor_hub_callbacks*, %struct.hid_sensor_hub_callbacks** %15, align 8
  %307 = icmp ne %struct.hid_sensor_hub_callbacks* %306, null
  br i1 %307, label %308, label %328

308:                                              ; preds = %305
  %309 = load %struct.hid_collection*, %struct.hid_collection** %16, align 8
  %310 = icmp ne %struct.hid_collection* %309, null
  br i1 %310, label %311, label %328

311:                                              ; preds = %308
  %312 = load %struct.hid_sensor_hub_callbacks*, %struct.hid_sensor_hub_callbacks** %15, align 8
  %313 = getelementptr inbounds %struct.hid_sensor_hub_callbacks, %struct.hid_sensor_hub_callbacks* %312, i32 0, i32 1
  %314 = load i32 (%struct.hid_sensor_hub_device*, i32, i32)*, i32 (%struct.hid_sensor_hub_device*, i32, i32)** %313, align 8
  %315 = icmp ne i32 (%struct.hid_sensor_hub_device*, i32, i32)* %314, null
  br i1 %315, label %316, label %328

316:                                              ; preds = %311
  %317 = load %struct.hid_sensor_hub_callbacks*, %struct.hid_sensor_hub_callbacks** %15, align 8
  %318 = getelementptr inbounds %struct.hid_sensor_hub_callbacks, %struct.hid_sensor_hub_callbacks* %317, i32 0, i32 1
  %319 = load i32 (%struct.hid_sensor_hub_device*, i32, i32)*, i32 (%struct.hid_sensor_hub_device*, i32, i32)** %318, align 8
  %320 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %18, align 8
  %321 = load %struct.hid_collection*, %struct.hid_collection** %16, align 8
  %322 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.hid_sensor_hub_callbacks*, %struct.hid_sensor_hub_callbacks** %15, align 8
  %325 = getelementptr inbounds %struct.hid_sensor_hub_callbacks, %struct.hid_sensor_hub_callbacks* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = call i32 %319(%struct.hid_sensor_hub_device* %320, i32 %323, i32 %326)
  br label %328

328:                                              ; preds = %316, %311, %308, %305
  %329 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %13, align 8
  %330 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %329, i32 0, i32 0
  %331 = load i64, i64* %14, align 8
  %332 = call i32 @spin_unlock_irqrestore(i32* %330, i64 %331)
  store i32 1, i32* %5, align 4
  br label %333

333:                                              ; preds = %328, %40
  %334 = load i32, i32* %5, align 4
  ret i32 %334
}

declare dso_local %struct.sensor_hub_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_dbg(%struct.hid_device*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.hid_sensor_hub_callbacks* @sensor_hub_get_callback(%struct.hid_device*, i32, i64, %struct.hid_sensor_hub_device**, i8**) #1

declare dso_local i64 @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
