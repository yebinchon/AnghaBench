; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_input_configured.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_input_configured.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32 }
%struct.hid_input = type { i32 }
%struct.sony_sc = type { i32, i32, i32, %struct.hid_device*, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"failed to allocate the device id\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"failed to allocate the output report buffer\0A\00", align 1
@NAVIGATION_CONTROLLER_USB = common dso_local global i32 0, align 4
@HID_QUIRK_NO_OUTPUT_REPORTS_ON_INTR_EP = common dso_local global i32 0, align 4
@HID_QUIRK_SKIP_OUTPUT_REPORT_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Failed to set controller into operational mode\0A\00", align 1
@sixaxis_send_output_report = common dso_local global i32 0, align 4
@NAVIGATION_CONTROLLER_BT = common dso_local global i32 0, align 4
@SIXAXIS_CONTROLLER_USB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Unable to initialize motion sensors: %d\0A\00", align 1
@SIXAXIS_CONTROLLER_BT = common dso_local global i32 0, align 4
@DUALSHOCK4_CONTROLLER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Failed to get calibration data from Dualshock 4\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Failed to get version data from Dualshock 4\0A\00", align 1
@dev_attr_firmware_version = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [55 x i8] c"can't create sysfs firmware_version attribute err: %d\0A\00", align 1
@dev_attr_hardware_version = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [55 x i8] c"can't create sysfs hardware_version attribute err: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Unable to initialize multi-touch slots: %d\0A\00", align 1
@DUALSHOCK4_CONTROLLER_BT = common dso_local global i32 0, align 4
@DS4_BT_DEFAULT_POLL_INTERVAL_MS = common dso_local global i64 0, align 8
@dev_attr_bt_poll_interval = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [55 x i8] c"can't create sysfs bt_poll_interval attribute err: %d\0A\00", align 1
@DUALSHOCK4_DONGLE = common dso_local global i32 0, align 4
@dualshock4_calibration_work = common dso_local global i32 0, align 4
@DONGLE_DISCONNECTED = common dso_local global i32 0, align 4
@dualshock4_send_output_report = common dso_local global i32 0, align 4
@NSG_MRXU_REMOTE = common dso_local global i32 0, align 4
@NSG_MRXU_MAX_X = common dso_local global i32 0, align 4
@NSG_MRXU_MAX_Y = common dso_local global i32 0, align 4
@MOTION_CONTROLLER = common dso_local global i32 0, align 4
@motion_send_output_report = common dso_local global i32 0, align 4
@SONY_LED_SUPPORT = common dso_local global i32 0, align 4
@SONY_BATTERY_SUPPORT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"hw open failed\0A\00", align 1
@SONY_FF_SUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*)* @sony_input_configured to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_input_configured(%struct.hid_device* %0, %struct.hid_input* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_input*, align 8
  %6 = alloca %struct.sony_sc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_input* %1, %struct.hid_input** %5, align 8
  %9 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %10 = call %struct.sony_sc* @hid_get_drvdata(%struct.hid_device* %9)
  store %struct.sony_sc* %10, %struct.sony_sc** %6, align 8
  %11 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %12 = call i32 @sony_set_device_id(%struct.sony_sc* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %17 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %385

18:                                               ; preds = %2
  %19 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %20 = call i32 @sony_check_add(%struct.sony_sc* %19)
  store i32 %20, i32* %7, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %385

24:                                               ; preds = %18
  %25 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %26 = call i32 @sony_allocate_output_report(%struct.sony_sc* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %31 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %30, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %385

32:                                               ; preds = %24
  %33 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %34 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @NAVIGATION_CONTROLLER_USB, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %32
  %40 = load i32, i32* @HID_QUIRK_NO_OUTPUT_REPORTS_ON_INTR_EP, align 4
  %41 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %42 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @HID_QUIRK_SKIP_OUTPUT_REPORT_ID, align 4
  %46 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %47 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %51 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %53 = call i32 @sixaxis_set_operational_usb(%struct.hid_device* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %39
  %57 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %58 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %57, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %385

59:                                               ; preds = %39
  %60 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %61 = load i32, i32* @sixaxis_send_output_report, align 4
  %62 = call i32 @sony_init_output_report(%struct.sony_sc* %60, i32 %61)
  br label %330

63:                                               ; preds = %32
  %64 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %65 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @NAVIGATION_CONTROLLER_BT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %63
  %71 = load i32, i32* @HID_QUIRK_NO_OUTPUT_REPORTS_ON_INTR_EP, align 4
  %72 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %73 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %77 = call i32 @sixaxis_set_operational_bt(%struct.hid_device* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %70
  %81 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %82 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %81, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %385

83:                                               ; preds = %70
  %84 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %85 = load i32, i32* @sixaxis_send_output_report, align 4
  %86 = call i32 @sony_init_output_report(%struct.sony_sc* %84, i32 %85)
  br label %329

87:                                               ; preds = %63
  %88 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %89 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @SIXAXIS_CONTROLLER_USB, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %129

94:                                               ; preds = %87
  %95 = load i32, i32* @HID_QUIRK_NO_OUTPUT_REPORTS_ON_INTR_EP, align 4
  %96 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %97 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* @HID_QUIRK_SKIP_OUTPUT_REPORT_ID, align 4
  %101 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %102 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %106 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %105, i32 0, i32 1
  store i32 1, i32* %106, align 4
  %107 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %108 = call i32 @sixaxis_set_operational_usb(%struct.hid_device* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %94
  %112 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %113 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %112, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %385

114:                                              ; preds = %94
  %115 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %116 = call i32 @sony_register_sensors(%struct.sony_sc* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %121 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %120, i32 0, i32 3
  %122 = load %struct.hid_device*, %struct.hid_device** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %122, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  br label %385

125:                                              ; preds = %114
  %126 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %127 = load i32, i32* @sixaxis_send_output_report, align 4
  %128 = call i32 @sony_init_output_report(%struct.sony_sc* %126, i32 %127)
  br label %328

129:                                              ; preds = %87
  %130 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %131 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @SIXAXIS_CONTROLLER_BT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %164

136:                                              ; preds = %129
  %137 = load i32, i32* @HID_QUIRK_NO_OUTPUT_REPORTS_ON_INTR_EP, align 4
  %138 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %139 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %143 = call i32 @sixaxis_set_operational_bt(%struct.hid_device* %142)
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %136
  %147 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %148 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %147, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %385

149:                                              ; preds = %136
  %150 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %151 = call i32 @sony_register_sensors(%struct.sony_sc* %150)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %156 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %155, i32 0, i32 3
  %157 = load %struct.hid_device*, %struct.hid_device** %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %157, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %158)
  br label %385

160:                                              ; preds = %149
  %161 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %162 = load i32, i32* @sixaxis_send_output_report, align 4
  %163 = call i32 @sony_init_output_report(%struct.sony_sc* %161, i32 %162)
  br label %327

164:                                              ; preds = %129
  %165 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %166 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @DUALSHOCK4_CONTROLLER, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %291

171:                                              ; preds = %164
  %172 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %173 = call i32 @dualshock4_get_calibration_data(%struct.sony_sc* %172)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %178 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %177, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %385

179:                                              ; preds = %171
  %180 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %181 = call i32 @dualshock4_get_version_info(%struct.sony_sc* %180)
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* %8, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %186 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %185, i32 0, i32 3
  %187 = load %struct.hid_device*, %struct.hid_device** %186, align 8
  %188 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %187, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %385

189:                                              ; preds = %179
  %190 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %191 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %190, i32 0, i32 3
  %192 = load %struct.hid_device*, %struct.hid_device** %191, align 8
  %193 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %192, i32 0, i32 0
  %194 = call i32 @device_create_file(i32* %193, i32* @dev_attr_firmware_version)
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %207

197:                                              ; preds = %189
  %198 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %199 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %198, i32 0, i32 5
  store i64 0, i64* %199, align 8
  %200 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %201 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %200, i32 0, i32 4
  store i64 0, i64* %201, align 8
  %202 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %203 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %202, i32 0, i32 3
  %204 = load %struct.hid_device*, %struct.hid_device** %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %204, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %205)
  br label %385

207:                                              ; preds = %189
  %208 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %209 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %208, i32 0, i32 3
  %210 = load %struct.hid_device*, %struct.hid_device** %209, align 8
  %211 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %210, i32 0, i32 0
  %212 = call i32 @device_create_file(i32* %211, i32* @dev_attr_hardware_version)
  store i32 %212, i32* %8, align 4
  %213 = load i32, i32* %8, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %207
  %216 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %217 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %216, i32 0, i32 4
  store i64 0, i64* %217, align 8
  %218 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %219 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %218, i32 0, i32 3
  %220 = load %struct.hid_device*, %struct.hid_device** %219, align 8
  %221 = load i32, i32* %8, align 4
  %222 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %220, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %221)
  br label %385

223:                                              ; preds = %207
  %224 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %225 = call i32 @sony_register_touchpad(%struct.sony_sc* %224, i32 2, i32 1920, i32 942, i32 0, i32 0, i32 0)
  store i32 %225, i32* %8, align 4
  %226 = load i32, i32* %8, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %223
  %229 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %230 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %229, i32 0, i32 3
  %231 = load %struct.hid_device*, %struct.hid_device** %230, align 8
  %232 = load i32, i32* %8, align 4
  %233 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %231, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %232)
  br label %385

234:                                              ; preds = %223
  %235 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %236 = call i32 @sony_register_sensors(%struct.sony_sc* %235)
  store i32 %236, i32* %8, align 4
  %237 = load i32, i32* %8, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %234
  %240 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %241 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %240, i32 0, i32 3
  %242 = load %struct.hid_device*, %struct.hid_device** %241, align 8
  %243 = load i32, i32* %8, align 4
  %244 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %242, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %243)
  br label %385

245:                                              ; preds = %234
  %246 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %247 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @DUALSHOCK4_CONTROLLER_BT, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %270

252:                                              ; preds = %245
  %253 = load i64, i64* @DS4_BT_DEFAULT_POLL_INTERVAL_MS, align 8
  %254 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %255 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %254, i32 0, i32 6
  store i64 %253, i64* %255, align 8
  %256 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %257 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %256, i32 0, i32 3
  %258 = load %struct.hid_device*, %struct.hid_device** %257, align 8
  %259 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %258, i32 0, i32 0
  %260 = call i32 @device_create_file(i32* %259, i32* @dev_attr_bt_poll_interval)
  store i32 %260, i32* %8, align 4
  %261 = load i32, i32* %8, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %252
  %264 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %265 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %264, i32 0, i32 3
  %266 = load %struct.hid_device*, %struct.hid_device** %265, align 8
  %267 = load i32, i32* %8, align 4
  %268 = call i32 @hid_warn(%struct.hid_device* %266, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i32 %267)
  br label %269

269:                                              ; preds = %263, %252
  br label %270

270:                                              ; preds = %269, %245
  %271 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %272 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @DUALSHOCK4_DONGLE, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %287

277:                                              ; preds = %270
  %278 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %279 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %278, i32 0, i32 8
  %280 = load i32, i32* @dualshock4_calibration_work, align 4
  %281 = call i32 @INIT_WORK(i32* %279, i32 %280)
  %282 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %283 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %282, i32 0, i32 2
  store i32 1, i32* %283, align 8
  %284 = load i32, i32* @DONGLE_DISCONNECTED, align 4
  %285 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %286 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %285, i32 0, i32 7
  store i32 %284, i32* %286, align 8
  br label %287

287:                                              ; preds = %277, %270
  %288 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %289 = load i32, i32* @dualshock4_send_output_report, align 4
  %290 = call i32 @sony_init_output_report(%struct.sony_sc* %288, i32 %289)
  br label %326

291:                                              ; preds = %164
  %292 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %293 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @NSG_MRXU_REMOTE, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %312

298:                                              ; preds = %291
  %299 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %300 = load i32, i32* @NSG_MRXU_MAX_X, align 4
  %301 = load i32, i32* @NSG_MRXU_MAX_Y, align 4
  %302 = call i32 @sony_register_touchpad(%struct.sony_sc* %299, i32 2, i32 %300, i32 %301, i32 15, i32 15, i32 1)
  store i32 %302, i32* %8, align 4
  %303 = load i32, i32* %8, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %311

305:                                              ; preds = %298
  %306 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %307 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %306, i32 0, i32 3
  %308 = load %struct.hid_device*, %struct.hid_device** %307, align 8
  %309 = load i32, i32* %8, align 4
  %310 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %308, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %309)
  br label %385

311:                                              ; preds = %298
  br label %325

312:                                              ; preds = %291
  %313 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %314 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @MOTION_CONTROLLER, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %312
  %320 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %321 = load i32, i32* @motion_send_output_report, align 4
  %322 = call i32 @sony_init_output_report(%struct.sony_sc* %320, i32 %321)
  br label %324

323:                                              ; preds = %312
  store i32 0, i32* %8, align 4
  br label %324

324:                                              ; preds = %323, %319
  br label %325

325:                                              ; preds = %324, %311
  br label %326

326:                                              ; preds = %325, %287
  br label %327

327:                                              ; preds = %326, %160
  br label %328

328:                                              ; preds = %327, %125
  br label %329

329:                                              ; preds = %328, %83
  br label %330

330:                                              ; preds = %329, %59
  %331 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %332 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @SONY_LED_SUPPORT, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %344

337:                                              ; preds = %330
  %338 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %339 = call i32 @sony_leds_init(%struct.sony_sc* %338)
  store i32 %339, i32* %8, align 4
  %340 = load i32, i32* %8, align 4
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %337
  br label %385

343:                                              ; preds = %337
  br label %344

344:                                              ; preds = %343, %330
  %345 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %346 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @SONY_BATTERY_SUPPORT, align 4
  %349 = and i32 %347, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %367

351:                                              ; preds = %344
  %352 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %353 = load i32, i32* %7, align 4
  %354 = call i32 @sony_battery_probe(%struct.sony_sc* %352, i32 %353)
  store i32 %354, i32* %8, align 4
  %355 = load i32, i32* %8, align 4
  %356 = icmp slt i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %351
  br label %385

358:                                              ; preds = %351
  %359 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %360 = call i32 @hid_hw_open(%struct.hid_device* %359)
  store i32 %360, i32* %8, align 4
  %361 = load i32, i32* %8, align 4
  %362 = icmp slt i32 %361, 0
  br i1 %362, label %363, label %366

363:                                              ; preds = %358
  %364 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %365 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %364, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  br label %385

366:                                              ; preds = %358
  br label %367

367:                                              ; preds = %366, %344
  %368 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %369 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @SONY_FF_SUPPORT, align 4
  %372 = and i32 %370, %371
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %381

374:                                              ; preds = %367
  %375 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %376 = call i32 @sony_init_ff(%struct.sony_sc* %375)
  store i32 %376, i32* %8, align 4
  %377 = load i32, i32* %8, align 4
  %378 = icmp slt i32 %377, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %374
  br label %382

380:                                              ; preds = %374
  br label %381

381:                                              ; preds = %380, %367
  store i32 0, i32* %3, align 4
  br label %426

382:                                              ; preds = %379
  %383 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %384 = call i32 @hid_hw_close(%struct.hid_device* %383)
  br label %385

385:                                              ; preds = %382, %363, %357, %342, %305, %239, %228, %215, %197, %184, %176, %154, %146, %119, %111, %80, %56, %29, %23, %15
  %386 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %387 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %386, i32 0, i32 6
  %388 = load i64, i64* %387, align 8
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %396

390:                                              ; preds = %385
  %391 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %392 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %391, i32 0, i32 3
  %393 = load %struct.hid_device*, %struct.hid_device** %392, align 8
  %394 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %393, i32 0, i32 0
  %395 = call i32 @device_remove_file(i32* %394, i32* @dev_attr_bt_poll_interval)
  br label %396

396:                                              ; preds = %390, %385
  %397 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %398 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %397, i32 0, i32 5
  %399 = load i64, i64* %398, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %407

401:                                              ; preds = %396
  %402 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %403 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %402, i32 0, i32 3
  %404 = load %struct.hid_device*, %struct.hid_device** %403, align 8
  %405 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %404, i32 0, i32 0
  %406 = call i32 @device_remove_file(i32* %405, i32* @dev_attr_firmware_version)
  br label %407

407:                                              ; preds = %401, %396
  %408 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %409 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %408, i32 0, i32 4
  %410 = load i64, i64* %409, align 8
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %418

412:                                              ; preds = %407
  %413 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %414 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %413, i32 0, i32 3
  %415 = load %struct.hid_device*, %struct.hid_device** %414, align 8
  %416 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %415, i32 0, i32 0
  %417 = call i32 @device_remove_file(i32* %416, i32* @dev_attr_hardware_version)
  br label %418

418:                                              ; preds = %412, %407
  %419 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %420 = call i32 @sony_cancel_work_sync(%struct.sony_sc* %419)
  %421 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %422 = call i32 @sony_remove_dev_list(%struct.sony_sc* %421)
  %423 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %424 = call i32 @sony_release_device_id(%struct.sony_sc* %423)
  %425 = load i32, i32* %8, align 4
  store i32 %425, i32* %3, align 4
  br label %426

426:                                              ; preds = %418, %381
  %427 = load i32, i32* %3, align 4
  ret i32 %427
}

