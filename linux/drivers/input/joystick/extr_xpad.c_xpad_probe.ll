; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, i32, i32 }
%struct.usb_interface = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i64, i32, i64 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.usb_xpad = type { i64, i32, i32, %struct.TYPE_14__*, i32, i32, i32, %struct.usb_interface*, %struct.usb_device*, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@xpad_device = common dso_local global %struct.TYPE_13__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@XPAD_PKT_LEN = common dso_local global i32 0, align 4
@xpad_presence_work = common dso_local global i32 0, align 4
@XTYPE_UNKNOWN = common dso_local global i64 0, align 8
@USB_CLASS_VENDOR_SPEC = common dso_local global i64 0, align 8
@XTYPE_XBOX360W = common dso_local global i64 0, align 8
@XTYPE_XBOXONE = common dso_local global i64 0, align 8
@XTYPE_XBOX360 = common dso_local global i64 0, align 8
@XTYPE_XBOX = common dso_local global i64 0, align 8
@dpad_to_buttons = common dso_local global i64 0, align 8
@MAP_DPAD_TO_BUTTONS = common dso_local global i32 0, align 4
@triggers_to_buttons = common dso_local global i64 0, align 8
@MAP_TRIGGERS_TO_BUTTONS = common dso_local global i32 0, align 4
@sticks_to_null = common dso_local global i64 0, align 8
@MAP_STICKS_TO_NULL = common dso_local global i32 0, align 4
@xpad_irq_in = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@USB_QUIRK_RESET_RESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @xpad_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpad_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_xpad*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %13)
  store %struct.usb_device* %14, %struct.usb_device** %6, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %369

25:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %62, %25
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** @xpad_device, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %26
  %35 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %36 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le16_to_cpu(i32 %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** @xpad_device, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %39, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %34
  %48 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %49 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @le16_to_cpu(i32 %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** @xpad_device, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %52, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %65

61:                                               ; preds = %47, %34
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %26

65:                                               ; preds = %60, %26
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.usb_xpad* @kzalloc(i32 64, i32 %66)
  store %struct.usb_xpad* %67, %struct.usb_xpad** %7, align 8
  %68 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %69 = icmp ne %struct.usb_xpad* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %369

73:                                               ; preds = %65
  %74 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %75 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %76 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @usb_make_path(%struct.usb_device* %74, i32 %77, i32 4)
  %79 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %80 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @strlcat(i32 %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  %83 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %84 = load i32, i32* @XPAD_PKT_LEN, align 4
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %87 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %86, i32 0, i32 1
  %88 = call i32 @usb_alloc_coherent(%struct.usb_device* %83, i32 %84, i32 %85, i32* %87)
  %89 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %90 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %92 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %73
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %11, align 4
  br label %365

98:                                               ; preds = %73
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call %struct.TYPE_14__* @usb_alloc_urb(i32 0, i32 %99)
  %101 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %102 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %101, i32 0, i32 3
  store %struct.TYPE_14__* %100, %struct.TYPE_14__** %102, align 8
  %103 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %104 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %103, i32 0, i32 3
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = icmp ne %struct.TYPE_14__* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %98
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %11, align 4
  br label %355

110:                                              ; preds = %98
  %111 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %112 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %113 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %112, i32 0, i32 8
  store %struct.usb_device* %111, %struct.usb_device** %113, align 8
  %114 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %115 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %116 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %115, i32 0, i32 7
  store %struct.usb_interface* %114, %struct.usb_interface** %116, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** @xpad_device, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %124 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** @xpad_device, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %132 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** @xpad_device, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %140 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %139, i32 0, i32 6
  store i32 %138, i32* %140, align 8
  %141 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %142 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %141, i32 0, i32 5
  %143 = load i32, i32* @xpad_presence_work, align 4
  %144 = call i32 @INIT_WORK(i32* %142, i32 %143)
  %145 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %146 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @XTYPE_UNKNOWN, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %221

150:                                              ; preds = %110
  %151 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %152 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %151, i32 0, i32 0
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @USB_CLASS_VENDOR_SPEC, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %189

159:                                              ; preds = %150
  %160 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %161 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %160, i32 0, i32 0
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %165, 129
  br i1 %166, label %167, label %171

167:                                              ; preds = %159
  %168 = load i64, i64* @XTYPE_XBOX360W, align 8
  %169 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %170 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  br label %188

171:                                              ; preds = %159
  %172 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %173 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %172, i32 0, i32 0
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 208
  br i1 %178, label %179, label %183

179:                                              ; preds = %171
  %180 = load i64, i64* @XTYPE_XBOXONE, align 8
  %181 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %182 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %181, i32 0, i32 0
  store i64 %180, i64* %182, align 8
  br label %187

183:                                              ; preds = %171
  %184 = load i64, i64* @XTYPE_XBOX360, align 8
  %185 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %186 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  br label %187

187:                                              ; preds = %183, %179
  br label %188

188:                                              ; preds = %187, %167
  br label %193

189:                                              ; preds = %150
  %190 = load i64, i64* @XTYPE_XBOX, align 8
  %191 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %192 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %191, i32 0, i32 0
  store i64 %190, i64* %192, align 8
  br label %193

193:                                              ; preds = %189, %188
  %194 = load i64, i64* @dpad_to_buttons, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %193
  %197 = load i32, i32* @MAP_DPAD_TO_BUTTONS, align 4
  %198 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %199 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 8
  br label %202

202:                                              ; preds = %196, %193
  %203 = load i64, i64* @triggers_to_buttons, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %202
  %206 = load i32, i32* @MAP_TRIGGERS_TO_BUTTONS, align 4
  %207 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %208 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = or i32 %209, %206
  store i32 %210, i32* %208, align 8
  br label %211

211:                                              ; preds = %205, %202
  %212 = load i64, i64* @sticks_to_null, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  %215 = load i32, i32* @MAP_STICKS_TO_NULL, align 4
  %216 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %217 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %214, %211
  br label %221

221:                                              ; preds = %220, %110
  %222 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %223 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @XTYPE_XBOXONE, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %238

227:                                              ; preds = %221
  %228 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %229 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %228, i32 0, i32 0
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %227
  %236 = load i32, i32* @ENODEV, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %11, align 4
  br label %350

238:                                              ; preds = %227, %221
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %9, align 8
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %8, align 8
  store i32 0, i32* %10, align 4
  br label %239

239:                                              ; preds = %265, %238
  %240 = load i32, i32* %10, align 4
  %241 = icmp slt i32 %240, 2
  br i1 %241, label %242, label %268

242:                                              ; preds = %239
  %243 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %244 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %243, i32 0, i32 0
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %246, align 8
  %248 = load i32, i32* %10, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %251, %struct.usb_endpoint_descriptor** %12, align 8
  %252 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %12, align 8
  %253 = call i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %264

255:                                              ; preds = %242
  %256 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %12, align 8
  %257 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %255
  %260 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %12, align 8
  store %struct.usb_endpoint_descriptor* %260, %struct.usb_endpoint_descriptor** %8, align 8
  br label %263

261:                                              ; preds = %255
  %262 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %12, align 8
  store %struct.usb_endpoint_descriptor* %262, %struct.usb_endpoint_descriptor** %9, align 8
  br label %263

263:                                              ; preds = %261, %259
  br label %264

264:                                              ; preds = %263, %242
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %10, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %10, align 4
  br label %239

268:                                              ; preds = %239
  %269 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %270 = icmp ne %struct.usb_endpoint_descriptor* %269, null
  br i1 %270, label %271, label %274

271:                                              ; preds = %268
  %272 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %273 = icmp ne %struct.usb_endpoint_descriptor* %272, null
  br i1 %273, label %277, label %274

274:                                              ; preds = %271, %268
  %275 = load i32, i32* @ENODEV, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %11, align 4
  br label %350

277:                                              ; preds = %271
  %278 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %279 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %280 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %281 = call i32 @xpad_init_output(%struct.usb_interface* %278, %struct.usb_xpad* %279, %struct.usb_endpoint_descriptor* %280)
  store i32 %281, i32* %11, align 4
  %282 = load i32, i32* %11, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %277
  br label %350

285:                                              ; preds = %277
  %286 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %287 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %286, i32 0, i32 3
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %287, align 8
  %289 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %290 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %291 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %292 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @usb_rcvintpipe(%struct.usb_device* %290, i32 %293)
  %295 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %296 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @XPAD_PKT_LEN, align 4
  %299 = load i32, i32* @xpad_irq_in, align 4
  %300 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %301 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %302 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @usb_fill_int_urb(%struct.TYPE_14__* %288, %struct.usb_device* %289, i32 %294, i32 %297, i32 %298, i32 %299, %struct.usb_xpad* %300, i32 %303)
  %305 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %306 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %309 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %308, i32 0, i32 3
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 1
  store i32 %307, i32* %311, align 4
  %312 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %313 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %314 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %313, i32 0, i32 3
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = or i32 %317, %312
  store i32 %318, i32* %316, align 4
  %319 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %320 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %321 = call i32 @usb_set_intfdata(%struct.usb_interface* %319, %struct.usb_xpad* %320)
  %322 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %323 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @XTYPE_XBOX360W, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %339

327:                                              ; preds = %285
  %328 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %329 = call i32 @xpad360w_start_input(%struct.usb_xpad* %328)
  store i32 %329, i32* %11, align 4
  %330 = load i32, i32* %11, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %327
  br label %347

333:                                              ; preds = %327
  %334 = load i32, i32* @USB_QUIRK_RESET_RESUME, align 4
  %335 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %336 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = or i32 %337, %334
  store i32 %338, i32* %336, align 4
  br label %346

339:                                              ; preds = %285
  %340 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %341 = call i32 @xpad_init_input(%struct.usb_xpad* %340)
  store i32 %341, i32* %11, align 4
  %342 = load i32, i32* %11, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %339
  br label %347

345:                                              ; preds = %339
  br label %346

346:                                              ; preds = %345, %333
  store i32 0, i32* %3, align 4
  br label %369

347:                                              ; preds = %344, %332
  %348 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %349 = call i32 @xpad_deinit_output(%struct.usb_xpad* %348)
  br label %350

350:                                              ; preds = %347, %284, %274, %235
  %351 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %352 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %351, i32 0, i32 3
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %352, align 8
  %354 = call i32 @usb_free_urb(%struct.TYPE_14__* %353)
  br label %355

355:                                              ; preds = %350, %107
  %356 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %357 = load i32, i32* @XPAD_PKT_LEN, align 4
  %358 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %359 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %362 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 8
  %364 = call i32 @usb_free_coherent(%struct.usb_device* %356, i32 %357, i32 %360, i32 %363)
  br label %365

365:                                              ; preds = %355, %95
  %366 = load %struct.usb_xpad*, %struct.usb_xpad** %7, align 8
  %367 = call i32 @kfree(%struct.usb_xpad* %366)
  %368 = load i32, i32* %11, align 4
  store i32 %368, i32* %3, align 4
  br label %369

369:                                              ; preds = %365, %346, %70, %22
  %370 = load i32, i32* %3, align 4
  ret i32 %370
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.usb_xpad* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @usb_alloc_coherent(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_14__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @xpad_init_output(%struct.usb_interface*, %struct.usb_xpad*, %struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_14__*, %struct.usb_device*, i32, i32, i32, i32, %struct.usb_xpad*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usb_xpad*) #1

declare dso_local i32 @xpad360w_start_input(%struct.usb_xpad*) #1

declare dso_local i32 @xpad_init_input(%struct.usb_xpad*) #1

declare dso_local i32 @xpad_deinit_output(%struct.usb_xpad*) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_14__*) #1

declare dso_local i32 @usb_free_coherent(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.usb_xpad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
