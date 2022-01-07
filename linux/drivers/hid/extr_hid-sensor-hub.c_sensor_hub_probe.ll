; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-hub.c_sensor_hub_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-hub.c_sensor_hub_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32, i32, i32, %struct.hid_collection*, i32 }
%struct.hid_collection = type { i64, i64 }
%struct.hid_device_id = type { i32 }
%struct.sensor_hub_data = type { i64, %struct.TYPE_3__*, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i8*, i32, %struct.hid_sensor_hub_device* }
%struct.hid_sensor_hub_device = type { i64, i32, i32, i32*, i32, i32, %struct.hid_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cannot allocate Sensor data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@HID_MAX_PHY_DEVICES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Invalid Physical device count\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Failed to allocate memory for mfd cells\0A\00", align 1
@HID_COLLECTION_PHYSICAL = common dso_local global i64 0, align 8
@HID_COLLECTION_APPLICATION = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"cannot allocate hid_sensor_hub_device\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"HID-SENSOR-%x\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Failed MFD device name\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Adding %s:%d\0A\00", align 1
@HID_USAGE_SENSOR_COLLECTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @sensor_hub_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sensor_hub_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sensor_hub_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hid_sensor_hub_device*, align 8
  %12 = alloca %struct.hid_sensor_hub_device*, align 8
  %13 = alloca %struct.hid_sensor_hub_device*, align 8
  %14 = alloca %struct.hid_collection*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  store %struct.hid_sensor_hub_device* null, %struct.hid_sensor_hub_device** %12, align 8
  store %struct.hid_sensor_hub_device* null, %struct.hid_sensor_hub_device** %13, align 8
  %15 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %16 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %15, i32 0, i32 1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @devm_kzalloc(i32* %16, i32 40, i32 %17)
  %19 = bitcast i8* %18 to %struct.sensor_hub_data*
  store %struct.sensor_hub_data* %19, %struct.sensor_hub_data** %7, align 8
  %20 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %7, align 8
  %21 = icmp ne %struct.sensor_hub_data* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %24 = call i32 @hid_err(%struct.hid_device* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %294

27:                                               ; preds = %2
  %28 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %29 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %7, align 8
  %30 = call i32 @hid_set_drvdata(%struct.hid_device* %28, %struct.sensor_hub_data* %29)
  %31 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %32 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %7, align 8
  %35 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %7, align 8
  %37 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %36, i32 0, i32 5
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %7, align 8
  %40 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %39, i32 0, i32 4
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %7, align 8
  %43 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %42, i32 0, i32 3
  %44 = call i32 @mutex_init(i32* %43)
  %45 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %46 = call i32 @hid_parse(%struct.hid_device* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %51 = call i32 @hid_err(%struct.hid_device* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %294

53:                                               ; preds = %27
  %54 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %55 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %54, i32 0, i32 5
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %58 = call i32 @hid_hw_start(%struct.hid_device* %57, i32 0)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %63 = call i32 @hid_err(%struct.hid_device* %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %294

65:                                               ; preds = %53
  %66 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %7, align 8
  %67 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %66, i32 0, i32 2
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %7, align 8
  %70 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  %71 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %72 = call i32 @sensor_hub_get_physical_device_count(%struct.hid_device* %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @HID_MAX_PHY_DEVICES, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %65
  %77 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %78 = call i32 @hid_err(%struct.hid_device* %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %290

81:                                               ; preds = %65
  %82 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %83 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %82, i32 0, i32 1
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call %struct.TYPE_3__* @devm_kcalloc(i32* %83, i32 %84, i32 4, i32 %85)
  %87 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %7, align 8
  %88 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %87, i32 0, i32 1
  store %struct.TYPE_3__* %86, %struct.TYPE_3__** %88, align 8
  %89 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %7, align 8
  %90 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %89, i32 0, i32 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = icmp eq %struct.TYPE_3__* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %81
  %94 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %95 = call i32 @hid_err(%struct.hid_device* %94, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  br label %290

98:                                               ; preds = %81
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %258, %98
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %102 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %261

105:                                              ; preds = %99
  %106 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %107 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %106, i32 0, i32 4
  %108 = load %struct.hid_collection*, %struct.hid_collection** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %108, i64 %110
  store %struct.hid_collection* %111, %struct.hid_collection** %14, align 8
  %112 = load %struct.hid_collection*, %struct.hid_collection** %14, align 8
  %113 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @HID_COLLECTION_PHYSICAL, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %123, label %117

117:                                              ; preds = %105
  %118 = load %struct.hid_collection*, %struct.hid_collection** %14, align 8
  %119 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @HID_COLLECTION_APPLICATION, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %257

123:                                              ; preds = %117, %105
  %124 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %125 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %124, i32 0, i32 1
  %126 = load i32, i32* @GFP_KERNEL, align 4
  %127 = call i8* @devm_kzalloc(i32* %125, i32 40, i32 %126)
  %128 = bitcast i8* %127 to %struct.hid_sensor_hub_device*
  store %struct.hid_sensor_hub_device* %128, %struct.hid_sensor_hub_device** %11, align 8
  %129 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %11, align 8
  %130 = icmp ne %struct.hid_sensor_hub_device* %129, null
  br i1 %130, label %136, label %131

131:                                              ; preds = %123
  %132 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %133 = call i32 @hid_err(%struct.hid_device* %132, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %6, align 4
  br label %290

136:                                              ; preds = %123
  %137 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %138 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %11, align 8
  %139 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %138, i32 0, i32 6
  store %struct.hid_device* %137, %struct.hid_device** %139, align 8
  %140 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %141 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %11, align 8
  %144 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %143, i32 0, i32 5
  store i32 %142, i32* %144, align 4
  %145 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %146 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %11, align 8
  %149 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  %150 = load %struct.hid_collection*, %struct.hid_collection** %14, align 8
  %151 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %11, align 8
  %154 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  %155 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %156 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %155, i32 0, i32 1
  %157 = load i32, i32* @GFP_KERNEL, align 4
  %158 = call i8* @devm_kzalloc(i32* %156, i32 4, i32 %157)
  %159 = bitcast i8* %158 to i32*
  %160 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %11, align 8
  %161 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %160, i32 0, i32 3
  store i32* %159, i32** %161, align 8
  %162 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %11, align 8
  %163 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %136
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %6, align 4
  br label %290

169:                                              ; preds = %136
  %170 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %11, align 8
  %171 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @mutex_init(i32* %172)
  %174 = load i32, i32* %8, align 4
  %175 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %11, align 8
  %176 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 8
  %177 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %12, align 8
  %178 = icmp ne %struct.hid_sensor_hub_device* %177, null
  br i1 %178, label %179, label %183

179:                                              ; preds = %169
  %180 = load i32, i32* %8, align 4
  %181 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %12, align 8
  %182 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 4
  br label %183

183:                                              ; preds = %179, %169
  %184 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %11, align 8
  store %struct.hid_sensor_hub_device* %184, %struct.hid_sensor_hub_device** %12, align 8
  %185 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %186 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %185, i32 0, i32 1
  %187 = load i32, i32* @GFP_KERNEL, align 4
  %188 = load %struct.hid_collection*, %struct.hid_collection** %14, align 8
  %189 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = call i8* @devm_kasprintf(i32* %186, i32 %187, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i64 %190)
  store i8* %191, i8** %9, align 8
  %192 = load i8*, i8** %9, align 8
  %193 = icmp eq i8* %192, null
  br i1 %193, label %194, label %199

194:                                              ; preds = %183
  %195 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %196 = call i32 @hid_err(%struct.hid_device* %195, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %197 = load i32, i32* @ENOMEM, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %6, align 4
  br label %290

199:                                              ; preds = %183
  %200 = load i8*, i8** %9, align 8
  %201 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %7, align 8
  %202 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %201, i32 0, i32 1
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %202, align 8
  %204 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %7, align 8
  %205 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  store i8* %200, i8** %208, align 8
  %209 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %11, align 8
  %210 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %7, align 8
  %211 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %210, i32 0, i32 1
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %211, align 8
  %213 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %7, align 8
  %214 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 2
  store %struct.hid_sensor_hub_device* %209, %struct.hid_sensor_hub_device** %217, align 8
  %218 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %7, align 8
  %219 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %218, i32 0, i32 1
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %219, align 8
  %221 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %7, align 8
  %222 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 1
  store i32 40, i32* %225, align 8
  %226 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %227 = load i8*, i8** %9, align 8
  %228 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %11, align 8
  %229 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @hid_dbg(%struct.hid_device* %226, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %227, i32 %230)
  %232 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %7, align 8
  %233 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %233, align 8
  %236 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %13, align 8
  %237 = icmp ne %struct.hid_sensor_hub_device* %236, null
  br i1 %237, label %238, label %242

238:                                              ; preds = %199
  %239 = load i32, i32* %8, align 4
  %240 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %13, align 8
  %241 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 4
  br label %242

242:                                              ; preds = %238, %199
  %243 = load %struct.hid_collection*, %struct.hid_collection** %14, align 8
  %244 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @HID_COLLECTION_APPLICATION, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %256

248:                                              ; preds = %242
  %249 = load %struct.hid_collection*, %struct.hid_collection** %14, align 8
  %250 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @HID_USAGE_SENSOR_COLLECTION, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %256

254:                                              ; preds = %248
  %255 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %11, align 8
  store %struct.hid_sensor_hub_device* %255, %struct.hid_sensor_hub_device** %13, align 8
  br label %256

256:                                              ; preds = %254, %248, %242
  br label %257

257:                                              ; preds = %256, %117
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %8, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %8, align 4
  br label %99

261:                                              ; preds = %99
  %262 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %12, align 8
  %263 = icmp ne %struct.hid_sensor_hub_device* %262, null
  br i1 %263, label %264, label %268

264:                                              ; preds = %261
  %265 = load i32, i32* %8, align 4
  %266 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %12, align 8
  %267 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %266, i32 0, i32 2
  store i32 %265, i32* %267, align 4
  br label %268

268:                                              ; preds = %264, %261
  %269 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %13, align 8
  %270 = icmp ne %struct.hid_sensor_hub_device* %269, null
  br i1 %270, label %271, label %275

271:                                              ; preds = %268
  %272 = load i32, i32* %8, align 4
  %273 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %13, align 8
  %274 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %273, i32 0, i32 2
  store i32 %272, i32* %274, align 4
  br label %275

275:                                              ; preds = %271, %268
  %276 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %277 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %276, i32 0, i32 1
  %278 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %7, align 8
  %279 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %278, i32 0, i32 1
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** %279, align 8
  %281 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %7, align 8
  %282 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = call i32 @mfd_add_hotplug_devices(i32* %277, %struct.TYPE_3__* %280, i64 %283)
  store i32 %284, i32* %6, align 4
  %285 = load i32, i32* %6, align 4
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %275
  br label %290

288:                                              ; preds = %275
  %289 = load i32, i32* %6, align 4
  store i32 %289, i32* %3, align 4
  br label %294

290:                                              ; preds = %287, %194, %166, %131, %93, %76
  %291 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %292 = call i32 @hid_hw_stop(%struct.hid_device* %291)
  %293 = load i32, i32* %6, align 4
  store i32 %293, i32* %3, align 4
  br label %294

294:                                              ; preds = %290, %288, %61, %49, %22
  %295 = load i32, i32* %3, align 4
  ret i32 %295
}

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.sensor_hub_data*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @sensor_hub_get_physical_device_count(%struct.hid_device*) #1

declare dso_local %struct.TYPE_3__* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i8* @devm_kasprintf(i32*, i32, i8*, i64) #1

declare dso_local i32 @hid_dbg(%struct.hid_device*, i8*, i8*, i32) #1

declare dso_local i32 @mfd_add_hotplug_devices(i32*, %struct.TYPE_3__*, i64) #1

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
