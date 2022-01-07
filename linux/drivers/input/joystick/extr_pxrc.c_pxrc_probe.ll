; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_pxrc.c_pxrc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_pxrc.c_pxrc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.pxrc = type { %struct.TYPE_6__*, i32, i32, %struct.usb_interface*, i32 }
%struct.TYPE_6__ = type { i8*, i32, i32, i32, i32 }
%struct.usb_endpoint_descriptor = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Could not find endpoint\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pxrc_free_urb = common dso_local global i32 0, align 4
@pxrc_usb_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"couldn't allocate input device\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"PXRC Flight Controller Adapter\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@pxrc_open = common dso_local global i32 0, align 4
@pxrc_close = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_A = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_RX = common dso_local global i32 0, align 4
@ABS_RY = common dso_local global i32 0, align 4
@ABS_RUDDER = common dso_local global i32 0, align 4
@ABS_THROTTLE = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @pxrc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxrc_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.pxrc*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %12)
  store %struct.usb_device* %13, %struct.usb_device** %6, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @usb_find_common_endpoints(i32 %16, i32* null, i32* null, %struct.usb_endpoint_descriptor** %8, i32* null)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 0
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %3, align 4
  br label %203

25:                                               ; preds = %2
  %26 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %27 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %26, i32 0, i32 0
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.pxrc* @devm_kzalloc(i32* %27, i32 32, i32 %28)
  store %struct.pxrc* %29, %struct.pxrc** %7, align 8
  %30 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %31 = icmp ne %struct.pxrc* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %203

35:                                               ; preds = %25
  %36 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %37 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %36, i32 0, i32 4
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %40 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %41 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %40, i32 0, i32 3
  store %struct.usb_interface* %39, %struct.usb_interface** %41, align 8
  %42 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %43 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %42, i32 0, i32 3
  %44 = load %struct.usb_interface*, %struct.usb_interface** %43, align 8
  %45 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %46 = call i32 @usb_set_intfdata(%struct.usb_interface* %44, %struct.pxrc* %45)
  %47 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %48 = call i64 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %47)
  store i64 %48, i64* %9, align 8
  %49 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %50 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %49, i32 0, i32 0
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @devm_kmalloc(i32* %50, i64 %51, i32 %52)
  store i8* %53, i8** %10, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %35
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %203

59:                                               ; preds = %35
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32 @usb_alloc_urb(i32 0, i32 %60)
  %62 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %63 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %65 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %203

