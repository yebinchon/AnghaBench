; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sur40.c_sur40_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sur40.c_sur40_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32*, i32*, %struct.sur40_state* }
%struct.sur40_state = type { i64, i32, %struct.input_polled_dev*, %struct.sur40_state*, %struct.TYPE_24__, %struct.TYPE_22__, %struct.TYPE_17__, %struct.TYPE_23__, i32, i32, i32*, i32, %struct.usb_device*, i32, i32, i32 }
%struct.input_polled_dev = type { %struct.TYPE_18__*, i32, i32, i32, i32, %struct.sur40_state* }
%struct.TYPE_18__ = type { i8*, %struct.TYPE_21__, i32, i32 }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_24__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_23__*, i32*, %struct.TYPE_24__* }
%struct.TYPE_17__ = type { i64 }
%struct.usb_device = type { i32 }
%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_20__*, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i64 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.usb_device_id = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@TOUCH_ENDPOINT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@POLL_INTERVAL = common dso_local global i32 0, align 4
@sur40_open = common dso_local global i32 0, align 4
@sur40_poll = common dso_local global i32 0, align 4
@sur40_close = common dso_local global i32 0, align 4
@DRIVER_LONG = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to allocate input buffer.\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Unable to register polled input device.\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Unable to register video master device.\00", align 1
@sur40_queue = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@sur40_pix_format = common dso_local global i32* null, align 8
@sur40_video_device = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@SUR40_CONTRAST_DEF = common dso_local global i32 0, align 4
@SUR40_GAIN_DEF = common dso_local global i32 0, align 4
@sur40_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@SUR40_BRIGHTNESS_MIN = common dso_local global i64 0, align 8
@SUR40_BRIGHTNESS_MAX = common dso_local global i64 0, align 8
@brightness = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@SUR40_CONTRAST_MIN = common dso_local global i64 0, align 8
@SUR40_CONTRAST_MAX = common dso_local global i64 0, align 8
@contrast = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@SUR40_GAIN_MIN = common dso_local global i64 0, align 8
@SUR40_GAIN_MAX = common dso_local global i64 0, align 8
@gain = common dso_local global i32 0, align 4
@V4L2_CID_BACKLIGHT_COMPENSATION = common dso_local global i32 0, align 4
@SUR40_BACKLIGHT_MIN = common dso_local global i64 0, align 8
@SUR40_BACKLIGHT_MAX = common dso_local global i64 0, align 8
@SUR40_BACKLIGHT_DEF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Unable to register video controls.\00", align 1
@VFL_TYPE_TOUCH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Unable to register video subdevice.\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"%s is now attached\0A\00", align 1
@DRIVER_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @sur40_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sur40_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.sur40_state*, align 8
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  %10 = alloca %struct.input_polled_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %12)
  store %struct.usb_device* %13, %struct.usb_device** %6, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 1
  %16 = load %struct.usb_host_interface*, %struct.usb_host_interface** %15, align 8
  %17 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %16, i64 0
  store %struct.usb_host_interface* %17, %struct.usb_host_interface** %8, align 8
  %18 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %19 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 255
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %357

26:                                               ; preds = %2
  %27 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %28 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 5
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %357

35:                                               ; preds = %26
  %36 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %37 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %36, i32 0, i32 0
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i64 4
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %40, %struct.usb_endpoint_descriptor** %9, align 8
  %41 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %42 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TOUCH_ENDPOINT, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %357

49:                                               ; preds = %35
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.sur40_state* @kzalloc(i32 152, i32 %50)
  store %struct.sur40_state* %51, %struct.sur40_state** %7, align 8
  %52 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %53 = icmp ne %struct.sur40_state* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %357

57:                                               ; preds = %49
  %58 = call %struct.input_polled_dev* (...) @input_allocate_polled_device()
  store %struct.input_polled_dev* %58, %struct.input_polled_dev** %10, align 8
  %59 = load %struct.input_polled_dev*, %struct.input_polled_dev** %10, align 8
  %60 = icmp ne %struct.input_polled_dev* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %11, align 4
  br label %353

