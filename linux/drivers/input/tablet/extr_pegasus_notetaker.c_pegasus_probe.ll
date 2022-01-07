; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_pegasus_notetaker.c_pegasus_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_pegasus_notetaker.c_pegasus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_15__*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i8*, %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.pegasus = type { i32, i32, i32, %struct.TYPE_18__*, %struct.input_dev*, i32, i32, i32, %struct.usb_interface*, %struct.usb_device*, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.input_dev = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_17__, i32, i32, i32 }
%struct.TYPE_17__ = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid number of endpoints\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pegasus_irq = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"USB Pegasus Device %04x:%04x\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@pegasus_init = common dso_local global i32 0, align 4
@pegasus_open = common dso_local global i32 0, align 4
@pegasus_close = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@INPUT_PROP_DIRECT = common dso_local global i32 0, align 4
@INPUT_PROP_POINTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @pegasus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pegasus_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca %struct.pegasus*, align 8
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %12)
  store %struct.usb_device* %13, %struct.usb_device** %6, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 1
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %329

24:                                               ; preds = %2
  %25 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %26 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %25, i32 0, i32 2
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %35 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %34, i32 0, i32 0
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %329

39:                                               ; preds = %24
  %40 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %41 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %40, i32 0, i32 1
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %46, %struct.usb_endpoint_descriptor** %7, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.pegasus* @kzalloc(i32 72, i32 %47)
  store %struct.pegasus* %48, %struct.pegasus** %8, align 8
  %49 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %49, %struct.input_dev** %9, align 8
  %50 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %51 = icmp ne %struct.pegasus* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %54 = icmp ne %struct.input_dev* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52, %39
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %10, align 4
  br label %321

