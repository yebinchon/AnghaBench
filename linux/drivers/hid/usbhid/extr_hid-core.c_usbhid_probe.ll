; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_10__*, %struct.usb_host_interface*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.usb_host_interface = type { %struct.TYPE_12__, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { i32, i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i8*, %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.usbhid_device = type { i32, i32, i32, i32, i32, %struct.usb_interface*, %struct.hid_device* }
%struct.hid_device = type { i32, i32, i32, %struct.usbhid_device*, i64*, i64*, i64*, i32, i32, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [31 x i8] c"HID probe called for ifnum %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"couldn't find an input interrupt endpoint\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@usb_hid_driver = common dso_local global i32 0, align 4
@hid_pidff_init = common dso_local global i32 0, align 4
@BUS_USB = common dso_local global i32 0, align 4
@USB_INTERFACE_PROTOCOL_MOUSE = common dso_local global i64 0, align 8
@HID_TYPE_USBMOUSE = common dso_local global i32 0, align 4
@HID_TYPE_USBNONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"HID %04x:%04x\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"/input\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hid_reset = common dso_local global i32 0, align 4
@hid_retry_timeout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"can't add hid device: %d\0A\00", align 1
@hiddev_connect = common dso_local global i32 0, align 4
@hiddev_disconnect = common dso_local global i32 0, align 4
@hiddev_hid_event = common dso_local global i32 0, align 4
@hiddev_report_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @usbhid_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhid_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_host_interface*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.usbhid_device*, align 8
  %9 = alloca %struct.hid_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 1
  %16 = load %struct.usb_host_interface*, %struct.usb_host_interface** %15, align 8
  store %struct.usb_host_interface* %16, %struct.usb_host_interface** %6, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %18 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %17)
  store %struct.usb_device* %18, %struct.usb_device** %7, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %20 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dbg_hid(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %47, %2
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %29 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %27, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %26
  %34 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %35 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = call i64 @usb_endpoint_is_int_in(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32, i32* %11, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %43, %33
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %10, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %26

50:                                               ; preds = %26
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %55 = call i32 (%struct.usb_interface*, i8*, ...) @hid_err(%struct.usb_interface* %54, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %299

58:                                               ; preds = %50
  %59 = call %struct.hid_device* (...) @hid_allocate_device()
  store %struct.hid_device* %59, %struct.hid_device** %9, align 8
  %60 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %61 = call i64 @IS_ERR(%struct.hid_device* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %65 = call i32 @PTR_ERR(%struct.hid_device* %64)
  store i32 %65, i32* %3, align 4
  br label %299

66:                                               ; preds = %58
  %67 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %68 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %69 = call i32 @usb_set_intfdata(%struct.usb_interface* %67, %struct.hid_device* %68)
  %70 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %71 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %70, i32 0, i32 15
  store i32* @usb_hid_driver, i32** %71, align 8
  %72 = load i32, i32* @hid_pidff_init, align 4
  %73 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %74 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %73, i32 0, i32 14
  store i32 %72, i32* %74, align 8
  %75 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %76 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %75, i32 0, i32 2
  %77 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %78 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %77, i32 0, i32 9
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store i32* %76, i32** %79, align 8
  %80 = load i32, i32* @BUS_USB, align 4
  %81 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %82 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 4
  %83 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %84 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @le16_to_cpu(i32 %86)
  %88 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %89 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %91 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @le16_to_cpu(i32 %93)
  %95 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %96 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %98 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le16_to_cpu(i32 %100)
  %102 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %103 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %105 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %104, i32 0, i32 6
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  store i64 0, i64* %107, align 8
  %108 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %109 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %108, i32 0, i32 1
  %110 = load %struct.usb_host_interface*, %struct.usb_host_interface** %109, align 8
  %111 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @USB_INTERFACE_PROTOCOL_MOUSE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %66
  %117 = load i32, i32* @HID_TYPE_USBMOUSE, align 4
  %118 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %119 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %118, i32 0, i32 7
  store i32 %117, i32* %119, align 8
  br label %133

120:                                              ; preds = %66
  %121 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %122 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %121, i32 0, i32 1
  %123 = load %struct.usb_host_interface*, %struct.usb_host_interface** %122, align 8
  %124 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %120
  %129 = load i32, i32* @HID_TYPE_USBNONE, align 4
  %130 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %131 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %130, i32 0, i32 7
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %128, %120
  br label %133

133:                                              ; preds = %132, %116
  %134 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %135 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %133
  %139 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %140 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %139, i32 0, i32 6
  %141 = load i64*, i64** %140, align 8
  %142 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %143 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @strlcpy(i64* %141, i64 %144, i32 8)
  br label %146

146:                                              ; preds = %138, %133
  %147 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %148 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %169

151:                                              ; preds = %146
  %152 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %153 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %158 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %157, i32 0, i32 6
  %159 = load i64*, i64** %158, align 8
  %160 = call i32 @strlcat(i64* %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 8)
  br label %161

161:                                              ; preds = %156, %151
  %162 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %163 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %162, i32 0, i32 6
  %164 = load i64*, i64** %163, align 8
  %165 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %166 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @strlcat(i64* %164, i8* %167, i32 8)
  br label %169

169:                                              ; preds = %161, %146
  %170 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %171 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %170, i32 0, i32 6
  %172 = load i64*, i64** %171, align 8
  %173 = call i64 @strlen(i64* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %190, label %175

175:                                              ; preds = %169
  %176 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %177 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %176, i32 0, i32 6
  %178 = load i64*, i64** %177, align 8
  %179 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %180 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @le16_to_cpu(i32 %182)
  %184 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %185 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @le16_to_cpu(i32 %187)
  %189 = call i32 (i64*, i32, i8*, i32, ...) @snprintf(i64* %178, i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %183, i32 %188)
  br label %190

190:                                              ; preds = %175, %169
  %191 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %192 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %193 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %192, i32 0, i32 5
  %194 = load i64*, i64** %193, align 8
  %195 = call i32 @usb_make_path(%struct.usb_device* %191, i64* %194, i32 8)
  %196 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %197 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %196, i32 0, i32 5
  %198 = load i64*, i64** %197, align 8
  %199 = call i32 @strlcat(i64* %198, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %200 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %201 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %200, i32 0, i32 5
  %202 = load i64*, i64** %201, align 8
  %203 = call i64 @strlen(i64* %202)
  store i64 %203, i64* %12, align 8
  %204 = load i64, i64* %12, align 8
  %205 = icmp ult i64 %204, 7
  br i1 %205, label %206, label %223

206:                                              ; preds = %190
  %207 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %208 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %207, i32 0, i32 5
  %209 = load i64*, i64** %208, align 8
  %210 = load i64, i64* %12, align 8
  %211 = getelementptr inbounds i64, i64* %209, i64 %210
  %212 = load i64, i64* %12, align 8
  %213 = sub i64 8, %212
  %214 = trunc i64 %213 to i32
  %215 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %216 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %215, i32 0, i32 0
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i64 0
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (i64*, i32, i8*, i32, ...) @snprintf(i64* %211, i32 %214, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %221)
  br label %223

223:                                              ; preds = %206, %190
  %224 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %225 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %226 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %230 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %229, i32 0, i32 4
  %231 = load i64*, i64** %230, align 8
  %232 = call i64 @usb_string(%struct.usb_device* %224, i32 %228, i64* %231, i32 64)
  %233 = icmp sle i64 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %223
  %235 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %236 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %235, i32 0, i32 4
  %237 = load i64*, i64** %236, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 0
  store i64 0, i64* %238, align 8
  br label %239

239:                                              ; preds = %234, %223
  %240 = load i32, i32* @GFP_KERNEL, align 4
  %241 = call %struct.usbhid_device* @kzalloc(i32 40, i32 %240)
  store %struct.usbhid_device* %241, %struct.usbhid_device** %8, align 8
  %242 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %243 = icmp eq %struct.usbhid_device* %242, null
  br i1 %243, label %244, label %247

244:                                              ; preds = %239
  %245 = load i32, i32* @ENOMEM, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %13, align 4
  br label %295

247:                                              ; preds = %239
  %248 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %249 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %250 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %249, i32 0, i32 3
  store %struct.usbhid_device* %248, %struct.usbhid_device** %250, align 8
  %251 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %252 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %253 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %252, i32 0, i32 6
  store %struct.hid_device* %251, %struct.hid_device** %253, align 8
  %254 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %255 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %256 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %255, i32 0, i32 5
  store %struct.usb_interface* %254, %struct.usb_interface** %256, align 8
  %257 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %258 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %262 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %261, i32 0, i32 4
  store i32 %260, i32* %262, align 8
  %263 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %264 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %263, i32 0, i32 3
  %265 = call i32 @init_waitqueue_head(i32* %264)
  %266 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %267 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %266, i32 0, i32 2
  %268 = load i32, i32* @hid_reset, align 4
  %269 = call i32 @INIT_WORK(i32* %267, i32 %268)
  %270 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %271 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %270, i32 0, i32 1
  %272 = load i32, i32* @hid_retry_timeout, align 4
  %273 = call i32 @timer_setup(i32* %271, i32 %272, i32 0)
  %274 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %275 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %274, i32 0, i32 0
  %276 = call i32 @spin_lock_init(i32* %275)
  %277 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %278 = call i32 @hid_add_device(%struct.hid_device* %277)
  store i32 %278, i32* %13, align 4
  %279 = load i32, i32* %13, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %291

281:                                              ; preds = %247
  %282 = load i32, i32* %13, align 4
  %283 = load i32, i32* @ENODEV, align 4
  %284 = sub nsw i32 0, %283
  %285 = icmp ne i32 %282, %284
  br i1 %285, label %286, label %290

286:                                              ; preds = %281
  %287 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %288 = load i32, i32* %13, align 4
  %289 = call i32 (%struct.usb_interface*, i8*, ...) @hid_err(%struct.usb_interface* %287, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %288)
  br label %290

290:                                              ; preds = %286, %281
  br label %292

291:                                              ; preds = %247
  store i32 0, i32* %3, align 4
  br label %299

292:                                              ; preds = %290
  %293 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %294 = call i32 @kfree(%struct.usbhid_device* %293)
  br label %295

295:                                              ; preds = %292, %244
  %296 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %297 = call i32 @hid_destroy_device(%struct.hid_device* %296)
  %298 = load i32, i32* %13, align 4
  store i32 %298, i32* %3, align 4
  br label %299

299:                                              ; preds = %295, %291, %63, %53
  %300 = load i32, i32* %3, align 4
  ret i32 %300
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @dbg_hid(i8*, i32) #1

declare dso_local i64 @usb_endpoint_is_int_in(i32*) #1

declare dso_local i32 @hid_err(%struct.usb_interface*, i8*, ...) #1

declare dso_local %struct.hid_device* @hid_allocate_device(...) #1

declare dso_local i64 @IS_ERR(%struct.hid_device*) #1

declare dso_local i32 @PTR_ERR(%struct.hid_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.hid_device*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @strlcpy(i64*, i64, i32) #1

declare dso_local i32 @strlcat(i64*, i8*, i32) #1

declare dso_local i64 @strlen(i64*) #1

declare dso_local i32 @snprintf(i64*, i32, i8*, i32, ...) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i64*, i32) #1

declare dso_local i64 @usb_string(%struct.usb_device*, i32, i64*, i32) #1

declare dso_local %struct.usbhid_device* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hid_add_device(%struct.hid_device*) #1

declare dso_local i32 @kfree(%struct.usbhid_device*) #1

declare dso_local i32 @hid_destroy_device(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
