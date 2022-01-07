; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_parse_and_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_parse_and_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { i32, i32, %struct.wacom_wac, %struct.hid_device* }
%struct.wacom_wac = type { %struct.wacom_features }
%struct.wacom_features = type { i64, i64, i32, i32 }
%struct.hid_device = type { i32, i32 }

@HID_CONNECT_HIDRAW = common dso_local global i32 0, align 4
@WACOM_PKGLEN_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BAMBOO_PAD = common dso_local global i64 0, align 8
@WACOM_PKGLEN_PENABLED = common dso_local global i64 0, align 8
@HID_GENERIC = common dso_local global i64 0, align 8
@WACOM_PKGLEN_BPAD_TOUCH = common dso_local global i64 0, align 8
@WACOM_PKGLEN_BPAD_TOUCH_USB = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@WACOM_DEVICETYPE_NONE = common dso_local global i32 0, align 4
@WIRELESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Unknown device_type for '%s'. %s.\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Ignoring\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Assuming pen\00", align 1
@WACOM_DEVICETYPE_PEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" (WL)\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BAMBOO_PEN = common dso_local global i64 0, align 8
@WACOM_DEVICETYPE_TOUCH = common dso_local global i32 0, align 4
@WACOM_DEVICETYPE_PAD = common dso_local global i32 0, align 4
@WACOM_DEVICETYPE_WL_MONITOR = common dso_local global i32 0, align 4
@WACOM_QUIRK_BATTERY = common dso_local global i32 0, align 4
@HID_CONNECT_DRIVER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@BAMBOO_TOUCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom*, i32)* @wacom_parse_and_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_parse_and_register(%struct.wacom* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wacom*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wacom_wac*, align 8
  %7 = alloca %struct.wacom_features*, align 8
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wacom* %0, %struct.wacom** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.wacom*, %struct.wacom** %4, align 8
  %12 = getelementptr inbounds %struct.wacom, %struct.wacom* %11, i32 0, i32 2
  store %struct.wacom_wac* %12, %struct.wacom_wac** %6, align 8
  %13 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %14 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %13, i32 0, i32 0
  store %struct.wacom_features* %14, %struct.wacom_features** %7, align 8
  %15 = load %struct.wacom*, %struct.wacom** %4, align 8
  %16 = getelementptr inbounds %struct.wacom, %struct.wacom* %15, i32 0, i32 3
  %17 = load %struct.hid_device*, %struct.hid_device** %16, align 8
  store %struct.hid_device* %17, %struct.hid_device** %8, align 8
  %18 = load i32, i32* @HID_CONNECT_HIDRAW, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %20 = call i64 @wacom_compute_pktlen(%struct.hid_device* %19)
  %21 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %22 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %24 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WACOM_PKGLEN_MAX, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %288

31:                                               ; preds = %2
  %32 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %33 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %32, i32 0, i32 0
  %34 = load %struct.wacom*, %struct.wacom** %4, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32 @devres_open_group(i32* %33, %struct.wacom* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %288

41:                                               ; preds = %31
  %42 = load %struct.wacom*, %struct.wacom** %4, align 8
  %43 = getelementptr inbounds %struct.wacom, %struct.wacom* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.wacom*, %struct.wacom** %4, align 8
  %45 = call i32 @wacom_allocate_inputs(%struct.wacom* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %284

49:                                               ; preds = %41
  %50 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %51 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @BAMBOO_PAD, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %82

55:                                               ; preds = %49
  %56 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %57 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @WACOM_PKGLEN_PENABLED, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i64, i64* @HID_GENERIC, align 8
  %63 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %64 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  br label %81

65:                                               ; preds = %55
  %66 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %67 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @WACOM_PKGLEN_BPAD_TOUCH, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %73 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @WACOM_PKGLEN_BPAD_TOUCH_USB, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %9, align 4
  br label %284

80:                                               ; preds = %71, %65
  br label %81

81:                                               ; preds = %80, %61
  br label %82

82:                                               ; preds = %81, %49
  %83 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %84 = call i32 @wacom_set_default_phy(%struct.wacom_features* %83)
  %85 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %86 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %87 = call i32 @wacom_retrieve_hid_descriptor(%struct.hid_device* %85, %struct.wacom_features* %86)
  %88 = load %struct.wacom*, %struct.wacom** %4, align 8
  %89 = call i32 @wacom_setup_device_quirks(%struct.wacom* %88)
  %90 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %91 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @WACOM_DEVICETYPE_NONE, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %132

95:                                               ; preds = %82
  %96 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %97 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @WIRELESS, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %132

101:                                              ; preds = %95
  %102 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %103 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @HID_GENERIC, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @ENODEV, align 4
  %109 = sub nsw i32 0, %108
  br label %111

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110, %107
  %112 = phi i32 [ %109, %107 ], [ 0, %110 ]
  store i32 %112, i32* %9, align 4
  %113 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %114 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %113, i32 0, i32 0
  %115 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %116 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)
  %122 = call i32 @dev_warn(i32* %114, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %117, i8* %121)
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %111
  br label %284

126:                                              ; preds = %111
  %127 = load i32, i32* @WACOM_DEVICETYPE_PEN, align 4
  %128 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %129 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %126, %95, %82
  %133 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %134 = call i32 @wacom_calculate_res(%struct.wacom_features* %133)
  %135 = load %struct.wacom*, %struct.wacom** %4, align 8
  %136 = load i32, i32* %5, align 4
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %140 = call i32 @wacom_update_name(%struct.wacom* %135, i8* %139)
  %141 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %142 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @BAMBOO_PEN, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %163

146:                                              ; preds = %132
  %147 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %148 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @WACOM_DEVICETYPE_TOUCH, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %146
  %154 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %155 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %153, %146
  %161 = load i32, i32* @ENODEV, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %9, align 4
  br label %284

163:                                              ; preds = %153, %132
  %164 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %165 = call i32 @wacom_add_shared_data(%struct.hid_device* %164)
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  br label %284

169:                                              ; preds = %163
  %170 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %171 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @WACOM_DEVICETYPE_WL_MONITOR, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %190, label %176

176:                                              ; preds = %169
  %177 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %178 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @WACOM_QUIRK_BATTERY, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %176
  %184 = load %struct.wacom*, %struct.wacom** %4, align 8
  %185 = call i32 @wacom_initialize_battery(%struct.wacom* %184)
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %284

189:                                              ; preds = %183
  br label %190

190:                                              ; preds = %189, %176, %169
  %191 = load %struct.wacom*, %struct.wacom** %4, align 8
  %192 = call i32 @wacom_register_inputs(%struct.wacom* %191)
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* %9, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %284

196:                                              ; preds = %190
  %197 = load %struct.wacom*, %struct.wacom** %4, align 8
  %198 = getelementptr inbounds %struct.wacom, %struct.wacom* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %218

205:                                              ; preds = %196
  %206 = load %struct.wacom*, %struct.wacom** %4, align 8
  %207 = call i32 @wacom_initialize_leds(%struct.wacom* %206)
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* %9, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  br label %284

211:                                              ; preds = %205
  %212 = load %struct.wacom*, %struct.wacom** %4, align 8
  %213 = call i32 @wacom_initialize_remotes(%struct.wacom* %212)
  store i32 %213, i32* %9, align 4
  %214 = load i32, i32* %9, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  br label %284

217:                                              ; preds = %211
  br label %218

218:                                              ; preds = %217, %196
  %219 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %220 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @HID_GENERIC, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %228

224:                                              ; preds = %218
  %225 = load i32, i32* @HID_CONNECT_DRIVER, align 4
  %226 = load i32, i32* %10, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %10, align 4
  br label %228

228:                                              ; preds = %224, %218
  %229 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %230 = load i32, i32* %10, align 4
  %231 = call i32 @hid_hw_start(%struct.hid_device* %229, i32 %230)
  store i32 %231, i32* %9, align 4
  %232 = load i32, i32* %9, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %228
  %235 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %236 = call i32 @hid_err(%struct.hid_device* %235, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %284

237:                                              ; preds = %228
  %238 = load i32, i32* %5, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %237
  %241 = load %struct.wacom*, %struct.wacom** %4, align 8
  %242 = call i32 @wacom_query_tablet_data(%struct.wacom* %241)
  br label %243

243:                                              ; preds = %240, %237
  %244 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %245 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @BAMBOO_TOUCH, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %264

249:                                              ; preds = %243
  %250 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %251 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @WACOM_DEVICETYPE_PEN, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %264

256:                                              ; preds = %249
  %257 = load %struct.wacom*, %struct.wacom** %4, align 8
  %258 = getelementptr inbounds %struct.wacom, %struct.wacom* %257, i32 0, i32 1
  %259 = call i32 @cancel_delayed_work_sync(i32* %258)
  %260 = load %struct.wacom*, %struct.wacom** %4, align 8
  %261 = call i32 @_wacom_query_tablet_data(%struct.wacom* %260)
  %262 = load i32, i32* @ENODEV, align 4
  %263 = sub nsw i32 0, %262
  store i32 %263, i32* %9, align 4
  br label %281

264:                                              ; preds = %249, %243
  %265 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %266 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @WACOM_DEVICETYPE_WL_MONITOR, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %264
  %272 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %273 = call i32 @hid_hw_open(%struct.hid_device* %272)
  store i32 %273, i32* %9, align 4
  br label %274

274:                                              ; preds = %271, %264
  %275 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %276 = call i32 @wacom_set_shared_values(%struct.wacom_wac* %275)
  %277 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %278 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %277, i32 0, i32 0
  %279 = load %struct.wacom*, %struct.wacom** %4, align 8
  %280 = call i32 @devres_close_group(i32* %278, %struct.wacom* %279)
  store i32 0, i32* %3, align 4
  br label %288

281:                                              ; preds = %256
  %282 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %283 = call i32 @hid_hw_stop(%struct.hid_device* %282)
  br label %284

284:                                              ; preds = %281, %234, %216, %210, %195, %188, %168, %160, %125, %77, %48
  %285 = load %struct.wacom*, %struct.wacom** %4, align 8
  %286 = call i32 @wacom_release_resources(%struct.wacom* %285)
  %287 = load i32, i32* %9, align 4
  store i32 %287, i32* %3, align 4
  br label %288

288:                                              ; preds = %284, %274, %38, %28
  %289 = load i32, i32* %3, align 4
  ret i32 %289
}

declare dso_local i64 @wacom_compute_pktlen(%struct.hid_device*) #1

declare dso_local i32 @devres_open_group(i32*, %struct.wacom*, i32) #1

declare dso_local i32 @wacom_allocate_inputs(%struct.wacom*) #1

declare dso_local i32 @wacom_set_default_phy(%struct.wacom_features*) #1

declare dso_local i32 @wacom_retrieve_hid_descriptor(%struct.hid_device*, %struct.wacom_features*) #1

declare dso_local i32 @wacom_setup_device_quirks(%struct.wacom*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i8*) #1

declare dso_local i32 @wacom_calculate_res(%struct.wacom_features*) #1

declare dso_local i32 @wacom_update_name(%struct.wacom*, i8*) #1

declare dso_local i32 @wacom_add_shared_data(%struct.hid_device*) #1

declare dso_local i32 @wacom_initialize_battery(%struct.wacom*) #1

declare dso_local i32 @wacom_register_inputs(%struct.wacom*) #1

declare dso_local i32 @wacom_initialize_leds(%struct.wacom*) #1

declare dso_local i32 @wacom_initialize_remotes(%struct.wacom*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @wacom_query_tablet_data(%struct.wacom*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @_wacom_query_tablet_data(%struct.wacom*) #1

declare dso_local i32 @hid_hw_open(%struct.hid_device*) #1

declare dso_local i32 @wacom_set_shared_values(%struct.wacom_wac*) #1

declare dso_local i32 @devres_close_group(i32*, %struct.wacom*) #1

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #1

declare dso_local i32 @wacom_release_resources(%struct.wacom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
