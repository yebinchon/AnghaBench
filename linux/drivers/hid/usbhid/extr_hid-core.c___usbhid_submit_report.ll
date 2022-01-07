; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c___usbhid_submit_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c___usbhid_submit_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, %struct.usbhid_device* }
%struct.usbhid_device = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, %struct.TYPE_4__*, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8, %struct.hid_report*, i8* }
%struct.TYPE_3__ = type { %struct.hid_report*, i8* }
%struct.hid_report = type { i64 }

@HID_QUIRK_NOGET = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i8 0, align 1
@HID_DISCONNECTED = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i8 0, align 1
@HID_OUTPUT_REPORT = common dso_local global i64 0, align 8
@HID_OUTPUT_FIFO_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"output queue full\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"output queueing failed\0A\00", align 1
@HID_OUT_RUNNING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@HID_CONTROL_FIFO_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"control queue full\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"control queueing failed\0A\00", align 1
@HID_CTRL_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_report*, i8)* @__usbhid_submit_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__usbhid_submit_report(%struct.hid_device* %0, %struct.hid_report* %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_report*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.usbhid_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_report* %1, %struct.hid_report** %5, align 8
  store i8 %2, i8* %6, align 1
  %9 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %10 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %9, i32 0, i32 1
  %11 = load %struct.usbhid_device*, %struct.usbhid_device** %10, align 8
  store %struct.usbhid_device* %11, %struct.usbhid_device** %8, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %13 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @HID_QUIRK_NOGET, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @USB_DIR_IN, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18, %3
  %25 = load i32, i32* @HID_DISCONNECTED, align 4
  %26 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %27 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %26, i32 0, i32 5
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %18
  br label %314

31:                                               ; preds = %24
  %32 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %33 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %32, i32 0, i32 10
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %173

36:                                               ; preds = %31
  %37 = load i8, i8* %6, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* @USB_DIR_OUT, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %173

42:                                               ; preds = %36
  %43 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %44 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @HID_OUTPUT_REPORT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %173

48:                                               ; preds = %42
  %49 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %50 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  %53 = load i32, i32* @HID_OUTPUT_FIFO_SIZE, align 4
  %54 = sub nsw i32 %53, 1
  %55 = and i32 %52, %54
  store i32 %55, i32* %7, align 4
  %56 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %57 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %62 = call i32 @hid_warn(%struct.hid_device* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %314

63:                                               ; preds = %48
  %64 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %65 = load i32, i32* @GFP_ATOMIC, align 4
  %66 = call i8* @hid_alloc_report_buf(%struct.hid_report* %64, i32 %65)
  %67 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %68 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %67, i32 0, i32 12
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %71 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  store i8* %66, i8** %75, align 8
  %76 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %77 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %76, i32 0, i32 12
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %80 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %63
  %88 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %89 = call i32 @hid_warn(%struct.hid_device* %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %314

90:                                               ; preds = %63
  %91 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %92 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %93 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %92, i32 0, i32 12
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %96 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @hid_output_report(%struct.hid_report* %91, i8* %101)
  %103 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %104 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %105 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %104, i32 0, i32 12
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %108 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store %struct.hid_report* %103, %struct.hid_report** %112, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %115 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* @HID_OUT_RUNNING, align 4
  %117 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %118 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %117, i32 0, i32 5
  %119 = call i64 @test_bit(i32 %116, i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %90
  %122 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %123 = call i32 @usbhid_restart_out_queue(%struct.usbhid_device* %122)
  br label %172

124:                                              ; preds = %90
  %125 = load i32, i32* @jiffies, align 4
  %126 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %127 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %126, i32 0, i32 11
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* @HZ, align 4
  %130 = mul nsw i32 %129, 5
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %128, %131
  %133 = call i64 @time_after(i32 %125, i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %171

135:                                              ; preds = %124
  %136 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %137 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @usb_autopm_get_interface_no_resume(i32 %138)
  %140 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %141 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %140, i32 0, i32 10
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @usb_block_urb(i64 %142)
  %144 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %145 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %144, i32 0, i32 7
  %146 = call i32 @spin_unlock(i32* %145)
  %147 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %148 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %147, i32 0, i32 10
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @usb_unlink_urb(i64 %149)
  %151 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %152 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %151, i32 0, i32 7
  %153 = call i32 @spin_lock(i32* %152)
  %154 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %155 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %154, i32 0, i32 10
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @usb_unblock_urb(i64 %156)
  %158 = load i32, i32* @HID_OUT_RUNNING, align 4
  %159 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %160 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %159, i32 0, i32 5
  %161 = call i64 @test_bit(i32 %158, i32* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %135
  %164 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %165 = call i32 @usbhid_restart_out_queue(%struct.usbhid_device* %164)
  br label %166

166:                                              ; preds = %163, %135
  %167 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %168 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @usb_autopm_put_interface_async(i32 %169)
  br label %171

171:                                              ; preds = %166, %124
  br label %172

172:                                              ; preds = %171, %121
  br label %314

173:                                              ; preds = %42, %36, %31
  %174 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %175 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 1
  %178 = load i32, i32* @HID_CONTROL_FIFO_SIZE, align 4
  %179 = sub nsw i32 %178, 1
  %180 = and i32 %177, %179
  store i32 %180, i32* %7, align 4
  %181 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %182 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %180, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %173
  %186 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %187 = call i32 @hid_warn(%struct.hid_device* %186, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %314

188:                                              ; preds = %173
  %189 = load i8, i8* %6, align 1
  %190 = zext i8 %189 to i32
  %191 = load i8, i8* @USB_DIR_OUT, align 1
  %192 = zext i8 %191 to i32
  %193 = icmp eq i32 %190, %192
  br i1 %193, label %194, label %234

194:                                              ; preds = %188
  %195 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %196 = load i32, i32* @GFP_ATOMIC, align 4
  %197 = call i8* @hid_alloc_report_buf(%struct.hid_report* %195, i32 %196)
  %198 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %199 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %198, i32 0, i32 9
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %202 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 2
  store i8* %197, i8** %206, align 8
  %207 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %208 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %207, i32 0, i32 9
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %211 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 2
  %216 = load i8*, i8** %215, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %221, label %218

218:                                              ; preds = %194
  %219 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %220 = call i32 @hid_warn(%struct.hid_device* %219, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %314

221:                                              ; preds = %194
  %222 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %223 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %224 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %223, i32 0, i32 9
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %224, align 8
  %226 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %227 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 2
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @hid_output_report(%struct.hid_report* %222, i8* %232)
  br label %234

234:                                              ; preds = %221, %188
  %235 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %236 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %237 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %236, i32 0, i32 9
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %237, align 8
  %239 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %240 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 1
  store %struct.hid_report* %235, %struct.hid_report** %244, align 8
  %245 = load i8, i8* %6, align 1
  %246 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %247 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %246, i32 0, i32 9
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %247, align 8
  %249 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %250 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 0
  store i8 %245, i8* %254, align 8
  %255 = load i32, i32* %7, align 4
  %256 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %257 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %256, i32 0, i32 2
  store i32 %255, i32* %257, align 8
  %258 = load i32, i32* @HID_CTRL_RUNNING, align 4
  %259 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %260 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %259, i32 0, i32 5
  %261 = call i64 @test_bit(i32 %258, i32* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %234
  %264 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %265 = call i32 @usbhid_restart_ctrl_queue(%struct.usbhid_device* %264)
  br label %314

266:                                              ; preds = %234
  %267 = load i32, i32* @jiffies, align 4
  %268 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %269 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %268, i32 0, i32 8
  %270 = load i64, i64* %269, align 8
  %271 = load i32, i32* @HZ, align 4
  %272 = mul nsw i32 %271, 5
  %273 = sext i32 %272 to i64
  %274 = add nsw i64 %270, %273
  %275 = call i64 @time_after(i32 %267, i64 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %313

277:                                              ; preds = %266
  %278 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %279 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @usb_autopm_get_interface_no_resume(i32 %280)
  %282 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %283 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %282, i32 0, i32 6
  %284 = load i64, i64* %283, align 8
  %285 = call i32 @usb_block_urb(i64 %284)
  %286 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %287 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %286, i32 0, i32 7
  %288 = call i32 @spin_unlock(i32* %287)
  %289 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %290 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %289, i32 0, i32 6
  %291 = load i64, i64* %290, align 8
  %292 = call i32 @usb_unlink_urb(i64 %291)
  %293 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %294 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %293, i32 0, i32 7
  %295 = call i32 @spin_lock(i32* %294)
  %296 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %297 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %296, i32 0, i32 6
  %298 = load i64, i64* %297, align 8
  %299 = call i32 @usb_unblock_urb(i64 %298)
  %300 = load i32, i32* @HID_CTRL_RUNNING, align 4
  %301 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %302 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %301, i32 0, i32 5
  %303 = call i64 @test_bit(i32 %300, i32* %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %308, label %305

305:                                              ; preds = %277
  %306 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %307 = call i32 @usbhid_restart_ctrl_queue(%struct.usbhid_device* %306)
  br label %308

308:                                              ; preds = %305, %277
  %309 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %310 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 8
  %312 = call i32 @usb_autopm_put_interface_async(i32 %311)
  br label %313

313:                                              ; preds = %308, %266
  br label %314

314:                                              ; preds = %30, %60, %87, %172, %185, %218, %313, %263
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hid_warn(%struct.hid_device*, i8*) #1

declare dso_local i8* @hid_alloc_report_buf(%struct.hid_report*, i32) #1

declare dso_local i32 @hid_output_report(%struct.hid_report*, i8*) #1

declare dso_local i32 @usbhid_restart_out_queue(%struct.usbhid_device*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @usb_autopm_get_interface_no_resume(i32) #1

declare dso_local i32 @usb_block_urb(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_unlink_urb(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @usb_unblock_urb(i64) #1

declare dso_local i32 @usb_autopm_put_interface_async(i32) #1

declare dso_local i32 @usbhid_restart_ctrl_queue(%struct.usbhid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
