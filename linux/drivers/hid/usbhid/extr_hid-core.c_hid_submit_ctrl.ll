; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_hid_submit_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_hid_submit_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.usbhid_device* }
%struct.usbhid_device = type { i64, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i8, i64, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8, %struct.hid_report* }
%struct.hid_report = type { i32, i32, i32 }

@USB_DIR_OUT = common dso_local global i8 0, align 1
@USB_TYPE_CLASS = common dso_local global i8 0, align 1
@USB_RECIP_INTERFACE = common dso_local global i8 0, align 1
@HID_REQ_SET_REPORT = common dso_local global i64 0, align 8
@HID_REQ_GET_REPORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"submitting ctrl urb: %s wValue=0x%04x wIndex=0x%04x wLength=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Set_Report\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Get_Report\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"usb_submit_urb(ctrl) failed: %d\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @hid_submit_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_submit_ctrl(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.hid_report*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usbhid_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %13 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %12, i32 0, i32 0
  %14 = load %struct.usbhid_device*, %struct.usbhid_device** %13, align 8
  store %struct.usbhid_device* %14, %struct.usbhid_device** %9, align 8
  %15 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %16 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %15, i32 0, i32 6
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %19 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load %struct.hid_report*, %struct.hid_report** %22, align 8
  store %struct.hid_report* %23, %struct.hid_report** %4, align 8
  %24 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %25 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %24, i32 0, i32 6
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %28 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %6, align 8
  %33 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %34 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %33, i32 0, i32 6
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %37 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i8, i8* %40, align 8
  store i8 %41, i8* %5, align 1
  %42 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %43 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = ashr i32 %45, 3
  %47 = add nsw i32 %46, 1
  %48 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %49 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = add nsw i32 %47, %52
  store i32 %53, i32* %7, align 4
  %54 = load i8, i8* %5, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* @USB_DIR_OUT, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %92

59:                                               ; preds = %1
  %60 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %61 = call i32 @hid_to_usb_dev(%struct.hid_device* %60)
  %62 = call i32 @usb_sndctrlpipe(i32 %61, i32 0)
  %63 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %64 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %63, i32 0, i32 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %69 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %68, i32 0, i32 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %91

74:                                               ; preds = %59
  %75 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %76 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @memcpy(i32 %77, i8* %78, i32 %79)
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @kfree(i8* %81)
  %83 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %84 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %83, i32 0, i32 6
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %87 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i8* null, i8** %90, align 8
  br label %91

91:                                               ; preds = %74, %59
  br label %134

92:                                               ; preds = %1
  %93 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %94 = call i32 @hid_to_usb_dev(%struct.hid_device* %93)
  %95 = call i32 @usb_rcvctrlpipe(i32 %94, i32 0)
  %96 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %97 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %96, i32 0, i32 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  store i32 %95, i32* %99, align 4
  %100 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %101 = call i32 @hid_to_usb_dev(%struct.hid_device* %100)
  %102 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %103 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %102, i32 0, i32 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @usb_maxpacket(i32 %101, i32 %106, i32 0)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %92
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @DIV_ROUND_UP(i32 %111, i32 %112)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %11, align 4
  %116 = mul nsw i32 %115, %114
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %119 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp sgt i32 %117, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %110
  %123 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %124 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %122, %110
  br label %128

127:                                              ; preds = %92
  store i32 0, i32* %11, align 4
  br label %128

128:                                              ; preds = %127, %126
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %131 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %130, i32 0, i32 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  store i32 %129, i32* %133, align 4
  br label %134

134:                                              ; preds = %128, %91
  %135 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %136 = call i32 @hid_to_usb_dev(%struct.hid_device* %135)
  %137 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %138 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %137, i32 0, i32 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  store i32 %136, i32* %140, align 4
  %141 = load i8, i8* @USB_TYPE_CLASS, align 1
  %142 = zext i8 %141 to i32
  %143 = load i8, i8* @USB_RECIP_INTERFACE, align 1
  %144 = zext i8 %143 to i32
  %145 = or i32 %142, %144
  %146 = load i8, i8* %5, align 1
  %147 = zext i8 %146 to i32
  %148 = or i32 %145, %147
  %149 = trunc i32 %148 to i8
  %150 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %151 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %150, i32 0, i32 5
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  store i8 %149, i8* %153, align 8
  %154 = load i8, i8* %5, align 1
  %155 = zext i8 %154 to i32
  %156 = load i8, i8* @USB_DIR_OUT, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp eq i32 %155, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %134
  %160 = load i64, i64* @HID_REQ_SET_REPORT, align 8
  br label %163

161:                                              ; preds = %134
  %162 = load i64, i64* @HID_REQ_GET_REPORT, align 8
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i64 [ %160, %159 ], [ %162, %161 ]
  %165 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %166 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %165, i32 0, i32 5
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  store i64 %164, i64* %168, align 8
  %169 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %170 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  %173 = shl i32 %172, 8
  %174 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %175 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %173, %176
  %178 = call i8* @cpu_to_le16(i32 %177)
  %179 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %180 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %179, i32 0, i32 5
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 4
  store i8* %178, i8** %182, align 8
  %183 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %184 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = call i8* @cpu_to_le16(i32 %185)
  %187 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %188 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %187, i32 0, i32 5
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 3
  store i8* %186, i8** %190, align 8
  %191 = load i32, i32* %7, align 4
  %192 = call i8* @cpu_to_le16(i32 %191)
  %193 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %194 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %193, i32 0, i32 5
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 2
  store i8* %192, i8** %196, align 8
  %197 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %198 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %197, i32 0, i32 5
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @HID_REQ_SET_REPORT, align 8
  %203 = icmp eq i64 %201, %202
  %204 = zext i1 %203 to i64
  %205 = select i1 %203, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %206 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %207 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %206, i32 0, i32 5
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 4
  %210 = load i8*, i8** %209, align 8
  %211 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %212 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %211, i32 0, i32 5
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 3
  %215 = load i8*, i8** %214, align 8
  %216 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %217 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %216, i32 0, i32 5
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 2
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @dbg_hid(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %205, i8* %210, i8* %215, i8* %220)
  %222 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %223 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %222, i32 0, i32 4
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = load i32, i32* @GFP_ATOMIC, align 4
  %226 = call i32 @usb_submit_urb(%struct.TYPE_6__* %224, i32 %225)
  store i32 %226, i32* %8, align 4
  %227 = load i32, i32* %8, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %163
  %230 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %231 = load i32, i32* %8, align 4
  %232 = call i32 @hid_err(%struct.hid_device* %230, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %231)
  %233 = load i32, i32* %8, align 4
  store i32 %233, i32* %2, align 4
  br label %238

234:                                              ; preds = %163
  %235 = load i32, i32* @jiffies, align 4
  %236 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  %237 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %236, i32 0, i32 3
  store i32 %235, i32* %237, align 8
  store i32 0, i32* %2, align 4
  br label %238

238:                                              ; preds = %234, %229
  %239 = load i32, i32* %2, align 4
  ret i32 %239
}

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @hid_to_usb_dev(%struct.hid_device*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @usb_maxpacket(i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @dbg_hid(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
