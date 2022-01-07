; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hid-sensor-magn-3d.c_magn_3d_parse_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hid-sensor-magn-3d.c_magn_3d_parse_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_chan_spec = type { i32, i32 }
%struct.platform_device = type { i32 }
%struct.hid_sensor_hub_device = type { i32 }
%struct.magn_3d_state = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_11__*, %struct.TYPE_7__, i32*, i32** }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__ }
%struct.TYPE_8__ = type { i32, i32, i8* }
%struct.TYPE_7__ = type { i32, i32, i8* }

@MAGN_3D_CHANNEL_MAX = common dso_local global i32 0, align 4
@magn_3d_addresses = common dso_local global i32* null, align 8
@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"failed to find any supported usage attributes in report\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"magn_3d Found %d usage attributes\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"magn_3d X: %x:%x Y: %x:%x Z: %x:%x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"failed to allocate space for iio channels\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"failed to allocate space for iio values array\0A\00", align 1
@magn_3d_channels = common dso_local global %struct.iio_chan_spec* null, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"failed to find any magnetic channels setup\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"magn_3d Setup %d IIO channels\0A\00", align 1
@HID_USAGE_SENSOR_COMPASS_3D = common dso_local global i32 0, align 4
@CHANNEL_SCAN_INDEX_X = common dso_local global i64 0, align 8
@HID_USAGE_SENSOR_ORIENT_COMP_MAGN_NORTH = common dso_local global i32 0, align 4
@CHANNEL_SCAN_INDEX_NORTH_MAGN_TILT_COMP = common dso_local global i64 0, align 8
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_DATA_ORIENTATION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Sensitivity index:report %d:%d\0A\00", align 1
@HID_USAGE_SENSOR_ORIENT_MAGN_FLUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.hid_sensor_hub_device*, %struct.iio_chan_spec**, i32*, i32, %struct.magn_3d_state*)* @magn_3d_parse_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @magn_3d_parse_report(%struct.platform_device* %0, %struct.hid_sensor_hub_device* %1, %struct.iio_chan_spec** %2, i32* %3, i32 %4, %struct.magn_3d_state* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.hid_sensor_hub_device*, align 8
  %10 = alloca %struct.iio_chan_spec**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.magn_3d_state*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.iio_chan_spec*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %8, align 8
  store %struct.hid_sensor_hub_device* %1, %struct.hid_sensor_hub_device** %9, align 8
  store %struct.iio_chan_spec** %2, %struct.iio_chan_spec*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.magn_3d_state* %5, %struct.magn_3d_state** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %19

19:                                               ; preds = %46, %6
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* @MAGN_3D_CHANNEL_MAX, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %19
  %24 = load i32*, i32** @magn_3d_addresses, align 8
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %18, align 4
  %29 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %9, align 8
  %30 = load i32, i32* @HID_INPUT_REPORT, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %18, align 4
  %33 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %34 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %33, i32 0, i32 3
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i64 %37
  %39 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %29, i32 %30, i32 %31, i32 %32, %struct.TYPE_11__* %38)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %23
  %43 = load i32, i32* %15, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %42, %23
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %14, align 4
  br label %19

49:                                               ; preds = %19
  %50 = load i32, i32* %15, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %362

58:                                               ; preds = %49
  %59 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %62)
  %64 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %67 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %66, i32 0, i32 3
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %73 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %72, i32 0, i32 3
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %79 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %78, i32 0, i32 3
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %85 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %84, i32 0, i32 3
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i64 1
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %91 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %90, i32 0, i32 3
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i64 2
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %97 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %96, i32 0, i32 3
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i64 2
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %71, i32 %77, i64 %83, i32 %89, i64 %95, i32 %101)
  %103 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call i8* @devm_kcalloc(i32* %104, i32 %105, i32 8, i32 %106)
  %108 = bitcast i8* %107 to %struct.iio_chan_spec*
  store %struct.iio_chan_spec* %108, %struct.iio_chan_spec** %16, align 8
  %109 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %16, align 8
  %110 = icmp ne %struct.iio_chan_spec* %109, null
  br i1 %110, label %117, label %111