64:                                               ; preds = %57
  %65 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %66 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %65, i32 0, i32 15
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %69 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %68, i32 0, i32 14
  %70 = call i32 @spin_lock_init(i32* %69)
  %71 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %72 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %71, i32 0, i32 8
  %73 = call i32 @mutex_init(i32* %72)
  %74 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %75 = load %struct.input_polled_dev*, %struct.input_polled_dev** %10, align 8
  %76 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %75, i32 0, i32 5
  store %struct.sur40_state* %74, %struct.sur40_state** %76, align 8
  %77 = load i32, i32* @POLL_INTERVAL, align 4
  %78 = load %struct.input_polled_dev*, %struct.input_polled_dev** %10, align 8
  %79 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @sur40_open, align 4
  %81 = load %struct.input_polled_dev*, %struct.input_polled_dev** %10, align 8
  %82 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @sur40_poll, align 4
  %84 = load %struct.input_polled_dev*, %struct.input_polled_dev** %10, align 8
  %85 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @sur40_close, align 4
  %87 = load %struct.input_polled_dev*, %struct.input_polled_dev** %10, align 8
  %88 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load %struct.input_polled_dev*, %struct.input_polled_dev** %10, align 8
  %90 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %89, i32 0, i32 0
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %90, align 8
  %92 = call i32 @sur40_input_setup(%struct.TYPE_18__* %91)
  %93 = load i8*, i8** @DRIVER_LONG, align 8
  %94 = load %struct.input_polled_dev*, %struct.input_polled_dev** %10, align 8
  %95 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %94, i32 0, i32 0
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  store i8* %93, i8** %97, align 8
  %98 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %99 = load %struct.input_polled_dev*, %struct.input_polled_dev** %10, align 8
  %100 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %99, i32 0, i32 0
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 3
  %103 = call i32 @usb_to_input_id(%struct.usb_device* %98, i32* %102)
  %104 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %105 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %106 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %105, i32 0, i32 13
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @usb_make_path(%struct.usb_device* %104, i32 %107, i32 4)
  %109 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %110 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %109, i32 0, i32 13
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @strlcat(i32 %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  %113 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %114 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %113, i32 0, i32 13
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.input_polled_dev*, %struct.input_polled_dev** %10, align 8
  %117 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %116, i32 0, i32 0
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 2
  store i32 %115, i32* %119, align 8
  %120 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %121 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %120, i32 0, i32 0
  %122 = load %struct.input_polled_dev*, %struct.input_polled_dev** %10, align 8
  %123 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %122, i32 0, i32 0
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  store i32* %121, i32** %126, align 8
  %127 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %128 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %129 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %128, i32 0, i32 12
  store %struct.usb_device* %127, %struct.usb_device** %129, align 8
  %130 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %131 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %130, i32 0, i32 0
  %132 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %133 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %132, i32 0, i32 10
  store i32* %131, i32** %133, align 8
  %134 = load %struct.input_polled_dev*, %struct.input_polled_dev** %10, align 8
  %135 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %136 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %135, i32 0, i32 2
  store %struct.input_polled_dev* %134, %struct.input_polled_dev** %136, align 8
  %137 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %138 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %137)
  %139 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %140 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %139, i32 0, i32 11
  store i32 %138, i32* %140, align 8
  %141 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %142 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %145 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %147 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %146, i32 0, i32 11
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @GFP_KERNEL, align 4
  %150 = call %struct.sur40_state* @kmalloc(i32 %148, i32 %149)
  %151 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %152 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %151, i32 0, i32 3
  store %struct.sur40_state* %150, %struct.sur40_state** %152, align 8
  %153 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %154 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %153, i32 0, i32 3
  %155 = load %struct.sur40_state*, %struct.sur40_state** %154, align 8
  %156 = icmp ne %struct.sur40_state* %155, null
  br i1 %156, label %163, label %157