58:                                               ; preds = %52
  %59 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %60 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %59, i32 0, i32 10
  %61 = call i32 @mutex_init(i32* %60)
  %62 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %63 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %64 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %63, i32 0, i32 9
  store %struct.usb_device* %62, %struct.usb_device** %64, align 8
  %65 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %66 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %67 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %66, i32 0, i32 4
  store %struct.input_dev* %65, %struct.input_dev** %67, align 8
  %68 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %69 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %70 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %69, i32 0, i32 8
  store %struct.usb_interface* %68, %struct.usb_interface** %70, align 8
  %71 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %72 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %73 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @usb_rcvintpipe(%struct.usb_device* %71, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @usb_pipeout(i32 %78)
  %80 = call i32 @usb_maxpacket(%struct.usb_device* %76, i32 %77, i32 %79)
  %81 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %82 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %84 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %85 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %89 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %88, i32 0, i32 0
  %90 = call i32 @usb_alloc_coherent(%struct.usb_device* %83, i32 %86, i32 %87, i32* %89)
  %91 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %92 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %94 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %58
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %10, align 4
  br label %321

100:                                              ; preds = %58
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call %struct.TYPE_18__* @usb_alloc_urb(i32 0, i32 %101)
  %103 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %104 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %103, i32 0, i32 3
  store %struct.TYPE_18__* %102, %struct.TYPE_18__** %104, align 8
  %105 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %106 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %105, i32 0, i32 3
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %106, align 8
  %108 = icmp ne %struct.TYPE_18__* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %100
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %10, align 4
  br label %309

112:                                              ; preds = %100
  %113 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %114 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %113, i32 0, i32 3
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %114, align 8
  %116 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %119 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %122 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @pegasus_irq, align 4
  %125 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %126 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %127 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @usb_fill_int_urb(%struct.TYPE_18__* %115, %struct.usb_device* %116, i32 %117, i32 %120, i32 %123, i32 %124, %struct.pegasus* %125, i32 %128)
  %130 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %131 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %134 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %133, i32 0, i32 3
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 1
  store i32 %132, i32* %136, align 4
  %137 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %138 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %139 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %138, i32 0, i32 3
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %137
  store i32 %143, i32* %141, align 4
  %144 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %145 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %112
  %149 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %150 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %153 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @strlcpy(i32 %151, i64 %154, i32 4)
  br label %156

156:                                              ; preds = %148, %112
  %157 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %158 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %179

161:                                              ; preds = %156
  %162 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %163 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %168 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @strlcat(i32 %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %171

171:                                              ; preds = %166, %161
  %172 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %173 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %176 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @strlcat(i32 %174, i8* %177, i32 4)
  br label %179

179:                                              ; preds = %171, %156
  %180 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %181 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @strlen(i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %200, label %185

185:                                              ; preds = %179
  %186 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %187 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %190 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @le16_to_cpu(i32 %192)
  %194 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %195 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @le16_to_cpu(i32 %197)
  %199 = call i32 @snprintf(i32 %188, i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %193, i32 %198)
  br label %200

200:                                              ; preds = %185, %179
  %201 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %202 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %203 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @usb_make_path(%struct.usb_device* %201, i32 %204, i32 4)
  %206 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %207 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @strlcat(i32 %208, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %210 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %211 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %210, i32 0, i32 7
  %212 = load i32, i32* @pegasus_init, align 4
  %213 = call i32 @INIT_WORK(i32* %211, i32 %212)
  %214 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %215 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %216 = call i32 @usb_set_intfdata(%struct.usb_interface* %214, %struct.pegasus* %215)
  %217 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %218 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %221 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %220, i32 0, i32 9
  store i32 %219, i32* %221, align 8
  %222 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %223 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %226 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %225, i32 0, i32 8
  store i32 %224, i32* %226, align 4
  %227 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %228 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %229 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %228, i32 0, i32 7
  %230 = call i32 @usb_to_input_id(%struct.usb_device* %227, i32* %229)
  %231 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %232 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %231, i32 0, i32 0
  %233 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %234 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %233, i32 0, i32 6
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 0
  store i32* %232, i32** %235, align 8
  %236 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %237 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %238 = call i32 @input_set_drvdata(%struct.input_dev* %236, %struct.pegasus* %237)
  %239 = load i32, i32* @pegasus_open, align 4
  %240 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %241 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %240, i32 0, i32 5
  store i32 %239, i32* %241, align 4
  %242 = load i32, i32* @pegasus_close, align 4
  %243 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %244 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %243, i32 0, i32 4
  store i32 %242, i32* %244, align 8
  %245 = load i32, i32* @EV_ABS, align 4
  %246 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %247 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @__set_bit(i32 %245, i32 %248)
  %250 = load i32, i32* @EV_KEY, align 4
  %251 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %252 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @__set_bit(i32 %250, i32 %253)
  %255 = load i32, i32* @ABS_X, align 4
  %256 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %257 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @__set_bit(i32 %255, i32 %258)
  %260 = load i32, i32* @ABS_Y, align 4
  %261 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %262 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @__set_bit(i32 %260, i32 %263)
  %265 = load i32, i32* @BTN_TOUCH, align 4
  %266 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %267 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @__set_bit(i32 %265, i32 %268)
  %270 = load i32, i32* @BTN_RIGHT, align 4
  %271 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %272 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @__set_bit(i32 %270, i32 %273)
  %275 = load i32, i32* @BTN_TOOL_PEN, align 4
  %276 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %277 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @__set_bit(i32 %275, i32 %278)
  %280 = load i32, i32* @INPUT_PROP_DIRECT, align 4
  %281 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %282 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @__set_bit(i32 %280, i32 %283)
  %285 = load i32, i32* @INPUT_PROP_POINTER, align 4
  %286 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %287 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @__set_bit(i32 %285, i32 %288)
  %290 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %291 = load i32, i32* @ABS_X, align 4
  %292 = call i32 @input_set_abs_params(%struct.input_dev* %290, i32 %291, i32 -1500, i32 1500, i32 8, i32 0)
  %293 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %294 = load i32, i32* @ABS_Y, align 4
  %295 = call i32 @input_set_abs_params(%struct.input_dev* %293, i32 %294, i32 1600, i32 3000, i32 8, i32 0)
  %296 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %297 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %296, i32 0, i32 4
  %298 = load %struct.input_dev*, %struct.input_dev** %297, align 8
  %299 = call i32 @input_register_device(%struct.input_dev* %298)
  store i32 %299, i32* %10, align 4
  %300 = load i32, i32* %10, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %200
  br label %304

303:                                              ; preds = %200
  store i32 0, i32* %3, align 4
  br label %329

304:                                              ; preds = %302
  %305 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %306 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %305, i32 0, i32 3
  %307 = load %struct.TYPE_18__*, %struct.TYPE_18__** %306, align 8
  %308 = call i32 @usb_free_urb(%struct.TYPE_18__* %307)
  br label %309

309:                                              ; preds = %304, %109
  %310 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %311 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %312 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %315 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %318 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @usb_free_coherent(%struct.usb_device* %310, i32 %313, i32 %316, i32 %319)
  br label %321

321:                                              ; preds = %309, %97, %55
  %322 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %323 = call i32 @input_free_device(%struct.input_dev* %322)
  %324 = load %struct.pegasus*, %struct.pegasus** %8, align 8
  %325 = call i32 @kfree(%struct.pegasus* %324)
  %326 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %327 = call i32 @usb_set_intfdata(%struct.usb_interface* %326, %struct.pegasus* null)
  %328 = load i32, i32* %10, align 4
  store i32 %328, i32* %3, align 4
  br label %329

329:                                              ; preds = %321, %303, %33, %21
  %330 = load i32, i32* %3, align 4
  ret i32 %330
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.pegasus* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_maxpacket(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_pipeout(i32) #1

declare dso_local i32 @usb_alloc_coherent(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_18__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_18__*, %struct.usb_device*, i32, i32, i32, i32, %struct.pegasus*, i32) #1

declare dso_local i32 @strlcpy(i32, i64, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.pegasus*) #1

declare dso_local i32 @usb_to_input_id(%struct.usb_device*, i32*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.pegasus*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_18__*) #1

declare dso_local i32 @usb_free_coherent(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.pegasus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