111:                                              ; preds = %58
  %112 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = call i32 @dev_err(i32* %113, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %7, align 4
  br label %362

117:                                              ; preds = %58
  %118 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* @GFP_KERNEL, align 4
  %122 = call i8* @devm_kcalloc(i32* %119, i32 %120, i32 4, i32 %121)
  %123 = bitcast i8* %122 to i32*
  %124 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %125 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %124, i32 0, i32 5
  store i32* %123, i32** %125, align 8
  %126 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %127 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %126, i32 0, i32 5
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %136, label %130

130:                                              ; preds = %117
  %131 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = call i32 @dev_err(i32* %132, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %7, align 4
  br label %362

136:                                              ; preds = %117
  store i32 0, i32* %14, align 4
  %137 = load i32*, i32** %11, align 8
  store i32 0, i32* %137, align 4
  br label %138

138:                                              ; preds = %215, %136
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* @MAGN_3D_CHANNEL_MAX, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %138
  %143 = load i32*, i32** %11, align 8
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %15, align 4
  %146 = icmp slt i32 %144, %145
  br label %147

147:                                              ; preds = %142, %138
  %148 = phi i1 [ false, %138 ], [ %146, %142 ]
  br i1 %148, label %149, label %218

149:                                              ; preds = %147
  %150 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %151 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %150, i32 0, i32 3
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp sge i64 %157, 0
  br i1 %158, label %159, label %214

159:                                              ; preds = %149
  %160 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %16, align 8
  %161 = load i32*, i32** %11, align 8
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %160, i64 %163
  %165 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** @magn_3d_channels, align 8
  %166 = load i32, i32* %14, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %165, i64 %167
  %169 = bitcast %struct.iio_chan_spec* %164 to i8*
  %170 = bitcast %struct.iio_chan_spec* %168 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %169, i8* align 4 %170, i64 8, i1 false)
  %171 = load i32*, i32** %11, align 8
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %16, align 8
  %174 = load i32*, i32** %11, align 8
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %173, i64 %176
  %178 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %177, i32 0, i32 0
  store i32 %172, i32* %178, align 4
  %179 = load i32, i32* %14, align 4
  %180 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %16, align 8
  %181 = load i32*, i32** %11, align 8
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %180, i64 %183
  %185 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %184, i32 0, i32 1
  store i32 %179, i32* %185, align 4
  %186 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %187 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %186, i32 0, i32 5
  %188 = load i32*, i32** %187, align 8
  %189 = load i32*, i32** %11, align 8
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  %193 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %194 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %193, i32 0, i32 6
  %195 = load i32**, i32*** %194, align 8
  %196 = load i32, i32* %14, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32*, i32** %195, i64 %197
  store i32* %192, i32** %198, align 8
  %199 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %16, align 8
  %200 = load i32*, i32** %11, align 8
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %203 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %202, i32 0, i32 3
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @magn_3d_adjust_channel_bit_mask(%struct.iio_chan_spec* %199, i32 %201, i32 %209)
  %211 = load i32*, i32** %11, align 8
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 4
  br label %214

214:                                              ; preds = %159, %149
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %14, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %14, align 4
  br label %138

218:                                              ; preds = %147
  %219 = load i32*, i32** %11, align 8
  %220 = load i32, i32* %219, align 4
  %221 = icmp sle i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %218
  %223 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %224 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %223, i32 0, i32 0
  %225 = call i32 @dev_err(i32* %224, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %226 = load i32, i32* @EINVAL, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %7, align 4
  br label %362

228:                                              ; preds = %218
  %229 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %16, align 8
  %230 = load %struct.iio_chan_spec**, %struct.iio_chan_spec*** %10, align 8
  store %struct.iio_chan_spec* %229, %struct.iio_chan_spec** %230, align 8
  %231 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %232 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %231, i32 0, i32 0
  %233 = load i32*, i32** %11, align 8
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %232, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i64 %235)
  %237 = load i32, i32* @HID_USAGE_SENSOR_COMPASS_3D, align 4
  %238 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %239 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %238, i32 0, i32 3
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %239, align 8
  %241 = load i64, i64* @CHANNEL_SCAN_INDEX_X, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i64 %241
  %243 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %244 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %243, i32 0, i32 4
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 1
  %246 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %247 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %246, i32 0, i32 4
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 0
  %249 = call i8* @hid_sensor_format_scale(i32 %237, %struct.TYPE_11__* %242, i32* %245, i32* %248)
  %250 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %251 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %250, i32 0, i32 4
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 2
  store i8* %249, i8** %252, align 8
  %253 = load i32, i32* @HID_USAGE_SENSOR_ORIENT_COMP_MAGN_NORTH, align 4
  %254 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %255 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %254, i32 0, i32 3
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %255, align 8
  %257 = load i64, i64* @CHANNEL_SCAN_INDEX_NORTH_MAGN_TILT_COMP, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i64 %257
  %259 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %260 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 1
  %262 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %263 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 0
  %265 = call i8* @hid_sensor_format_scale(i32 %253, %struct.TYPE_11__* %258, i32* %261, i32* %264)
  %266 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %267 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 2
  store i8* %265, i8** %268, align 8
  %269 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %270 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = icmp slt i64 %273, 0
  br i1 %274, label %275, label %299

275:                                              ; preds = %228
  %276 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %9, align 8
  %277 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %278 = load i32, i32* %12, align 4
  %279 = load i32, i32* @HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS, align 4
  %280 = load i32, i32* @HID_USAGE_SENSOR_DATA_ORIENTATION, align 4
  %281 = or i32 %279, %280
  %282 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %283 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 0
  %285 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %276, i32 %277, i32 %278, i32 %281, %struct.TYPE_11__* %284)
  %286 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %287 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %286, i32 0, i32 0
  %288 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %289 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %294 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %287, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %292, i32 %297)
  br label %299