157:                                              ; preds = %64
  %158 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %159 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %158, i32 0, i32 0
  %160 = call i32 @dev_err(i32* %159, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %161 = load i32, i32* @ENOMEM, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %11, align 4
  br label %348

163:                                              ; preds = %64
  %164 = load %struct.input_polled_dev*, %struct.input_polled_dev** %10, align 8
  %165 = call i32 @input_register_polled_device(%struct.input_polled_dev* %164)
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %170 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %169, i32 0, i32 0
  %171 = call i32 @dev_err(i32* %170, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %343

172:                                              ; preds = %163
  %173 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %174 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i8*, i8** @DRIVER_LONG, align 8
  %178 = call i32 @snprintf(i32 %176, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %177)
  %179 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %180 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %179, i32 0, i32 10
  %181 = load i32*, i32** %180, align 8
  %182 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %183 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %182, i32 0, i32 4
  %184 = call i32 @v4l2_device_register(i32* %181, %struct.TYPE_24__* %183)
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %172
  %188 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %189 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %188, i32 0, i32 0
  %190 = call i32 @dev_err(i32* %189, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %339

191:                                              ; preds = %172
  %192 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %193 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %192, i32 0, i32 7
  %194 = bitcast %struct.TYPE_23__* %193 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %194, i8* align 8 bitcast (%struct.TYPE_23__* @sur40_queue to i8*), i64 24, i1 false)
  %195 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %196 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %197 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %196, i32 0, i32 7
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 2
  store %struct.sur40_state* %195, %struct.sur40_state** %198, align 8
  %199 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %200 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %199, i32 0, i32 8
  %201 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %202 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %201, i32 0, i32 7
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 1
  store i32* %200, i32** %203, align 8
  %204 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %205 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %204, i32 0, i32 10
  %206 = load i32*, i32** %205, align 8
  %207 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %208 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %207, i32 0, i32 7
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 0
  store i32* %206, i32** %209, align 8
  %210 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %211 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %210, i32 0, i32 7
  %212 = call i32 @vb2_queue_init(%struct.TYPE_23__* %211)
  store i32 %212, i32* %11, align 4
  %213 = load i32, i32* %11, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %191
  br label %339

216:                                              ; preds = %191
  %217 = load i32*, i32** @sur40_pix_format, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %221 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %220, i32 0, i32 9
  store i32 %219, i32* %221, align 4
  %222 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %223 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %222, i32 0, i32 5
  %224 = bitcast %struct.TYPE_22__* %223 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %224, i8* align 8 bitcast (%struct.TYPE_22__* @sur40_video_device to i8*), i64 24, i1 false)
  %225 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %226 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %225, i32 0, i32 4
  %227 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %228 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %227, i32 0, i32 5
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 2
  store %struct.TYPE_24__* %226, %struct.TYPE_24__** %229, align 8
  %230 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %231 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %230, i32 0, i32 8
  %232 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %233 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %232, i32 0, i32 5
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 1
  store i32* %231, i32** %234, align 8
  %235 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %236 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %235, i32 0, i32 7
  %237 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %238 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %237, i32 0, i32 5
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 0
  store %struct.TYPE_23__* %236, %struct.TYPE_23__** %239, align 8
  %240 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %241 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %240, i32 0, i32 5
  %242 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %243 = call i32 @video_set_drvdata(%struct.TYPE_22__* %241, %struct.sur40_state* %242)
  %244 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %245 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %244, i32 0, i32 6
  %246 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_17__* %245, i32 4)
  %247 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %248 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %247, i32 0, i32 6
  %249 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %250 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %249, i32 0, i32 4
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i32 0, i32 0
  store %struct.TYPE_17__* %248, %struct.TYPE_17__** %251, align 8
  %252 = load i32, i32* @SUR40_CONTRAST_DEF, align 4
  %253 = shl i32 %252, 4
  %254 = load i32, i32* @SUR40_GAIN_DEF, align 4
  %255 = or i32 %253, %254
  %256 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %257 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %256, i32 0, i32 1
  store i32 %255, i32* %257, align 8
  %258 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %259 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %258, i32 0, i32 6
  %260 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %261 = load i64, i64* @SUR40_BRIGHTNESS_MIN, align 8
  %262 = load i64, i64* @SUR40_BRIGHTNESS_MAX, align 8
  %263 = load i32, i32* @brightness, align 4
  %264 = load i64, i64* @SUR40_BRIGHTNESS_MIN, align 8
  %265 = trunc i64 %264 to i32
  %266 = load i64, i64* @SUR40_BRIGHTNESS_MAX, align 8
  %267 = trunc i64 %266 to i32
  %268 = call i32 @clamp(i32 %263, i32 %265, i32 %267)
  %269 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_17__* %259, i32* @sur40_ctrl_ops, i32 %260, i64 %261, i64 %262, i32 1, i32 %268)
  %270 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %271 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %270, i32 0, i32 6
  %272 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %273 = load i64, i64* @SUR40_CONTRAST_MIN, align 8
  %274 = load i64, i64* @SUR40_CONTRAST_MAX, align 8
  %275 = load i32, i32* @contrast, align 4
  %276 = load i64, i64* @SUR40_CONTRAST_MIN, align 8
  %277 = trunc i64 %276 to i32
  %278 = load i64, i64* @SUR40_CONTRAST_MAX, align 8
  %279 = trunc i64 %278 to i32
  %280 = call i32 @clamp(i32 %275, i32 %277, i32 %279)
  %281 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_17__* %271, i32* @sur40_ctrl_ops, i32 %272, i64 %273, i64 %274, i32 1, i32 %280)
  %282 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %283 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %282, i32 0, i32 6
  %284 = load i32, i32* @V4L2_CID_GAIN, align 4
  %285 = load i64, i64* @SUR40_GAIN_MIN, align 8
  %286 = load i64, i64* @SUR40_GAIN_MAX, align 8
  %287 = load i32, i32* @gain, align 4
  %288 = load i64, i64* @SUR40_GAIN_MIN, align 8
  %289 = trunc i64 %288 to i32
  %290 = load i64, i64* @SUR40_GAIN_MAX, align 8
  %291 = trunc i64 %290 to i32
  %292 = call i32 @clamp(i32 %287, i32 %289, i32 %291)
  %293 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_17__* %283, i32* @sur40_ctrl_ops, i32 %284, i64 %285, i64 %286, i32 1, i32 %292)
  %294 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %295 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %294, i32 0, i32 6
  %296 = load i32, i32* @V4L2_CID_BACKLIGHT_COMPENSATION, align 4
  %297 = load i64, i64* @SUR40_BACKLIGHT_MIN, align 8
  %298 = load i64, i64* @SUR40_BACKLIGHT_MAX, align 8
  %299 = load i32, i32* @SUR40_BACKLIGHT_DEF, align 4
  %300 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_17__* %295, i32* @sur40_ctrl_ops, i32 %296, i64 %297, i64 %298, i32 1, i32 %299)
  %301 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %302 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %301, i32 0, i32 6
  %303 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_17__* %302)
  %304 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %305 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %304, i32 0, i32 6
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %316

