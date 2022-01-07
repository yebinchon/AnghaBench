; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-custom.c_hid_sensor_custom_add_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-custom.c_hid_sensor_custom_add_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i32 }
%struct.hid_sensor_custom = type { i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_9__*, %struct.hid_sensor_hub_device* }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_10__, %struct.TYPE_12__, %struct.TYPE_13__**, i32*, %struct.device_attribute* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.device_attribute = type { %struct.TYPE_13__, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.hid_sensor_hub_device = type { %struct.hid_device* }
%struct.hid_device = type { i32* }

@HID_REPORT_TYPES = common dso_local global i32 0, align 4
@HID_OUTPUT_REPORT = common dso_local global i32 0, align 4
@HID_CUSTOM_TOTAL_ATTRS = common dso_local global i32 0, align 4
@hid_custom_attrs = common dso_local global %struct.TYPE_14__* null, align 8
@HID_CUSTOM_NAME_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@show_value = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@store_value = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_PROY_POWER_STATE = common dso_local global i64 0, align 8
@HID_USAGE_SENSOR_PROP_REPORT_STATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_sensor_custom*)* @hid_sensor_custom_add_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_sensor_custom_add_attributes(%struct.hid_sensor_custom* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_sensor_custom*, align 8
  %4 = alloca %struct.hid_sensor_hub_device*, align 8
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device_attribute*, align 8
  store %struct.hid_sensor_custom* %0, %struct.hid_sensor_custom** %3, align 8
  %10 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %11 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %10, i32 0, i32 5
  %12 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %11, align 8
  store %struct.hid_sensor_hub_device* %12, %struct.hid_sensor_hub_device** %4, align 8
  %13 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %4, align 8
  %14 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %13, i32 0, i32 0
  %15 = load %struct.hid_device*, %struct.hid_device** %14, align 8
  store %struct.hid_device* %15, %struct.hid_device** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %40, %1
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @HID_REPORT_TYPES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @HID_OUTPUT_REPORT, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %40

25:                                               ; preds = %20
  %26 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %27 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %28 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @hid_sensor_custom_add_fields(%struct.hid_sensor_custom* %26, i32* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %273

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %24
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %16

43:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %268, %43
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %47 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %271

50:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %148, %50
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @HID_CUSTOM_TOTAL_ATTRS, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hid_custom_attrs, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br label %63

63:                                               ; preds = %55, %51
  %64 = phi i1 [ false, %51 ], [ %62, %55 ]
  br i1 %64, label %65, label %164

65:                                               ; preds = %63
  %66 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %67 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %66, i32 0, i32 1
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 5
  %73 = load %struct.device_attribute*, %struct.device_attribute** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %73, i64 %75
  store %struct.device_attribute* %76, %struct.device_attribute** %9, align 8
  %77 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %78 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %77, i32 0, i32 1
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = bitcast i32* %87 to i8*
  %89 = load i32, i32* @HID_CUSTOM_NAME_LENGTH, align 4
  %90 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %91 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %90, i32 0, i32 1
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hid_custom_attrs, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @snprintf(i8* %88, i32 %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %97, i8* %103)
  %105 = load %struct.device_attribute*, %struct.device_attribute** %9, align 8
  %106 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %105, i32 0, i32 0
  %107 = call i32 @sysfs_attr_init(%struct.TYPE_13__* %106)
  %108 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %109 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %108, i32 0, i32 1
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = bitcast i32* %118 to i8*
  %120 = load %struct.device_attribute*, %struct.device_attribute** %9, align 8
  %121 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  store i8* %119, i8** %122, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hid_custom_attrs, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.device_attribute*, %struct.device_attribute** %9, align 8
  %130 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  store i32 %128, i32* %131, align 8
  %132 = load i32, i32* @show_value, align 4
  %133 = load %struct.device_attribute*, %struct.device_attribute** %9, align 8
  %134 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hid_custom_attrs, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @S_IWUSR, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %65
  %145 = load i32, i32* @store_value, align 4
  %146 = load %struct.device_attribute*, %struct.device_attribute** %9, align 8
  %147 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %144, %65
  %149 = load %struct.device_attribute*, %struct.device_attribute** %9, align 8
  %150 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %149, i32 0, i32 0
  %151 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %152 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %151, i32 0, i32 1
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %158, i64 %160
  store %struct.TYPE_13__* %150, %struct.TYPE_13__** %161, align 8
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %8, align 4
  br label %51

164:                                              ; preds = %63
  %165 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %166 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %165, i32 0, i32 1
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 3
  %172 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %172, i64 %174
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %175, align 8
  %176 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %177 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %176, i32 0, i32 1
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %177, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 3
  %183 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %182, align 8
  %184 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %185 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %184, i32 0, i32 1
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  store %struct.TYPE_13__** %183, %struct.TYPE_13__*** %191, align 8
  %192 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %193 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %192, i32 0, i32 1
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %193, align 8
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %201 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %200, i32 0, i32 1
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %201, align 8
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  store i8* %199, i8** %207, align 8
  %208 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %209 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %208, i32 0, i32 4
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %214 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %213, i32 0, i32 1
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %214, align 8
  %216 = load i32, i32* %7, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 2
  %220 = call i32 @sysfs_create_group(i32* %212, %struct.TYPE_12__* %219)
  store i32 %220, i32* %6, align 4
  %221 = load i32, i32* %6, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %164
  br label %271

224:                                              ; preds = %164
  %225 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %226 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %225, i32 0, i32 1
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %226, align 8
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @HID_USAGE_SENSOR_PROY_POWER_STATE, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %245

236:                                              ; preds = %224
  %237 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %238 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %237, i32 0, i32 1
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %238, align 8
  %240 = load i32, i32* %7, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i64 %241
  %243 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %244 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %243, i32 0, i32 3
  store %struct.TYPE_11__* %242, %struct.TYPE_11__** %244, align 8
  br label %267

245:                                              ; preds = %224
  %246 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %247 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %246, i32 0, i32 1
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %247, align 8
  %249 = load i32, i32* %7, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @HID_USAGE_SENSOR_PROP_REPORT_STATE, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %266

257:                                              ; preds = %245
  %258 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %259 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %258, i32 0, i32 1
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %259, align 8
  %261 = load i32, i32* %7, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i64 %262
  %264 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %265 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %264, i32 0, i32 2
  store %struct.TYPE_11__* %263, %struct.TYPE_11__** %265, align 8
  br label %266

266:                                              ; preds = %257, %245
  br label %267

267:                                              ; preds = %266, %236
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %7, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %7, align 4
  br label %44

271:                                              ; preds = %223, %44
  %272 = load i32, i32* %6, align 4
  store i32 %272, i32* %2, align 4
  br label %273

273:                                              ; preds = %271, %37
  %274 = load i32, i32* %2, align 4
  ret i32 %274
}

declare dso_local i32 @hid_sensor_custom_add_fields(%struct.hid_sensor_custom*, i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_13__*) #1

declare dso_local i32 @sysfs_create_group(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