71:                                               ; preds = %59
  %72 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %73 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %72, i32 0, i32 0
  %74 = load i32, i32* @pxrc_free_urb, align 4
  %75 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %76 = call i32 @devm_add_action_or_reset(i32* %73, i32 %74, %struct.pxrc* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %3, align 4
  br label %203

81:                                               ; preds = %71
  %82 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %83 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %86 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %87 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %88 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @usb_rcvintpipe(%struct.usb_device* %86, i32 %89)
  %91 = load i8*, i8** %10, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i32, i32* @pxrc_usb_irq, align 4
  %94 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %95 = call i32 @usb_fill_int_urb(i32 %84, %struct.usb_device* %85, i32 %90, i8* %91, i64 %92, i32 %93, %struct.pxrc* %94, i32 1)
  %96 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %97 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %96, i32 0, i32 0
  %98 = call %struct.TYPE_6__* @devm_input_allocate_device(i32* %97)
  %99 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %100 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %99, i32 0, i32 0
  store %struct.TYPE_6__* %98, %struct.TYPE_6__** %100, align 8
  %101 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %102 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = icmp ne %struct.TYPE_6__* %103, null
  br i1 %104, label %111, label %105

105:                                              ; preds = %81
  %106 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %107 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %106, i32 0, i32 0
  %108 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %203

111:                                              ; preds = %81
  %112 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %113 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8** %115, align 8
  %116 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %117 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %118 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @usb_make_path(%struct.usb_device* %116, i32 %119, i32 4)
  %121 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %122 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @strlcat(i32 %123, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %125 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %126 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %129 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 4
  store i32 %127, i32* %131, align 4
  %132 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %133 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %134 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %133, i32 0, i32 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 3
  %137 = call i32 @usb_to_input_id(%struct.usb_device* %132, i32* %136)
  %138 = load i32, i32* @pxrc_open, align 4
  %139 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %140 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %139, i32 0, i32 0
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  store i32 %138, i32* %142, align 4
  %143 = load i32, i32* @pxrc_close, align 4
  %144 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %145 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %144, i32 0, i32 0
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  store i32 %143, i32* %147, align 8
  %148 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %149 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %148, i32 0, i32 0
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = load i32, i32* @EV_KEY, align 4
  %152 = load i32, i32* @BTN_A, align 4
  %153 = call i32 @input_set_capability(%struct.TYPE_6__* %150, i32 %151, i32 %152)
  %154 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %155 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %154, i32 0, i32 0
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = load i32, i32* @ABS_X, align 4
  %158 = call i32 @input_set_abs_params(%struct.TYPE_6__* %156, i32 %157, i32 0, i32 255, i32 0, i32 0)
  %159 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %160 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %159, i32 0, i32 0
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = load i32, i32* @ABS_Y, align 4
  %163 = call i32 @input_set_abs_params(%struct.TYPE_6__* %161, i32 %162, i32 0, i32 255, i32 0, i32 0)
  %164 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %165 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %164, i32 0, i32 0
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = load i32, i32* @ABS_RX, align 4
  %168 = call i32 @input_set_abs_params(%struct.TYPE_6__* %166, i32 %167, i32 0, i32 255, i32 0, i32 0)
  %169 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %170 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %169, i32 0, i32 0
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = load i32, i32* @ABS_RY, align 4
  %173 = call i32 @input_set_abs_params(%struct.TYPE_6__* %171, i32 %172, i32 0, i32 255, i32 0, i32 0)
  %174 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %175 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %174, i32 0, i32 0
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = load i32, i32* @ABS_RUDDER, align 4
  %178 = call i32 @input_set_abs_params(%struct.TYPE_6__* %176, i32 %177, i32 0, i32 255, i32 0, i32 0)
  %179 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %180 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %179, i32 0, i32 0
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = load i32, i32* @ABS_THROTTLE, align 4
  %183 = call i32 @input_set_abs_params(%struct.TYPE_6__* %181, i32 %182, i32 0, i32 255, i32 0, i32 0)
  %184 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %185 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %184, i32 0, i32 0
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = load i32, i32* @ABS_MISC, align 4
  %188 = call i32 @input_set_abs_params(%struct.TYPE_6__* %186, i32 %187, i32 0, i32 255, i32 0, i32 0)
  %189 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %190 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %189, i32 0, i32 0
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %193 = call i32 @input_set_drvdata(%struct.TYPE_6__* %191, %struct.pxrc* %192)
  %194 = load %struct.pxrc*, %struct.pxrc** %7, align 8
  %195 = getelementptr inbounds %struct.pxrc, %struct.pxrc* %194, i32 0, i32 0
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = call i32 @input_register_device(%struct.TYPE_6__* %196)
  store i32 %197, i32* %11, align 4
  %198 = load i32, i32* %11, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %111
  %201 = load i32, i32* %11, align 4
  store i32 %201, i32* %3, align 4
  br label %203

202:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %203

203:                                              ; preds = %202, %200, %105, %79, %68, %56, %32, %20
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_find_common_endpoints(i32, i32*, i32*, %struct.usb_endpoint_descriptor**, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.pxrc* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.pxrc*) #1

declare dso_local i64 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

declare dso_local i8* @devm_kmalloc(i32*, i64, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @devm_add_action_or_reset(i32*, i32, %struct.pxrc*) #1

declare dso_local i32 @usb_fill_int_urb(i32, %struct.usb_device*, i32, i8*, i64, i32, %struct.pxrc*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local %struct.TYPE_6__* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @usb_to_input_id(%struct.usb_device*, i32*) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.TYPE_6__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_6__*, %struct.pxrc*) #1

declare dso_local i32 @input_register_device(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
