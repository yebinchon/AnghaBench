; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, %struct.TYPE_15__, %struct.TYPE_11__*, i32, %struct.usbhid_device* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.usbhid_device = type { i32, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_14__*, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_12__, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32, i64, i64 }
%struct.TYPE_10__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.usb_device = type { i64, i32 }

@HID_DISCONNECTED = common dso_local global i32 0, align 4
@HID_MIN_BUFFER_SIZE = common dso_local global i32 0, align 4
@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@HID_OUTPUT_REPORT = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_MAX_BUFFER_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HID_QUIRK_FULLSPEED_INTERVAL = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"%s: Fixing fullspeed to highspeed interval: %d -> %d\0A\00", align 1
@hid_mousepoll_interval = common dso_local global i32 0, align 4
@hid_jspoll_interval = common dso_local global i32 0, align 4
@hid_kbpoll_interval = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@hid_irq_in = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@hid_irq_out = common dso_local global i32 0, align 4
@hid_ctrl = common dso_local global i32 0, align 4
@HID_STARTED = common dso_local global i32 0, align 4
@HID_QUIRK_ALWAYS_POLL = common dso_local global i32 0, align 4
@HID_IN_POLLING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to start in urb: %d\0A\00", align 1
@USB_INTERFACE_SUBCLASS_BOOT = common dso_local global i64 0, align 8
@USB_INTERFACE_PROTOCOL_KEYBOARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @usbhid_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhid_start(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_host_interface*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usbhid_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_endpoint_descriptor*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %14 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %15 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.usb_interface* @to_usb_interface(i32 %17)
  store %struct.usb_interface* %18, %struct.usb_interface** %4, align 8
  %19 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %20 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %19, i32 0, i32 0
  %21 = load %struct.usb_host_interface*, %struct.usb_host_interface** %20, align 8
  store %struct.usb_host_interface* %21, %struct.usb_host_interface** %5, align 8
  %22 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %23 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %22)
  store %struct.usb_device* %23, %struct.usb_device** %6, align 8
  %24 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %25 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %24, i32 0, i32 4
  %26 = load %struct.usbhid_device*, %struct.usbhid_device** %25, align 8
  store %struct.usbhid_device* %26, %struct.usbhid_device** %7, align 8
  store i32 0, i32* %9, align 4
  %27 = load i32, i32* @HID_DISCONNECTED, align 4
  %28 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %29 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %28, i32 0, i32 5
  %30 = call i32 @clear_bit(i32 %27, i32* %29)
  %31 = load i32, i32* @HID_MIN_BUFFER_SIZE, align 4
  %32 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %33 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %35 = load i32, i32* @HID_INPUT_REPORT, align 4
  %36 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %37 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %36, i32 0, i32 0
  %38 = call i32 @hid_find_max_report(%struct.hid_device* %34, i32 %35, i32* %37)
  %39 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %40 = load i32, i32* @HID_OUTPUT_REPORT, align 4
  %41 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %42 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %41, i32 0, i32 0
  %43 = call i32 @hid_find_max_report(%struct.hid_device* %39, i32 %40, i32* %42)
  %44 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %45 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %46 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %47 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %46, i32 0, i32 0
  %48 = call i32 @hid_find_max_report(%struct.hid_device* %44, i32 %45, i32* %47)
  %49 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %50 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @HID_MAX_BUFFER_SIZE, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %1
  %55 = load i32, i32* @HID_MAX_BUFFER_SIZE, align 4
  %56 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %57 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %54, %1
  %59 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %60 = load i32, i32* @HID_INPUT_REPORT, align 4
  %61 = call i32 @hid_find_max_report(%struct.hid_device* %59, i32 %60, i32* %9)
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @HID_MAX_BUFFER_SIZE, align 4
  %64 = icmp ugt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @HID_MAX_BUFFER_SIZE, align 4
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %65, %58
  %68 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %69 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %70 = call i64 @hid_alloc_buffers(%struct.usb_device* %68, %struct.hid_device* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %10, align 4
  br label %356

75:                                               ; preds = %67
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %249, %75
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %79 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ult i32 %77, %81
  br i1 %82, label %83, label %252

83:                                               ; preds = %76
  %84 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %85 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %84, i32 0, i32 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %90, %struct.usb_endpoint_descriptor** %11, align 8
  %91 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %92 = call i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %83
  br label %249

95:                                               ; preds = %83
  %96 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %97 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %13, align 4
  %99 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %100 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @HID_QUIRK_FULLSPEED_INTERVAL, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %125

105:                                              ; preds = %95
  %106 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %107 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @USB_SPEED_HIGH, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %105
  %112 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %113 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %114, 8
  %116 = call i32 @fls(i32 %115)
  store i32 %116, i32* %13, align 4
  %117 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %118 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %121 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @pr_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %119, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %111, %105, %95
  %126 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %127 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %126, i32 0, i32 2
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  switch i32 %130, label %149 [
    i32 128, label %131
    i32 130, label %137
    i32 129, label %143
  ]

131:                                              ; preds = %125
  %132 = load i32, i32* @hid_mousepoll_interval, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i32, i32* @hid_mousepoll_interval, align 4
  store i32 %135, i32* %13, align 4
  br label %136

136:                                              ; preds = %134, %131
  br label %149

137:                                              ; preds = %125
  %138 = load i32, i32* @hid_jspoll_interval, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = load i32, i32* @hid_jspoll_interval, align 4
  store i32 %141, i32* %13, align 4
  br label %142

142:                                              ; preds = %140, %137
  br label %149

143:                                              ; preds = %125
  %144 = load i32, i32* @hid_kbpoll_interval, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = load i32, i32* @hid_kbpoll_interval, align 4
  store i32 %147, i32* %13, align 4
  br label %148

148:                                              ; preds = %146, %143
  br label %149

149:                                              ; preds = %125, %148, %142, %136
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %10, align 4
  %152 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %153 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %202

155:                                              ; preds = %149
  %156 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %157 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %156, i32 0, i32 3
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %157, align 8
  %159 = icmp ne %struct.TYPE_13__* %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %249

161:                                              ; preds = %155
  %162 = load i32, i32* @GFP_KERNEL, align 4
  %163 = call i8* @usb_alloc_urb(i32 0, i32 %162)
  %164 = bitcast i8* %163 to %struct.TYPE_13__*
  %165 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %166 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %165, i32 0, i32 3
  store %struct.TYPE_13__* %164, %struct.TYPE_13__** %166, align 8
  %167 = icmp ne %struct.TYPE_13__* %164, null
  br i1 %167, label %169, label %168

168:                                              ; preds = %161
  br label %356

169:                                              ; preds = %161
  %170 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %171 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %172 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @usb_rcvintpipe(%struct.usb_device* %170, i32 %173)
  store i32 %174, i32* %12, align 4
  %175 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %176 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %175, i32 0, i32 3
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %176, align 8
  %178 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %179 = load i32, i32* %12, align 4
  %180 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %181 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %180, i32 0, i32 12
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* @hid_irq_in, align 4
  %185 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %186 = load i32, i32* %13, align 4
  %187 = call i32 @usb_fill_int_urb(%struct.TYPE_13__* %177, %struct.usb_device* %178, i32 %179, i32 %182, i32 %183, i32 %184, %struct.hid_device* %185, i32 %186)
  %188 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %189 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %188, i32 0, i32 11
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %192 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %191, i32 0, i32 3
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  store i32 %190, i32* %194, align 4
  %195 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %196 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %197 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %196, i32 0, i32 3
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %195
  store i32 %201, i32* %199, align 4
  br label %248

202:                                              ; preds = %149
  %203 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %204 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %203, i32 0, i32 2
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %204, align 8
  %206 = icmp ne %struct.TYPE_13__* %205, null
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  br label %249

208:                                              ; preds = %202
  %209 = load i32, i32* @GFP_KERNEL, align 4
  %210 = call i8* @usb_alloc_urb(i32 0, i32 %209)
  %211 = bitcast i8* %210 to %struct.TYPE_13__*
  %212 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %213 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %212, i32 0, i32 2
  store %struct.TYPE_13__* %211, %struct.TYPE_13__** %213, align 8
  %214 = icmp ne %struct.TYPE_13__* %211, null
  br i1 %214, label %216, label %215

215:                                              ; preds = %208
  br label %356

216:                                              ; preds = %208
  %217 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %218 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %219 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @usb_sndintpipe(%struct.usb_device* %217, i32 %220)
  store i32 %221, i32* %12, align 4
  %222 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %223 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %222, i32 0, i32 2
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %223, align 8
  %225 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %226 = load i32, i32* %12, align 4
  %227 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %228 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %227, i32 0, i32 10
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @hid_irq_out, align 4
  %231 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %232 = load i32, i32* %13, align 4
  %233 = call i32 @usb_fill_int_urb(%struct.TYPE_13__* %224, %struct.usb_device* %225, i32 %226, i32 %229, i32 0, i32 %230, %struct.hid_device* %231, i32 %232)
  %234 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %235 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %234, i32 0, i32 9
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %238 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %237, i32 0, i32 2
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 1
  store i32 %236, i32* %240, align 4
  %241 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %242 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %243 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %242, i32 0, i32 2
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = or i32 %246, %241
  store i32 %247, i32* %245, align 4
  br label %248

248:                                              ; preds = %216, %169
  br label %249

249:                                              ; preds = %248, %207, %160, %94
  %250 = load i32, i32* %8, align 4
  %251 = add i32 %250, 1
  store i32 %251, i32* %8, align 4
  br label %76

252:                                              ; preds = %76
  %253 = load i32, i32* @GFP_KERNEL, align 4
  %254 = call i8* @usb_alloc_urb(i32 0, i32 %253)
  %255 = bitcast i8* %254 to %struct.TYPE_13__*
  %256 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %257 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %256, i32 0, i32 1
  store %struct.TYPE_13__* %255, %struct.TYPE_13__** %257, align 8
  %258 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %259 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %258, i32 0, i32 1
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %259, align 8
  %261 = icmp ne %struct.TYPE_13__* %260, null
  br i1 %261, label %265, label %262

262:                                              ; preds = %252
  %263 = load i32, i32* @ENOMEM, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %10, align 4
  br label %356

265:                                              ; preds = %252
  %266 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %267 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %266, i32 0, i32 1
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %267, align 8
  %269 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %270 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %271 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %270, i32 0, i32 8
  %272 = load i64, i64* %271, align 8
  %273 = inttoptr i64 %272 to i8*
  %274 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %275 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %274, i32 0, i32 7
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @hid_ctrl, align 4
  %278 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %279 = call i32 @usb_fill_control_urb(%struct.TYPE_13__* %268, %struct.usb_device* %269, i32 0, i8* %273, i32 %276, i32 1, i32 %277, %struct.hid_device* %278)
  %280 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %281 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %284 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %283, i32 0, i32 1
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 1
  store i32 %282, i32* %286, align 4
  %287 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %288 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %289 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %288, i32 0, i32 1
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = or i32 %292, %287
  store i32 %293, i32* %291, align 4
  %294 = load i32, i32* @HID_STARTED, align 4
  %295 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %296 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %295, i32 0, i32 5
  %297 = call i32 @set_bit(i32 %294, i32* %296)
  %298 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %299 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @HID_QUIRK_ALWAYS_POLL, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %335

304:                                              ; preds = %265
  %305 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %306 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %305, i32 0, i32 4
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %306, align 8
  %308 = call i32 @usb_autopm_get_interface(%struct.TYPE_14__* %307)
  store i32 %308, i32* %10, align 4
  %309 = load i32, i32* %10, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %304
  br label %356

312:                                              ; preds = %304
  %313 = load i32, i32* @HID_IN_POLLING, align 4
  %314 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %315 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %314, i32 0, i32 5
  %316 = call i32 @set_bit(i32 %313, i32* %315)
  %317 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %318 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %317, i32 0, i32 4
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 0
  store i32 1, i32* %320, align 4
  %321 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %322 = call i32 @hid_start_in(%struct.hid_device* %321)
  store i32 %322, i32* %10, align 4
  %323 = load i32, i32* %10, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %312
  %326 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %327 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %326, i32 0, i32 1
  %328 = load i32, i32* %10, align 4
  %329 = call i32 @dev_err(%struct.TYPE_15__* %327, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %328)
  br label %330

330:                                              ; preds = %325, %312
  %331 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %332 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %331, i32 0, i32 4
  %333 = load %struct.TYPE_14__*, %struct.TYPE_14__** %332, align 8
  %334 = call i32 @usb_autopm_put_interface(%struct.TYPE_14__* %333)
  br label %335

335:                                              ; preds = %330, %265
  %336 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %337 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* @USB_INTERFACE_SUBCLASS_BOOT, align 8
  %341 = icmp eq i64 %339, %340
  br i1 %341, label %342, label %355

342:                                              ; preds = %335
  %343 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %344 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 2
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @USB_INTERFACE_PROTOCOL_KEYBOARD, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %349, label %355

349:                                              ; preds = %342
  %350 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %351 = call i32 @usbhid_set_leds(%struct.hid_device* %350)
  %352 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %353 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %352, i32 0, i32 1
  %354 = call i32 @device_set_wakeup_enable(i32* %353, i32 1)
  br label %355

355:                                              ; preds = %349, %342, %335
  store i32 0, i32* %2, align 4
  br label %379

356:                                              ; preds = %311, %262, %215, %168, %72
  %357 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %358 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %357, i32 0, i32 3
  %359 = load %struct.TYPE_13__*, %struct.TYPE_13__** %358, align 8
  %360 = call i32 @usb_free_urb(%struct.TYPE_13__* %359)
  %361 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %362 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %361, i32 0, i32 2
  %363 = load %struct.TYPE_13__*, %struct.TYPE_13__** %362, align 8
  %364 = call i32 @usb_free_urb(%struct.TYPE_13__* %363)
  %365 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %366 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %365, i32 0, i32 1
  %367 = load %struct.TYPE_13__*, %struct.TYPE_13__** %366, align 8
  %368 = call i32 @usb_free_urb(%struct.TYPE_13__* %367)
  %369 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %370 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %369, i32 0, i32 3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %370, align 8
  %371 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %372 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %371, i32 0, i32 2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %372, align 8
  %373 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %374 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %373, i32 0, i32 1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %374, align 8
  %375 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %376 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %377 = call i32 @hid_free_buffers(%struct.usb_device* %375, %struct.hid_device* %376)
  %378 = load i32, i32* %10, align 4
  store i32 %378, i32* %2, align 4
  br label %379

379:                                              ; preds = %356, %355
  %380 = load i32, i32* %2, align 4
  ret i32 %380
}

declare dso_local %struct.usb_interface* @to_usb_interface(i32) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @hid_find_max_report(%struct.hid_device*, i32, i32*) #1

declare dso_local i64 @hid_alloc_buffers(%struct.usb_device*, %struct.hid_device*) #1

declare dso_local i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

declare dso_local i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_13__*, %struct.usb_device*, i32, i32, i32, i32, %struct.hid_device*, i32) #1

declare dso_local i32 @usb_sndintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_fill_control_urb(%struct.TYPE_13__*, %struct.usb_device*, i32, i8*, i32, i32, i32, %struct.hid_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @usb_autopm_get_interface(%struct.TYPE_14__*) #1

declare dso_local i32 @hid_start_in(%struct.hid_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @usb_autopm_put_interface(%struct.TYPE_14__*) #1

declare dso_local i32 @usbhid_set_leds(%struct.hid_device*) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_13__*) #1

declare dso_local i32 @hid_free_buffers(%struct.usb_device*, %struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
