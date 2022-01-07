; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-magicmouse.c_magicmouse_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-magicmouse.c_magicmouse_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i64, i32 }
%struct.hid_device_id = type { i64, i64, i32 }
%struct.magicmouse_sc = type { i32, i32, i32 }
%struct.hid_report = type { i32 }

@__const.magicmouse_probe.feature_mt = private unnamed_addr constant [2 x i32] [i32 215, i32 1], align 4
@__const.magicmouse_probe.feature_mt_trackpad2_usb = private unnamed_addr constant [2 x i32] [i32 2, i32 1], align 4
@__const.magicmouse_probe.feature_mt_trackpad2_bt = private unnamed_addr constant [3 x i32] [i32 241, i32 2, i32 1], align 4
@USB_VENDOR_ID_APPLE = common dso_local global i64 0, align 8
@USB_DEVICE_ID_APPLE_MAGICTRACKPAD2 = common dso_local global i64 0, align 8
@HID_TYPE_USBMOUSE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"can't alloc magicmouse descriptor\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SCROLL_ACCEL_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"magicmouse hid parse failed\0A\00", align 1
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"magicmouse hw start failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"magicmouse input not registered\0A\00", align 1
@USB_DEVICE_ID_APPLE_MAGICMOUSE = common dso_local global i64 0, align 8
@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@MOUSE_REPORT_ID = common dso_local global i32 0, align 4
@BT_VENDOR_ID_APPLE = common dso_local global i64 0, align 8
@TRACKPAD2_BT_REPORT_ID = common dso_local global i32 0, align 4
@TRACKPAD2_USB_REPORT_ID = common dso_local global i32 0, align 4
@TRACKPAD_REPORT_ID = common dso_local global i32 0, align 4
@DOUBLE_REPORT_ID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"unable to register touch report\0A\00", align 1
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"unable to request touch data (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @magicmouse_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @magicmouse_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.magicmouse_sc*, align 8
  %12 = alloca %struct.hid_report*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %15 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast ([2 x i32]* @__const.magicmouse_probe.feature_mt to i8*), i64 8, i1 false)
  %16 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast ([2 x i32]* @__const.magicmouse_probe.feature_mt_trackpad2_usb to i8*), i64 8, i1 false)
  %17 = bitcast [3 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast ([3 x i32]* @__const.magicmouse_probe.feature_mt_trackpad2_bt to i8*), i64 12, i1 false)
  %18 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %19 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @USB_VENDOR_ID_APPLE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %25 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @USB_DEVICE_ID_APPLE_MAGICTRACKPAD2, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %31 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @HID_TYPE_USBMOUSE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %200

36:                                               ; preds = %29, %23, %2
  %37 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %38 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %37, i32 0, i32 1
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.magicmouse_sc* @devm_kzalloc(i32* %38, i32 12, i32 %39)
  store %struct.magicmouse_sc* %40, %struct.magicmouse_sc** %11, align 8
  %41 = load %struct.magicmouse_sc*, %struct.magicmouse_sc** %11, align 8
  %42 = icmp eq %struct.magicmouse_sc* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %45 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %200