299:                                              ; preds = %275, %228
  %300 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %301 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = icmp slt i64 %304, 0
  br i1 %305, label %306, label %330

306:                                              ; preds = %299
  %307 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %9, align 8
  %308 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %309 = load i32, i32* %12, align 4
  %310 = load i32, i32* @HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS, align 4
  %311 = load i32, i32* @HID_USAGE_SENSOR_ORIENT_MAGN_FLUX, align 4
  %312 = or i32 %310, %311
  %313 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %314 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 0
  %316 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %307, i32 %308, i32 %309, i32 %312, %struct.TYPE_11__* %315)
  %317 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %318 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %317, i32 0, i32 0
  %319 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %320 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %325 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %318, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %323, i32 %328)
  br label %330

330:                                              ; preds = %306, %299
  %331 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %332 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = icmp slt i64 %335, 0
  br i1 %336, label %337, label %361

337:                                              ; preds = %330
  %338 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %9, align 8
  %339 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %340 = load i32, i32* %12, align 4
  %341 = load i32, i32* @HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS, align 4
  %342 = load i32, i32* @HID_USAGE_SENSOR_ORIENT_COMP_MAGN_NORTH, align 4
  %343 = or i32 %341, %342
  %344 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %345 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 0
  %347 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %338, i32 %339, i32 %340, i32 %343, %struct.TYPE_11__* %346)
  %348 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %349 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %348, i32 0, i32 0
  %350 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %351 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = load %struct.magn_3d_state*, %struct.magn_3d_state** %13, align 8
  %356 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 8
  %360 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %349, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %354, i32 %359)
  br label %361

361:                                              ; preds = %337, %330
  store i32 0, i32* %7, align 4
  br label %362

362:                                              ; preds = %361, %222, %130, %111, %52
  %363 = load i32, i32* %7, align 4
  ret i32 %363
}

declare dso_local i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device*, i32, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, ...) #1

declare dso_local i8* @devm_kcalloc(i32*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @magn_3d_adjust_channel_bit_mask(%struct.iio_chan_spec*, i32, i32) #1

declare dso_local i8* @hid_sensor_format_scale(i32, %struct.TYPE_11__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
