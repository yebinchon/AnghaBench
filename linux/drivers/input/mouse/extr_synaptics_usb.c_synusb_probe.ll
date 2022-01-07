; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_synaptics_usb.c_synusb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_synaptics_usb.c_synusb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i8*, i32, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.synusb = type { i32, %struct.TYPE_11__*, i32, %struct.input_dev*, %struct.usb_interface*, i32, i32, i32, %struct.usb_device* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.input_dev = type { i32 (%struct.input_dev*)*, i32, i32, i32, i32, i32 (%struct.input_dev*)*, %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { i32* }

@.str = private unnamed_addr constant [47 x i8] c"Can not set alternate setting to %i, error: %i\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SYNUSB_COMBO = common dso_local global i32 0, align 4
@SYNUSB_STICK = common dso_local global i32 0, align 4
@SYNUSB_TOUCHPAD = common dso_local global i32 0, align 4
@SYNUSB_RECV_SIZE = common dso_local global i32 0, align 4
@synusb_irq = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"USB Synaptics Device %04x:%04x\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" (Stick)\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@SYNUSB_IO_ALWAYS = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@INPUT_PROP_POINTING_STICK = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@XMIN_NOMINAL = common dso_local global i32 0, align 4
@XMAX_NOMINAL = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@YMIN_NOMINAL = common dso_local global i32 0, align 4
@YMAX_NOMINAL = common dso_local global i32 0, align 4
@ABS_TOOL_WIDTH = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_TOOL_DOUBLETAP = common dso_local global i32 0, align 4
@BTN_TOOL_TRIPLETAP = common dso_local global i32 0, align 4
@SYNUSB_TOUCHSCREEN = common dso_local global i32 0, align 4
@INPUT_PROP_DIRECT = common dso_local global i32 0, align 4
@INPUT_PROP_POINTER = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Failed to register input device, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @synusb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synusb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca %struct.synusb*, align 8
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %13)
  store %struct.usb_device* %14, %struct.usb_device** %6, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @min(i32 %23, i32 1)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @usb_set_interface(%struct.usb_device* %25, i32 %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %33 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %32, i32 0, i32 1
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %33, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %3, align 4
  br label %445

38:                                               ; preds = %2
  %39 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %40 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %39, i32 0, i32 1
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = call %struct.usb_endpoint_descriptor* @synusb_get_in_endpoint(%struct.TYPE_12__* %41)
  store %struct.usb_endpoint_descriptor* %42, %struct.usb_endpoint_descriptor** %7, align 8
  %43 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %44 = icmp ne %struct.usb_endpoint_descriptor* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %445

48:                                               ; preds = %38
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.synusb* @kzalloc(i32 64, i32 %49)
  store %struct.synusb* %50, %struct.synusb** %8, align 8
  %51 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %51, %struct.input_dev** %9, align 8
  %52 = load %struct.synusb*, %struct.synusb** %8, align 8
  %53 = icmp ne %struct.synusb* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %56 = icmp ne %struct.input_dev* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54, %48
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %12, align 4
  br label %437

60:                                               ; preds = %54
  %61 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %62 = load %struct.synusb*, %struct.synusb** %8, align 8
  %63 = getelementptr inbounds %struct.synusb, %struct.synusb* %62, i32 0, i32 8
  store %struct.usb_device* %61, %struct.usb_device** %63, align 8
  %64 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %65 = load %struct.synusb*, %struct.synusb** %8, align 8
  %66 = getelementptr inbounds %struct.synusb, %struct.synusb* %65, i32 0, i32 4
  store %struct.usb_interface* %64, %struct.usb_interface** %66, align 8
  %67 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %68 = load %struct.synusb*, %struct.synusb** %8, align 8
  %69 = getelementptr inbounds %struct.synusb, %struct.synusb* %68, i32 0, i32 3
  store %struct.input_dev* %67, %struct.input_dev** %69, align 8
  %70 = load %struct.synusb*, %struct.synusb** %8, align 8
  %71 = getelementptr inbounds %struct.synusb, %struct.synusb* %70, i32 0, i32 7
  %72 = call i32 @mutex_init(i32* %71)
  %73 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %74 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.synusb*, %struct.synusb** %8, align 8
  %77 = getelementptr inbounds %struct.synusb, %struct.synusb* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.synusb*, %struct.synusb** %8, align 8
  %79 = getelementptr inbounds %struct.synusb, %struct.synusb* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SYNUSB_COMBO, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %60
  %85 = load i32, i32* %10, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @SYNUSB_STICK, align 4
  br label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @SYNUSB_TOUCHPAD, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = load %struct.synusb*, %struct.synusb** %8, align 8
  %94 = getelementptr inbounds %struct.synusb, %struct.synusb* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %91, %60
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call %struct.TYPE_11__* @usb_alloc_urb(i32 0, i32 %98)
  %100 = load %struct.synusb*, %struct.synusb** %8, align 8
  %101 = getelementptr inbounds %struct.synusb, %struct.synusb* %100, i32 0, i32 1
  store %struct.TYPE_11__* %99, %struct.TYPE_11__** %101, align 8
  %102 = load %struct.synusb*, %struct.synusb** %8, align 8
  %103 = getelementptr inbounds %struct.synusb, %struct.synusb* %102, i32 0, i32 1
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = icmp ne %struct.TYPE_11__* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %97
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %12, align 4
  br label %437

109:                                              ; preds = %97
  %110 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %111 = load i32, i32* @SYNUSB_RECV_SIZE, align 4
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = load %struct.synusb*, %struct.synusb** %8, align 8
  %114 = getelementptr inbounds %struct.synusb, %struct.synusb* %113, i32 0, i32 1
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = call i32 @usb_alloc_coherent(%struct.usb_device* %110, i32 %111, i32 %112, i32* %116)
  %118 = load %struct.synusb*, %struct.synusb** %8, align 8
  %119 = getelementptr inbounds %struct.synusb, %struct.synusb* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.synusb*, %struct.synusb** %8, align 8
  %121 = getelementptr inbounds %struct.synusb, %struct.synusb* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %109
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %12, align 4
  br label %432

127:                                              ; preds = %109
  %128 = load %struct.synusb*, %struct.synusb** %8, align 8
  %129 = getelementptr inbounds %struct.synusb, %struct.synusb* %128, i32 0, i32 1
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %132 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %133 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %134 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @usb_rcvintpipe(%struct.usb_device* %132, i32 %135)
  %137 = load %struct.synusb*, %struct.synusb** %8, align 8
  %138 = getelementptr inbounds %struct.synusb, %struct.synusb* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @SYNUSB_RECV_SIZE, align 4
  %141 = load i32, i32* @synusb_irq, align 4
  %142 = load %struct.synusb*, %struct.synusb** %8, align 8
  %143 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %144 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @usb_fill_int_urb(%struct.TYPE_11__* %130, %struct.usb_device* %131, i32 %136, i32 %139, i32 %140, i32 %141, %struct.synusb* %142, i32 %145)
  %147 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %148 = load %struct.synusb*, %struct.synusb** %8, align 8
  %149 = getelementptr inbounds %struct.synusb, %struct.synusb* %148, i32 0, i32 1
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %147
  store i32 %153, i32* %151, align 4
  %154 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %155 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %127
  %159 = load %struct.synusb*, %struct.synusb** %8, align 8
  %160 = getelementptr inbounds %struct.synusb, %struct.synusb* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %163 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @strlcpy(i32 %161, i64 %164, i32 4)
  br label %166

166:                                              ; preds = %158, %127
  %167 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %168 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %189

171:                                              ; preds = %166
  %172 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %173 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %171
  %177 = load %struct.synusb*, %struct.synusb** %8, align 8
  %178 = getelementptr inbounds %struct.synusb, %struct.synusb* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @strlcat(i32 %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %181

181:                                              ; preds = %176, %171
  %182 = load %struct.synusb*, %struct.synusb** %8, align 8
  %183 = getelementptr inbounds %struct.synusb, %struct.synusb* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %186 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @strlcat(i32 %184, i8* %187, i32 4)
  br label %189

189:                                              ; preds = %181, %166
  %190 = load %struct.synusb*, %struct.synusb** %8, align 8
  %191 = getelementptr inbounds %struct.synusb, %struct.synusb* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @strlen(i32 %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %210, label %195

195:                                              ; preds = %189
  %196 = load %struct.synusb*, %struct.synusb** %8, align 8
  %197 = getelementptr inbounds %struct.synusb, %struct.synusb* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %200 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @le16_to_cpu(i32 %202)
  %204 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %205 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @le16_to_cpu(i32 %207)
  %209 = call i32 @snprintf(i32 %198, i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %203, i32 %208)
  br label %210

210:                                              ; preds = %195, %189
  %211 = load %struct.synusb*, %struct.synusb** %8, align 8
  %212 = getelementptr inbounds %struct.synusb, %struct.synusb* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @SYNUSB_STICK, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %210
  %218 = load %struct.synusb*, %struct.synusb** %8, align 8
  %219 = getelementptr inbounds %struct.synusb, %struct.synusb* %218, i32 0, i32 6
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @strlcat(i32 %220, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 4)
  br label %222

222:                                              ; preds = %217, %210
  %223 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %224 = load %struct.synusb*, %struct.synusb** %8, align 8
  %225 = getelementptr inbounds %struct.synusb, %struct.synusb* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @usb_make_path(%struct.usb_device* %223, i32 %226, i32 4)
  %228 = load %struct.synusb*, %struct.synusb** %8, align 8
  %229 = getelementptr inbounds %struct.synusb, %struct.synusb* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @strlcat(i32 %230, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %232 = load %struct.synusb*, %struct.synusb** %8, align 8
  %233 = getelementptr inbounds %struct.synusb, %struct.synusb* %232, i32 0, i32 6
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %236 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %235, i32 0, i32 9
  store i32 %234, i32* %236, align 8
  %237 = load %struct.synusb*, %struct.synusb** %8, align 8
  %238 = getelementptr inbounds %struct.synusb, %struct.synusb* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %241 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %240, i32 0, i32 8
  store i32 %239, i32* %241, align 4
  %242 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %243 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %244 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %243, i32 0, i32 7
  %245 = call i32 @usb_to_input_id(%struct.usb_device* %242, i32* %244)
  %246 = load %struct.synusb*, %struct.synusb** %8, align 8
  %247 = getelementptr inbounds %struct.synusb, %struct.synusb* %246, i32 0, i32 4
  %248 = load %struct.usb_interface*, %struct.usb_interface** %247, align 8
  %249 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %248, i32 0, i32 0
  %250 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %251 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %250, i32 0, i32 6
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 0
  store i32* %249, i32** %252, align 8
  %253 = load %struct.synusb*, %struct.synusb** %8, align 8
  %254 = getelementptr inbounds %struct.synusb, %struct.synusb* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @SYNUSB_IO_ALWAYS, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %264, label %259

259:                                              ; preds = %222
  %260 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %261 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %260, i32 0, i32 0
  store i32 (%struct.input_dev*)* @synusb_open, i32 (%struct.input_dev*)** %261, align 8
  %262 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %263 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %262, i32 0, i32 5
  store i32 (%struct.input_dev*)* @synusb_close, i32 (%struct.input_dev*)** %263, align 8
  br label %264

264:                                              ; preds = %259, %222
  %265 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %266 = load %struct.synusb*, %struct.synusb** %8, align 8
  %267 = call i32 @input_set_drvdata(%struct.input_dev* %265, %struct.synusb* %266)
  %268 = load i32, i32* @EV_ABS, align 4
  %269 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %270 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @__set_bit(i32 %268, i32 %271)
  %273 = load i32, i32* @EV_KEY, align 4
  %274 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %275 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @__set_bit(i32 %273, i32 %276)
  %278 = load %struct.synusb*, %struct.synusb** %8, align 8
  %279 = getelementptr inbounds %struct.synusb, %struct.synusb* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @SYNUSB_STICK, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %308

284:                                              ; preds = %264
  %285 = load i32, i32* @EV_REL, align 4
  %286 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %287 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @__set_bit(i32 %285, i32 %288)
  %290 = load i32, i32* @REL_X, align 4
  %291 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %292 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @__set_bit(i32 %290, i32 %293)
  %295 = load i32, i32* @REL_Y, align 4
  %296 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %297 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @__set_bit(i32 %295, i32 %298)
  %300 = load i32, i32* @INPUT_PROP_POINTING_STICK, align 4
  %301 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %302 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @__set_bit(i32 %300, i32 %303)
  %305 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %306 = load i32, i32* @ABS_PRESSURE, align 4
  %307 = call i32 @input_set_abs_params(%struct.input_dev* %305, i32 %306, i32 0, i32 127, i32 0, i32 0)
  br label %345

308:                                              ; preds = %264
  %309 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %310 = load i32, i32* @ABS_X, align 4
  %311 = load i32, i32* @XMIN_NOMINAL, align 4
  %312 = load i32, i32* @XMAX_NOMINAL, align 4
  %313 = call i32 @input_set_abs_params(%struct.input_dev* %309, i32 %310, i32 %311, i32 %312, i32 0, i32 0)
  %314 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %315 = load i32, i32* @ABS_Y, align 4
  %316 = load i32, i32* @YMIN_NOMINAL, align 4
  %317 = load i32, i32* @YMAX_NOMINAL, align 4
  %318 = call i32 @input_set_abs_params(%struct.input_dev* %314, i32 %315, i32 %316, i32 %317, i32 0, i32 0)
  %319 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %320 = load i32, i32* @ABS_PRESSURE, align 4
  %321 = call i32 @input_set_abs_params(%struct.input_dev* %319, i32 %320, i32 0, i32 255, i32 0, i32 0)
  %322 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %323 = load i32, i32* @ABS_TOOL_WIDTH, align 4
  %324 = call i32 @input_set_abs_params(%struct.input_dev* %322, i32 %323, i32 0, i32 15, i32 0, i32 0)
  %325 = load i32, i32* @BTN_TOUCH, align 4
  %326 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %327 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @__set_bit(i32 %325, i32 %328)
  %330 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %331 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %332 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @__set_bit(i32 %330, i32 %333)
  %335 = load i32, i32* @BTN_TOOL_DOUBLETAP, align 4
  %336 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %337 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @__set_bit(i32 %335, i32 %338)
  %340 = load i32, i32* @BTN_TOOL_TRIPLETAP, align 4
  %341 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %342 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @__set_bit(i32 %340, i32 %343)
  br label %345

345:                                              ; preds = %308, %284
  %346 = load %struct.synusb*, %struct.synusb** %8, align 8
  %347 = getelementptr inbounds %struct.synusb, %struct.synusb* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @SYNUSB_TOUCHSCREEN, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %358

352:                                              ; preds = %345
  %353 = load i32, i32* @INPUT_PROP_DIRECT, align 4
  %354 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %355 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @__set_bit(i32 %353, i32 %356)
  br label %364

358:                                              ; preds = %345
  %359 = load i32, i32* @INPUT_PROP_POINTER, align 4
  %360 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %361 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = call i32 @__set_bit(i32 %359, i32 %362)
  br label %364

364:                                              ; preds = %358, %352
  %365 = load i32, i32* @BTN_LEFT, align 4
  %366 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %367 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 8
  %369 = call i32 @__set_bit(i32 %365, i32 %368)
  %370 = load i32, i32* @BTN_RIGHT, align 4
  %371 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %372 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 8
  %374 = call i32 @__set_bit(i32 %370, i32 %373)
  %375 = load i32, i32* @BTN_MIDDLE, align 4
  %376 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %377 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @__set_bit(i32 %375, i32 %378)
  %380 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %381 = load %struct.synusb*, %struct.synusb** %8, align 8
  %382 = call i32 @usb_set_intfdata(%struct.usb_interface* %380, %struct.synusb* %381)
  %383 = load %struct.synusb*, %struct.synusb** %8, align 8
  %384 = getelementptr inbounds %struct.synusb, %struct.synusb* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = load i32, i32* @SYNUSB_IO_ALWAYS, align 4
  %387 = and i32 %385, %386
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %396

389:                                              ; preds = %364
  %390 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %391 = call i32 @synusb_open(%struct.input_dev* %390)
  store i32 %391, i32* %12, align 4
  %392 = load i32, i32* %12, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %395

394:                                              ; preds = %389
  br label %420

395:                                              ; preds = %389
  br label %396

396:                                              ; preds = %395, %364
  %397 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %398 = call i32 @input_register_device(%struct.input_dev* %397)
  store i32 %398, i32* %12, align 4
  %399 = load i32, i32* %12, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %406

401:                                              ; preds = %396
  %402 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %403 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %402, i32 0, i32 1
  %404 = load i32, i32* %12, align 4
  %405 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %403, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %404)
  br label %407

406:                                              ; preds = %396
  store i32 0, i32* %3, align 4
  br label %445

407:                                              ; preds = %401
  %408 = load %struct.synusb*, %struct.synusb** %8, align 8
  %409 = getelementptr inbounds %struct.synusb, %struct.synusb* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @SYNUSB_IO_ALWAYS, align 4
  %412 = and i32 %410, %411
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %419

414:                                              ; preds = %407
  %415 = load %struct.synusb*, %struct.synusb** %8, align 8
  %416 = getelementptr inbounds %struct.synusb, %struct.synusb* %415, i32 0, i32 3
  %417 = load %struct.input_dev*, %struct.input_dev** %416, align 8
  %418 = call i32 @synusb_close(%struct.input_dev* %417)
  br label %419

419:                                              ; preds = %414, %407
  br label %420

420:                                              ; preds = %419, %394
  %421 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %422 = load i32, i32* @SYNUSB_RECV_SIZE, align 4
  %423 = load %struct.synusb*, %struct.synusb** %8, align 8
  %424 = getelementptr inbounds %struct.synusb, %struct.synusb* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 8
  %426 = load %struct.synusb*, %struct.synusb** %8, align 8
  %427 = getelementptr inbounds %struct.synusb, %struct.synusb* %426, i32 0, i32 1
  %428 = load %struct.TYPE_11__*, %struct.TYPE_11__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 4
  %431 = call i32 @usb_free_coherent(%struct.usb_device* %421, i32 %422, i32 %425, i32 %430)
  br label %432

432:                                              ; preds = %420, %124
  %433 = load %struct.synusb*, %struct.synusb** %8, align 8
  %434 = getelementptr inbounds %struct.synusb, %struct.synusb* %433, i32 0, i32 1
  %435 = load %struct.TYPE_11__*, %struct.TYPE_11__** %434, align 8
  %436 = call i32 @usb_free_urb(%struct.TYPE_11__* %435)
  br label %437

437:                                              ; preds = %432, %106, %57
  %438 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %439 = call i32 @input_free_device(%struct.input_dev* %438)
  %440 = load %struct.synusb*, %struct.synusb** %8, align 8
  %441 = call i32 @kfree(%struct.synusb* %440)
  %442 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %443 = call i32 @usb_set_intfdata(%struct.usb_interface* %442, %struct.synusb* null)
  %444 = load i32, i32* %12, align 4
  store i32 %444, i32* %3, align 4
  br label %445

445:                                              ; preds = %437, %406, %45, %31
  %446 = load i32, i32* %3, align 4
  ret i32 %446
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local %struct.usb_endpoint_descriptor* @synusb_get_in_endpoint(%struct.TYPE_12__*) #1

declare dso_local %struct.synusb* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.TYPE_11__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_alloc_coherent(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_11__*, %struct.usb_device*, i32, i32, i32, i32, %struct.synusb*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @strlcpy(i32, i64, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_to_input_id(%struct.usb_device*, i32*) #1

declare dso_local i32 @synusb_open(%struct.input_dev*) #1

declare dso_local i32 @synusb_close(%struct.input_dev*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.synusb*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.synusb*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @usb_free_coherent(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_11__*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.synusb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