declare dso_local %struct.sony_sc* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @sony_set_device_id(%struct.sony_sc*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, ...) #1

declare dso_local i32 @sony_check_add(%struct.sony_sc*) #1

declare dso_local i32 @sony_allocate_output_report(%struct.sony_sc*) #1

declare dso_local i32 @sixaxis_set_operational_usb(%struct.hid_device*) #1

declare dso_local i32 @sony_init_output_report(%struct.sony_sc*, i32) #1

declare dso_local i32 @sixaxis_set_operational_bt(%struct.hid_device*) #1

declare dso_local i32 @sony_register_sensors(%struct.sony_sc*) #1

declare dso_local i32 @dualshock4_get_calibration_data(%struct.sony_sc*) #1

declare dso_local i32 @dualshock4_get_version_info(%struct.sony_sc*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @sony_register_touchpad(%struct.sony_sc*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hid_warn(%struct.hid_device*, i8*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @sony_leds_init(%struct.sony_sc*) #1

declare dso_local i32 @sony_battery_probe(%struct.sony_sc*, i32) #1

declare dso_local i32 @hid_hw_open(%struct.hid_device*) #1

declare dso_local i32 @sony_init_ff(%struct.sony_sc*) #1

declare dso_local i32 @hid_hw_close(%struct.hid_device*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @sony_cancel_work_sync(%struct.sony_sc*) #1

declare dso_local i32 @sony_remove_dev_list(%struct.sony_sc*) #1

declare dso_local i32 @sony_release_device_id(%struct.sony_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
