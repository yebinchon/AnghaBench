; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_keyspan_remote.c_keyspan_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_keyspan_remote.c_keyspan_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i8*, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.usb_keyspan = type { i32, i32, i32, %struct.TYPE_8__*, %struct.input_dev*, %struct.usb_device*, i32*, i32, i32, %struct.usb_endpoint_descriptor*, %struct.usb_interface* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.input_dev = type { i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RECV_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"USB Keyspan Remote %04x:%04x\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@keyspan_key_table = common dso_local global i32* null, align 8
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@keyspan_open = common dso_local global i32 0, align 4
@keyspan_close = common dso_local global i32 0, align 4
@keyspan_irq_recv = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @keyspan_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyspan_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca %struct.usb_keyspan*, align 8
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
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.usb_endpoint_descriptor* @keyspan_get_in_endpoint(i32 %16)
  store %struct.usb_endpoint_descriptor* %17, %struct.usb_endpoint_descriptor** %7, align 8
  %18 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %19 = icmp ne %struct.usb_endpoint_descriptor* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %300

23:                                               ; preds = %2
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.usb_keyspan* @kzalloc(i32 72, i32 %24)
  store %struct.usb_keyspan* %25, %struct.usb_keyspan** %8, align 8
  %26 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %26, %struct.input_dev** %9, align 8
  %27 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %28 = icmp ne %struct.usb_keyspan* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %31 = icmp ne %struct.input_dev* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29, %23
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %11, align 4
  br label %294

35:                                               ; preds = %29
  %36 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %37 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %38 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %37, i32 0, i32 5
  store %struct.usb_device* %36, %struct.usb_device** %38, align 8
  %39 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %40 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %41 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %40, i32 0, i32 4
  store %struct.input_dev* %39, %struct.input_dev** %41, align 8
  %42 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %43 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %44 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %43, i32 0, i32 10
  store %struct.usb_interface* %42, %struct.usb_interface** %44, align 8
  %45 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %46 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %47 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %46, i32 0, i32 9
  store %struct.usb_endpoint_descriptor* %45, %struct.usb_endpoint_descriptor** %47, align 8
  %48 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %49 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %48, i32 0, i32 0
  store i32 -1, i32* %49, align 8
  %50 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %51 = load i32, i32* @RECV_SIZE, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %54 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %53, i32 0, i32 1
  %55 = call i32 @usb_alloc_coherent(%struct.usb_device* %50, i32 %51, i32 %52, i32* %54)
  %56 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %57 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %59 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %35
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %11, align 4
  br label %294

65:                                               ; preds = %35
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.TYPE_8__* @usb_alloc_urb(i32 0, i32 %66)
  %68 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %69 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %68, i32 0, i32 3
  store %struct.TYPE_8__* %67, %struct.TYPE_8__** %69, align 8
  %70 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %71 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %70, i32 0, i32 3
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = icmp ne %struct.TYPE_8__* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %65
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %11, align 4
  br label %284

77:                                               ; preds = %65
  %78 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %79 = call i32 @keyspan_setup(%struct.usb_device* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %11, align 4
  br label %279

85:                                               ; preds = %77
  %86 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %87 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %92 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %95 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @strlcpy(i32 %93, i64 %96, i32 4)
  br label %98

98:                                               ; preds = %90, %85
  %99 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %100 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %121

103:                                              ; preds = %98
  %104 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %105 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %110 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @strlcat(i32 %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %113

113:                                              ; preds = %108, %103
  %114 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %115 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %118 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @strlcat(i32 %116, i8* %119, i32 4)
  br label %121

121:                                              ; preds = %113, %98
  %122 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %123 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @strlen(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %142, label %127

127:                                              ; preds = %121
  %128 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %129 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %132 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @le16_to_cpu(i32 %134)
  %136 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %137 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @le16_to_cpu(i32 %139)
  %141 = call i32 @snprintf(i32 %130, i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %135, i32 %140)
  br label %142

142:                                              ; preds = %127, %121
  %143 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %144 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %145 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @usb_make_path(%struct.usb_device* %143, i32 %146, i32 4)
  %148 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %149 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @strlcat(i32 %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %152 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %153 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %152, i32 0, i32 6
  %154 = load i32*, i32** %153, align 8
  %155 = load i32*, i32** @keyspan_key_table, align 8
  %156 = call i32 @memcpy(i32* %154, i32* %155, i32 8)
  %157 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %158 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %157, i32 0, i32 8
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %161 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %160, i32 0, i32 10
  store i32 %159, i32* %161, align 8
  %162 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %163 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %166 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %165, i32 0, i32 9
  store i32 %164, i32* %166, align 4
  %167 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %168 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %169 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %168, i32 0, i32 8
  %170 = call i32 @usb_to_input_id(%struct.usb_device* %167, i32* %169)
  %171 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %172 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %171, i32 0, i32 0
  %173 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %174 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %173, i32 0, i32 7
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  store i32* %172, i32** %175, align 8
  %176 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %177 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %176, i32 0, i32 6
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %180 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %179, i32 0, i32 6
  store i32* %178, i32** %180, align 8
  %181 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %182 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %181, i32 0, i32 0
  store i32 2, i32* %182, align 8
  %183 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %184 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %183, i32 0, i32 6
  %185 = load i32*, i32** %184, align 8
  %186 = call i32 @ARRAY_SIZE(i32* %185)
  %187 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %188 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  %189 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %190 = load i32, i32* @EV_MSC, align 4
  %191 = load i32, i32* @MSC_SCAN, align 4
  %192 = call i32 @input_set_capability(%struct.input_dev* %189, i32 %190, i32 %191)
  %193 = load i32, i32* @EV_KEY, align 4
  %194 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %195 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @__set_bit(i32 %193, i32 %196)
  store i32 0, i32* %10, align 4
  br label %198

198:                                              ; preds = %213, %142
  %199 = load i32, i32* %10, align 4
  %200 = load i32*, i32** @keyspan_key_table, align 8
  %201 = call i32 @ARRAY_SIZE(i32* %200)
  %202 = icmp slt i32 %199, %201
  br i1 %202, label %203, label %216

203:                                              ; preds = %198
  %204 = load i32*, i32** @keyspan_key_table, align 8
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %210 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @__set_bit(i32 %208, i32 %211)
  br label %213

213:                                              ; preds = %203
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %10, align 4
  br label %198

216:                                              ; preds = %198
  %217 = load i32, i32* @KEY_RESERVED, align 4
  %218 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %219 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @__clear_bit(i32 %217, i32 %220)
  %222 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %223 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %224 = call i32 @input_set_drvdata(%struct.input_dev* %222, %struct.usb_keyspan* %223)
  %225 = load i32, i32* @keyspan_open, align 4
  %226 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %227 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %226, i32 0, i32 3
  store i32 %225, i32* %227, align 4
  %228 = load i32, i32* @keyspan_close, align 4
  %229 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %230 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 8
  %231 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %232 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %231, i32 0, i32 3
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %232, align 8
  %234 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %235 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %234, i32 0, i32 5
  %236 = load %struct.usb_device*, %struct.usb_device** %235, align 8
  %237 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %238 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %237, i32 0, i32 5
  %239 = load %struct.usb_device*, %struct.usb_device** %238, align 8
  %240 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %241 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @usb_rcvintpipe(%struct.usb_device* %239, i32 %242)
  %244 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %245 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @RECV_SIZE, align 4
  %248 = load i32, i32* @keyspan_irq_recv, align 4
  %249 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %250 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %251 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @usb_fill_int_urb(%struct.TYPE_8__* %233, %struct.usb_device* %236, i32 %243, i32 %246, i32 %247, i32 %248, %struct.usb_keyspan* %249, i32 %252)
  %254 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %255 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %258 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %257, i32 0, i32 3
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 1
  store i32 %256, i32* %260, align 4
  %261 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %262 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %263 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %262, i32 0, i32 3
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %261
  store i32 %267, i32* %265, align 4
  %268 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %269 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %268, i32 0, i32 4
  %270 = load %struct.input_dev*, %struct.input_dev** %269, align 8
  %271 = call i32 @input_register_device(%struct.input_dev* %270)
  store i32 %271, i32* %11, align 4
  %272 = load i32, i32* %11, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %216
  br label %279

275:                                              ; preds = %216
  %276 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %277 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %278 = call i32 @usb_set_intfdata(%struct.usb_interface* %276, %struct.usb_keyspan* %277)
  store i32 0, i32* %3, align 4
  br label %300

279:                                              ; preds = %274, %82
  %280 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %281 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %280, i32 0, i32 3
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %281, align 8
  %283 = call i32 @usb_free_urb(%struct.TYPE_8__* %282)
  br label %284

284:                                              ; preds = %279, %74
  %285 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %286 = load i32, i32* @RECV_SIZE, align 4
  %287 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %288 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %291 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @usb_free_coherent(%struct.usb_device* %285, i32 %286, i32 %289, i32 %292)
  br label %294

294:                                              ; preds = %284, %62, %32
  %295 = load %struct.usb_keyspan*, %struct.usb_keyspan** %8, align 8
  %296 = call i32 @kfree(%struct.usb_keyspan* %295)
  %297 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %298 = call i32 @input_free_device(%struct.input_dev* %297)
  %299 = load i32, i32* %11, align 4
  store i32 %299, i32* %3, align 4
  br label %300

300:                                              ; preds = %294, %275, %20
  %301 = load i32, i32* %3, align 4
  ret i32 %301
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.usb_endpoint_descriptor* @keyspan_get_in_endpoint(i32) #1

declare dso_local %struct.usb_keyspan* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @usb_alloc_coherent(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @keyspan_setup(%struct.usb_device*) #1

declare dso_local i32 @strlcpy(i32, i64, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @usb_to_input_id(%struct.usb_device*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.usb_keyspan*) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_8__*, %struct.usb_device*, i32, i32, i32, i32, %struct.usb_keyspan*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usb_keyspan*) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_8__*) #1

declare dso_local i32 @usb_free_coherent(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.usb_keyspan*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