48:                                               ; preds = %36
  %49 = load i32, i32* @SCROLL_ACCEL_DEFAULT, align 4
  %50 = load %struct.magicmouse_sc*, %struct.magicmouse_sc** %11, align 8
  %51 = getelementptr inbounds %struct.magicmouse_sc, %struct.magicmouse_sc* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %53 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.magicmouse_sc*, %struct.magicmouse_sc** %11, align 8
  %56 = getelementptr inbounds %struct.magicmouse_sc, %struct.magicmouse_sc* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %58 = load %struct.magicmouse_sc*, %struct.magicmouse_sc** %11, align 8
  %59 = call i32 @hid_set_drvdata(%struct.hid_device* %57, %struct.magicmouse_sc* %58)
  %60 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %61 = call i32 @hid_parse(%struct.hid_device* %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %48
  %65 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %66 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %3, align 4
  br label %200

68:                                               ; preds = %48
  %69 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %70 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %71 = call i32 @hid_hw_start(%struct.hid_device* %69, i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %76 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %3, align 4
  br label %200

78:                                               ; preds = %68
  %79 = load %struct.magicmouse_sc*, %struct.magicmouse_sc** %11, align 8
  %80 = getelementptr inbounds %struct.magicmouse_sc, %struct.magicmouse_sc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %85 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %13, align 4
  br label %196

88:                                               ; preds = %78
  %89 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %90 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @USB_DEVICE_ID_APPLE_MAGICMOUSE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %96 = load i32, i32* @HID_INPUT_REPORT, align 4
  %97 = load i32, i32* @MOUSE_REPORT_ID, align 4
  %98 = call %struct.hid_report* @hid_register_report(%struct.hid_device* %95, i32 %96, i32 %97, i32 0)
  store %struct.hid_report* %98, %struct.hid_report** %12, align 8
  br label %132

99:                                               ; preds = %88
  %100 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %101 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @USB_DEVICE_ID_APPLE_MAGICTRACKPAD2, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %99
  %106 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %107 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @BT_VENDOR_ID_APPLE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %113 = load i32, i32* @HID_INPUT_REPORT, align 4
  %114 = load i32, i32* @TRACKPAD2_BT_REPORT_ID, align 4
  %115 = call %struct.hid_report* @hid_register_report(%struct.hid_device* %112, i32 %113, i32 %114, i32 0)
  store %struct.hid_report* %115, %struct.hid_report** %12, align 8
  br label %121

116:                                              ; preds = %105
  %117 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %118 = load i32, i32* @HID_INPUT_REPORT, align 4
  %119 = load i32, i32* @TRACKPAD2_USB_REPORT_ID, align 4
  %120 = call %struct.hid_report* @hid_register_report(%struct.hid_device* %117, i32 %118, i32 %119, i32 0)
  store %struct.hid_report* %120, %struct.hid_report** %12, align 8
  br label %121

121:                                              ; preds = %116, %111
  br label %131

122:                                              ; preds = %99
  %123 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %124 = load i32, i32* @HID_INPUT_REPORT, align 4
  %125 = load i32, i32* @TRACKPAD_REPORT_ID, align 4
  %126 = call %struct.hid_report* @hid_register_report(%struct.hid_device* %123, i32 %124, i32 %125, i32 0)
  store %struct.hid_report* %126, %struct.hid_report** %12, align 8
  %127 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %128 = load i32, i32* @HID_INPUT_REPORT, align 4
  %129 = load i32, i32* @DOUBLE_REPORT_ID, align 4
  %130 = call %struct.hid_report* @hid_register_report(%struct.hid_device* %127, i32 %128, i32 %129, i32 0)
  store %struct.hid_report* %130, %struct.hid_report** %12, align 8
  br label %131

131:                                              ; preds = %122, %121
  br label %132

132:                                              ; preds = %131, %94
  %133 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %134 = icmp ne %struct.hid_report* %133, null
  br i1 %134, label %140, label %135

135:                                              ; preds = %132
  %136 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %137 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %136, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %13, align 4
  br label %196

140:                                              ; preds = %132
  %141 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %142 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %141, i32 0, i32 0
  store i32 6, i32* %142, align 4
  %143 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %144 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @USB_DEVICE_ID_APPLE_MAGICTRACKPAD2, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %159

148:                                              ; preds = %140
  %149 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %150 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @BT_VENDOR_ID_APPLE, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  store i32 12, i32* %14, align 4
  %155 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32* %155, i32** %6, align 8
  br label %158

156:                                              ; preds = %148
  store i32 8, i32* %14, align 4
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32* %157, i32** %6, align 8
  br label %158

158:                                              ; preds = %156, %154
  br label %161

159:                                              ; preds = %140
  store i32 8, i32* %14, align 4
  %160 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32* %160, i32** %6, align 8
  br label %161

161:                                              ; preds = %159, %158
  %162 = load i32*, i32** %6, align 8
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* @GFP_KERNEL, align 4
  %165 = call i32* @kmemdup(i32* %162, i32 %163, i32 %164)
  store i32* %165, i32** %10, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %161
  %169 = load i32, i32* @ENOMEM, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %13, align 4
  br label %196

171:                                              ; preds = %161
  %172 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %173 = load i32*, i32** %10, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %10, align 8
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %179 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %180 = call i32 @hid_hw_raw_request(%struct.hid_device* %172, i32 %175, i32* %176, i32 %177, i32 %178, i32 %179)
  store i32 %180, i32* %13, align 4
  %181 = load i32*, i32** %10, align 8
  %182 = call i32 @kfree(i32* %181)
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* @EIO, align 4
  %185 = sub nsw i32 0, %184
  %186 = icmp ne i32 %183, %185
  br i1 %186, label %187, label %195

187:                                              ; preds = %171
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* %14, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %193 = load i32, i32* %13, align 4
  %194 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %192, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %193)
  br label %196

195:                                              ; preds = %187, %171
  store i32 0, i32* %3, align 4
  br label %200

196:                                              ; preds = %191, %168, %135, %83
  %197 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %198 = call i32 @hid_hw_stop(%struct.hid_device* %197)
  %199 = load i32, i32* %13, align 4
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %196, %195, %74, %64, %43, %35
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.magicmouse_sc* @devm_kzalloc(i32*, i32, i32) #2

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, ...) #2

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.magicmouse_sc*) #2

declare dso_local i32 @hid_parse(%struct.hid_device*) #2

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #2

declare dso_local %struct.hid_report* @hid_register_report(%struct.hid_device*, i32, i32, i32) #2

declare dso_local i32* @kmemdup(i32*, i32, i32) #2

declare dso_local i32 @hid_hw_raw_request(%struct.hid_device*, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
