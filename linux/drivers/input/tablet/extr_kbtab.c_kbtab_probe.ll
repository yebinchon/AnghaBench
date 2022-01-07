; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_kbtab.c_kbtab_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_kbtab.c_kbtab_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.kbtab = type { i32, i32, %struct.TYPE_12__*, %struct.input_dev*, i32, %struct.usb_interface* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.input_dev = type { i8*, i32*, i32*, i32, i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"KB Gear Tablet\00", align 1
@kbtab_open = common dso_local global i32 0, align 4
@kbtab_close = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_DIGI = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@kbtab_irq = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @kbtab_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbtab_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca %struct.kbtab*, align 8
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %11)
  store %struct.usb_device* %12, %struct.usb_device** %6, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %222

25:                                               ; preds = %2
  %26 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %27 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %32, %struct.usb_endpoint_descriptor** %7, align 8
  %33 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %34 = call i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %222

39:                                               ; preds = %25
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.kbtab* @kzalloc(i32 40, i32 %40)
  store %struct.kbtab* %41, %struct.kbtab** %8, align 8
  %42 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %42, %struct.input_dev** %9, align 8
  %43 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %44 = icmp ne %struct.kbtab* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %47 = icmp ne %struct.input_dev* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45, %39
  br label %216

49:                                               ; preds = %45
  %50 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %53 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %52, i32 0, i32 0
  %54 = call i32 @usb_alloc_coherent(%struct.usb_device* %50, i32 8, i32 %51, i32* %53)
  %55 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %56 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %58 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %49
  br label %216

62:                                               ; preds = %49
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.TYPE_12__* @usb_alloc_urb(i32 0, i32 %63)
  %65 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %66 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %65, i32 0, i32 2
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %66, align 8
  %67 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %68 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %67, i32 0, i32 2
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = icmp ne %struct.TYPE_12__* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  br label %207

72:                                               ; preds = %62
  %73 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %74 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %75 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %74, i32 0, i32 5
  store %struct.usb_interface* %73, %struct.usb_interface** %75, align 8
  %76 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %77 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %78 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %77, i32 0, i32 3
  store %struct.input_dev* %76, %struct.input_dev** %78, align 8
  %79 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %80 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %81 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @usb_make_path(%struct.usb_device* %79, i32 %82, i32 4)
  %84 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %85 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @strlcat(i32 %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  %88 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %89 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %88, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %89, align 8
  %90 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %91 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %94 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %93, i32 0, i32 7
  store i32 %92, i32* %94, align 4
  %95 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %96 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %97 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %96, i32 0, i32 6
  %98 = call i32 @usb_to_input_id(%struct.usb_device* %95, i32* %97)
  %99 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %100 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %99, i32 0, i32 0
  %101 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %102 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  store i32* %100, i32** %103, align 8
  %104 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %105 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %106 = call i32 @input_set_drvdata(%struct.input_dev* %104, %struct.kbtab* %105)
  %107 = load i32, i32* @kbtab_open, align 4
  %108 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %109 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @kbtab_close, align 4
  %111 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %112 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @EV_KEY, align 4
  %114 = call i32 @BIT_MASK(i32 %113)
  %115 = load i32, i32* @EV_ABS, align 4
  %116 = call i32 @BIT_MASK(i32 %115)
  %117 = or i32 %114, %116
  %118 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %119 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %117
  store i32 %123, i32* %121, align 4
  %124 = load i32, i32* @BTN_LEFT, align 4
  %125 = call i32 @BIT_MASK(i32 %124)
  %126 = load i32, i32* @BTN_RIGHT, align 4
  %127 = call i32 @BIT_MASK(i32 %126)
  %128 = or i32 %125, %127
  %129 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %130 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* @BTN_LEFT, align 4
  %133 = call i64 @BIT_WORD(i32 %132)
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %128
  store i32 %136, i32* %134, align 4
  %137 = load i32, i32* @BTN_TOOL_PEN, align 4
  %138 = call i32 @BIT_MASK(i32 %137)
  %139 = load i32, i32* @BTN_TOUCH, align 4
  %140 = call i32 @BIT_MASK(i32 %139)
  %141 = or i32 %138, %140
  %142 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %143 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* @BTN_DIGI, align 4
  %146 = call i64 @BIT_WORD(i32 %145)
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %141
  store i32 %149, i32* %147, align 4
  %150 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %151 = load i32, i32* @ABS_X, align 4
  %152 = call i32 @input_set_abs_params(%struct.input_dev* %150, i32 %151, i32 0, i32 8192, i32 4, i32 0)
  %153 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %154 = load i32, i32* @ABS_Y, align 4
  %155 = call i32 @input_set_abs_params(%struct.input_dev* %153, i32 %154, i32 0, i32 5968, i32 4, i32 0)
  %156 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %157 = load i32, i32* @ABS_PRESSURE, align 4
  %158 = call i32 @input_set_abs_params(%struct.input_dev* %156, i32 %157, i32 0, i32 255, i32 0, i32 0)
  %159 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %160 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %159, i32 0, i32 2
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %163 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %164 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %165 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @usb_rcvintpipe(%struct.usb_device* %163, i32 %166)
  %168 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %169 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @kbtab_irq, align 4
  %172 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %173 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %174 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @usb_fill_int_urb(%struct.TYPE_12__* %161, %struct.usb_device* %162, i32 %167, i32 %170, i32 8, i32 %171, %struct.kbtab* %172, i32 %175)
  %177 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %178 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %181 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %180, i32 0, i32 2
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  store i32 %179, i32* %183, align 4
  %184 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %185 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %186 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %185, i32 0, i32 2
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %184
  store i32 %190, i32* %188, align 4
  %191 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %192 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %191, i32 0, i32 3
  %193 = load %struct.input_dev*, %struct.input_dev** %192, align 8
  %194 = call i32 @input_register_device(%struct.input_dev* %193)
  store i32 %194, i32* %10, align 4
  %195 = load i32, i32* %10, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %72
  br label %202

198:                                              ; preds = %72
  %199 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %200 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %201 = call i32 @usb_set_intfdata(%struct.usb_interface* %199, %struct.kbtab* %200)
  store i32 0, i32* %3, align 4
  br label %222

202:                                              ; preds = %197
  %203 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %204 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %203, i32 0, i32 2
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %204, align 8
  %206 = call i32 @usb_free_urb(%struct.TYPE_12__* %205)
  br label %207

207:                                              ; preds = %202, %71
  %208 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %209 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %210 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %213 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @usb_free_coherent(%struct.usb_device* %208, i32 8, i32 %211, i32 %214)
  br label %216

216:                                              ; preds = %207, %61, %48
  %217 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %218 = call i32 @input_free_device(%struct.input_dev* %217)
  %219 = load %struct.kbtab*, %struct.kbtab** %8, align 8
  %220 = call i32 @kfree(%struct.kbtab* %219)
  %221 = load i32, i32* %10, align 4
  store i32 %221, i32* %3, align 4
  br label %222

222:                                              ; preds = %216, %198, %36, %22
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local %struct.kbtab* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @usb_alloc_coherent(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_12__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @usb_to_input_id(%struct.usb_device*, i32*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.kbtab*) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i64 @BIT_WORD(i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_12__*, %struct.usb_device*, i32, i32, i32, i32, %struct.kbtab*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.kbtab*) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_12__*) #1

declare dso_local i32 @usb_free_coherent(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.kbtab*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