309:                                              ; preds = %216
  %310 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %311 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %310, i32 0, i32 0
  %312 = call i32 @dev_err(i32* %311, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %313 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %314 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %313, i32 0, i32 6
  %315 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_17__* %314)
  br label %339

316:                                              ; preds = %216
  %317 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %318 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %317, i32 0, i32 5
  %319 = load i32, i32* @VFL_TYPE_TOUCH, align 4
  %320 = call i32 @video_register_device(%struct.TYPE_22__* %318, i32 %319, i32 -1)
  store i32 %320, i32* %11, align 4
  %321 = load i32, i32* %11, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %316
  %324 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %325 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %324, i32 0, i32 0
  %326 = call i32 @dev_err(i32* %325, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %335

327:                                              ; preds = %316
  %328 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %329 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %330 = call i32 @usb_set_intfdata(%struct.usb_interface* %328, %struct.sur40_state* %329)
  %331 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %332 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %331, i32 0, i32 0
  %333 = load i32, i32* @DRIVER_DESC, align 4
  %334 = call i32 @dev_dbg(i32* %332, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %333)
  store i32 0, i32* %3, align 4
  br label %357

335:                                              ; preds = %323
  %336 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %337 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %336, i32 0, i32 5
  %338 = call i32 @video_unregister_device(%struct.TYPE_22__* %337)
  br label %339

339:                                              ; preds = %335, %309, %215, %187
  %340 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %341 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %340, i32 0, i32 4
  %342 = call i32 @v4l2_device_unregister(%struct.TYPE_24__* %341)
  br label %343

343:                                              ; preds = %339, %168
  %344 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %345 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %344, i32 0, i32 3
  %346 = load %struct.sur40_state*, %struct.sur40_state** %345, align 8
  %347 = call i32 @kfree(%struct.sur40_state* %346)
  br label %348

348:                                              ; preds = %343, %157
  %349 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %350 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %349, i32 0, i32 2
  %351 = load %struct.input_polled_dev*, %struct.input_polled_dev** %350, align 8
  %352 = call i32 @input_free_polled_device(%struct.input_polled_dev* %351)
  br label %353

353:                                              ; preds = %348, %61
  %354 = load %struct.sur40_state*, %struct.sur40_state** %7, align 8
  %355 = call i32 @kfree(%struct.sur40_state* %354)
  %356 = load i32, i32* %11, align 4
  store i32 %356, i32* %3, align 4
  br label %357

357:                                              ; preds = %353, %327, %54, %46, %32, %23
  %358 = load i32, i32* %3, align 4
  ret i32 %358
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.sur40_state* @kzalloc(i32, i32) #1

declare dso_local %struct.input_polled_dev* @input_allocate_polled_device(...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sur40_input_setup(%struct.TYPE_18__*) #1

declare dso_local i32 @usb_to_input_id(%struct.usb_device*, i32*) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

declare dso_local %struct.sur40_state* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @input_register_polled_device(%struct.input_polled_dev*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.TYPE_24__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vb2_queue_init(%struct.TYPE_23__*) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_22__*, %struct.sur40_state*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_17__*, i32*, i32, i64, i64, i32, i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_17__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_17__*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.sur40_state*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @video_unregister_device(%struct.TYPE_22__*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_24__*) #1

declare dso_local i32 @kfree(%struct.sur40_state*) #1

declare dso_local i32 @input_free_polled_device(%struct.input_polled_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
