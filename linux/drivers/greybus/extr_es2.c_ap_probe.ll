; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_ap_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_ap_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i8* }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.es2_ap_dev = type { i32*, %struct.TYPE_6__, i32, i32, i32, %struct.urb**, i32**, i8*, %struct.urb**, i8*, i32, i32, %struct.usb_device*, %struct.usb_interface*, %struct.es2_ap_dev* }
%struct.TYPE_6__ = type { i32**, i8*, %struct.urb** }
%struct.urb = type { i32 }
%struct.usb_device = type { i32 }
%struct.gb_host_device = type { i32*, %struct.TYPE_6__, i32, i32, i32, %struct.urb**, i32**, i8*, %struct.urb**, i8*, i32, i32, %struct.usb_device*, %struct.usb_interface*, %struct.gb_host_device* }

@.str = private unnamed_addr constant [33 x i8] c"Cannot retrieve CPort count: %d\0A\00", align 1
@es2_driver = common dso_local global i32 0, align 4
@ES2_GBUF_MSG_SIZE_MAX = common dso_local global i32 0, align 4
@ES2_CPORT_CDSI0 = common dso_local global i32 0, align 4
@ES2_CPORT_CDSI1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Unused bulk IN endpoint found: 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Unused bulk OUT endpoint found: 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Unknown endpoint type found, address 0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Not enough endpoints found in device, aborting!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@NUM_CPORT_IN_URB = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cport_in_callback = common dso_local global i32 0, align 4
@NUM_ARPC_IN_URB = common dso_local global i32 0, align 4
@ARPC_IN_SIZE_MAX = common dso_local global i32 0, align 4
@arpc_in_callback = common dso_local global i32 0, align 4
@NUM_CPORT_OUT_URB = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"apb_log_enable\00", align 1
@apb_log_enable_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @ap_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.es2_ap_dev*, align 8
  %7 = alloca %struct.gb_host_device*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.usb_host_interface*, align 8
  %10 = alloca %struct.usb_endpoint_descriptor*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.urb*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.urb*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.urb*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %23 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %24 = call i32 @interface_to_usbdev(%struct.usb_interface* %23)
  %25 = call %struct.usb_device* @usb_get_dev(i32 %24)
  store %struct.usb_device* %25, %struct.usb_device** %8, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %27 = call i32 @apb_get_cport_count(%struct.usb_device* %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %32 = call i32 @usb_put_dev(%struct.usb_device* %31)
  %33 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %34 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %33, i32 0, i32 0
  %35 = load i32, i32* %14, align 4
  %36 = call i32 (i32*, i8*, ...) @dev_err(i32* %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %3, align 4
  br label %362

38:                                               ; preds = %2
  %39 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 0
  %41 = load i32, i32* @ES2_GBUF_MSG_SIZE_MAX, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call %struct.gb_host_device* @gb_hd_create(i32* @es2_driver, i32* %40, i32 %41, i32 %42)
  store %struct.gb_host_device* %43, %struct.gb_host_device** %7, align 8
  %44 = load %struct.gb_host_device*, %struct.gb_host_device** %7, align 8
  %45 = call i64 @IS_ERR(%struct.gb_host_device* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %49 = call i32 @usb_put_dev(%struct.usb_device* %48)
  %50 = load %struct.gb_host_device*, %struct.gb_host_device** %7, align 8
  %51 = call i32 @PTR_ERR(%struct.gb_host_device* %50)
  store i32 %51, i32* %3, align 4
  br label %362

52:                                               ; preds = %38
  %53 = load %struct.gb_host_device*, %struct.gb_host_device** %7, align 8
  %54 = call %struct.gb_host_device* @hd_to_es2(%struct.gb_host_device* %53)
  %55 = bitcast %struct.gb_host_device* %54 to %struct.es2_ap_dev*
  store %struct.es2_ap_dev* %55, %struct.es2_ap_dev** %6, align 8
  %56 = load %struct.gb_host_device*, %struct.gb_host_device** %7, align 8
  %57 = bitcast %struct.gb_host_device* %56 to %struct.es2_ap_dev*
  %58 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %59 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %58, i32 0, i32 14
  store %struct.es2_ap_dev* %57, %struct.es2_ap_dev** %59, align 8
  %60 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %61 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %62 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %61, i32 0, i32 13
  store %struct.usb_interface* %60, %struct.usb_interface** %62, align 8
  %63 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %64 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %65 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %64, i32 0, i32 12
  store %struct.usb_device* %63, %struct.usb_device** %65, align 8
  %66 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %67 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %66, i32 0, i32 11
  %68 = call i32 @spin_lock_init(i32* %67)
  %69 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %70 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @INIT_KFIFO(i32 %71)
  %73 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %74 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %75 = bitcast %struct.es2_ap_dev* %74 to %struct.gb_host_device*
  %76 = call i32 @usb_set_intfdata(%struct.usb_interface* %73, %struct.gb_host_device* %75)
  %77 = load %struct.gb_host_device*, %struct.gb_host_device** %7, align 8
  %78 = load i32, i32* @ES2_CPORT_CDSI0, align 4
  %79 = call i32 @gb_hd_cport_reserve(%struct.gb_host_device* %77, i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %52
  br label %357

83:                                               ; preds = %52
  %84 = load %struct.gb_host_device*, %struct.gb_host_device** %7, align 8
  %85 = load i32, i32* @ES2_CPORT_CDSI1, align 4
  %86 = call i32 @gb_hd_cport_reserve(%struct.gb_host_device* %84, i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %357

90:                                               ; preds = %83
  %91 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %92 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %91, i32 0, i32 0
  %93 = load %struct.usb_host_interface*, %struct.usb_host_interface** %92, align 8
  store %struct.usb_host_interface* %93, %struct.usb_host_interface** %9, align 8
  store i32 0, i32* %13, align 4
  br label %94

94:                                               ; preds = %159, %90
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %97 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %95, %99
  br i1 %100, label %101, label %162

101:                                              ; preds = %94
  %102 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %103 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %108, %struct.usb_endpoint_descriptor** %10, align 8
  %109 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %110 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %11, align 8
  %112 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %113 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %137

115:                                              ; preds = %101
  %116 = load i32, i32* %16, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %115
  %119 = load i8*, i8** %11, align 8
  %120 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %121 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  store i8* %119, i8** %122, align 8
  store i32 1, i32* %16, align 4
  br label %136

123:                                              ; preds = %115
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %123
  %127 = load i8*, i8** %11, align 8
  %128 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %129 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %128, i32 0, i32 7
  store i8* %127, i8** %129, align 8
  store i32 1, i32* %17, align 4
  br label %135

130:                                              ; preds = %123
  %131 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %132 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %131, i32 0, i32 0
  %133 = load i8*, i8** %11, align 8
  %134 = call i32 @dev_warn(i32* %132, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %130, %126
  br label %136

136:                                              ; preds = %135, %118
  br label %159

137:                                              ; preds = %101
  %138 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %139 = call i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %137
  %142 = load i32, i32* %15, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %141
  %145 = load i8*, i8** %11, align 8
  %146 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %147 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %146, i32 0, i32 9
  store i8* %145, i8** %147, align 8
  store i32 1, i32* %15, align 4
  br label %153

148:                                              ; preds = %141
  %149 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %150 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %149, i32 0, i32 0
  %151 = load i8*, i8** %11, align 8
  %152 = call i32 @dev_warn(i32* %150, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %151)
  br label %153

153:                                              ; preds = %148, %144
  br label %159

154:                                              ; preds = %137
  %155 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %156 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %155, i32 0, i32 0
  %157 = load i8*, i8** %11, align 8
  %158 = call i32 @dev_warn(i32* %156, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %157)
  br label %159

159:                                              ; preds = %154, %153, %136
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %13, align 4
  br label %94

162:                                              ; preds = %94
  %163 = load i32, i32* %16, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load i32, i32* %17, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32, i32* %15, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %168, %165, %162
  %172 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %173 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %172, i32 0, i32 0
  %174 = call i32 (i32*, i8*, ...) @dev_err(i32* %173, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %175 = load i32, i32* @ENODEV, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %12, align 4
  br label %357

177:                                              ; preds = %168
  store i32 0, i32* %13, align 4
  br label %178

178:                                              ; preds = %229, %177
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* @NUM_CPORT_IN_URB, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %232

182:                                              ; preds = %178
  %183 = load i32, i32* @GFP_KERNEL, align 4
  %184 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %183)
  store %struct.urb* %184, %struct.urb** %18, align 8
  %185 = load %struct.urb*, %struct.urb** %18, align 8
  %186 = icmp ne %struct.urb* %185, null
  br i1 %186, label %190, label %187

187:                                              ; preds = %182
  %188 = load i32, i32* @ENOMEM, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %12, align 4
  br label %357

190:                                              ; preds = %182
  %191 = load %struct.urb*, %struct.urb** %18, align 8
  %192 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %193 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 2
  %195 = load %struct.urb**, %struct.urb*** %194, align 8
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.urb*, %struct.urb** %195, i64 %197
  store %struct.urb* %191, %struct.urb** %198, align 8
  %199 = load i32, i32* @ES2_GBUF_MSG_SIZE_MAX, align 4
  %200 = load i32, i32* @GFP_KERNEL, align 4
  %201 = call i32* @kmalloc(i32 %199, i32 %200)
  store i32* %201, i32** %19, align 8
  %202 = load i32*, i32** %19, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %207, label %204

204:                                              ; preds = %190
  %205 = load i32, i32* @ENOMEM, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %12, align 4
  br label %357

207:                                              ; preds = %190
  %208 = load %struct.urb*, %struct.urb** %18, align 8
  %209 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %210 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %211 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %212 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %210, i8* %214)
  %216 = load i32*, i32** %19, align 8
  %217 = load i32, i32* @ES2_GBUF_MSG_SIZE_MAX, align 4
  %218 = load i32, i32* @cport_in_callback, align 4
  %219 = load %struct.gb_host_device*, %struct.gb_host_device** %7, align 8
  %220 = call i32 @usb_fill_bulk_urb(%struct.urb* %208, %struct.usb_device* %209, i32 %215, i32* %216, i32 %217, i32 %218, %struct.gb_host_device* %219)
  %221 = load i32*, i32** %19, align 8
  %222 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %223 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i32**, i32*** %224, align 8
  %226 = load i32, i32* %13, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32*, i32** %225, i64 %227
  store i32* %221, i32** %228, align 8
  br label %229

229:                                              ; preds = %207
  %230 = load i32, i32* %13, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %13, align 4
  br label %178

232:                                              ; preds = %178
  store i32 0, i32* %13, align 4
  br label %233

233:                                              ; preds = %282, %232
  %234 = load i32, i32* %13, align 4
  %235 = load i32, i32* @NUM_ARPC_IN_URB, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %285

237:                                              ; preds = %233
  %238 = load i32, i32* @GFP_KERNEL, align 4
  %239 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %238)
  store %struct.urb* %239, %struct.urb** %20, align 8
  %240 = load %struct.urb*, %struct.urb** %20, align 8
  %241 = icmp ne %struct.urb* %240, null
  br i1 %241, label %245, label %242

242:                                              ; preds = %237
  %243 = load i32, i32* @ENOMEM, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %12, align 4
  br label %357

245:                                              ; preds = %237
  %246 = load %struct.urb*, %struct.urb** %20, align 8
  %247 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %248 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %247, i32 0, i32 8
  %249 = load %struct.urb**, %struct.urb*** %248, align 8
  %250 = load i32, i32* %13, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.urb*, %struct.urb** %249, i64 %251
  store %struct.urb* %246, %struct.urb** %252, align 8
  %253 = load i32, i32* @ARPC_IN_SIZE_MAX, align 4
  %254 = load i32, i32* @GFP_KERNEL, align 4
  %255 = call i32* @kmalloc(i32 %253, i32 %254)
  store i32* %255, i32** %21, align 8
  %256 = load i32*, i32** %21, align 8
  %257 = icmp ne i32* %256, null
  br i1 %257, label %261, label %258

258:                                              ; preds = %245
  %259 = load i32, i32* @ENOMEM, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %12, align 4
  br label %357

261:                                              ; preds = %245
  %262 = load %struct.urb*, %struct.urb** %20, align 8
  %263 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %264 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %265 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %266 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %265, i32 0, i32 7
  %267 = load i8*, i8** %266, align 8
  %268 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %264, i8* %267)
  %269 = load i32*, i32** %21, align 8
  %270 = load i32, i32* @ARPC_IN_SIZE_MAX, align 4
  %271 = load i32, i32* @arpc_in_callback, align 4
  %272 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %273 = bitcast %struct.es2_ap_dev* %272 to %struct.gb_host_device*
  %274 = call i32 @usb_fill_bulk_urb(%struct.urb* %262, %struct.usb_device* %263, i32 %268, i32* %269, i32 %270, i32 %271, %struct.gb_host_device* %273)
  %275 = load i32*, i32** %21, align 8
  %276 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %277 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %276, i32 0, i32 6
  %278 = load i32**, i32*** %277, align 8
  %279 = load i32, i32* %13, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32*, i32** %278, i64 %280
  store i32* %275, i32** %281, align 8
  br label %282

282:                                              ; preds = %261
  %283 = load i32, i32* %13, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %13, align 4
  br label %233

285:                                              ; preds = %233
  store i32 0, i32* %13, align 4
  br label %286

286:                                              ; preds = %312, %285
  %287 = load i32, i32* %13, align 4
  %288 = load i32, i32* @NUM_CPORT_OUT_URB, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %315

290:                                              ; preds = %286
  %291 = load i32, i32* @GFP_KERNEL, align 4
  %292 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %291)
  store %struct.urb* %292, %struct.urb** %22, align 8
  %293 = load %struct.urb*, %struct.urb** %22, align 8
  %294 = icmp ne %struct.urb* %293, null
  br i1 %294, label %298, label %295

295:                                              ; preds = %290
  %296 = load i32, i32* @ENOMEM, align 4
  %297 = sub nsw i32 0, %296
  store i32 %297, i32* %12, align 4
  br label %357

298:                                              ; preds = %290
  %299 = load %struct.urb*, %struct.urb** %22, align 8
  %300 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %301 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %300, i32 0, i32 5
  %302 = load %struct.urb**, %struct.urb*** %301, align 8
  %303 = load i32, i32* %13, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.urb*, %struct.urb** %302, i64 %304
  store %struct.urb* %299, %struct.urb** %305, align 8
  %306 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %307 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %13, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  store i32 0, i32* %311, align 4
  br label %312

312:                                              ; preds = %298
  %313 = load i32, i32* %13, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %13, align 4
  br label %286

315:                                              ; preds = %286
  %316 = call i32 (...) @gb_debugfs_get()
  %317 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %318 = bitcast %struct.es2_ap_dev* %317 to %struct.gb_host_device*
  %319 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 420, i32 %316, %struct.gb_host_device* %318, i32* @apb_log_enable_fops)
  %320 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %321 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %320, i32 0, i32 4
  store i32 %319, i32* %321, align 8
  %322 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %323 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %322, i32 0, i32 3
  %324 = call i32 @INIT_LIST_HEAD(i32* %323)
  %325 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %326 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %325, i32 0, i32 2
  %327 = call i32 @spin_lock_init(i32* %326)
  %328 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %329 = bitcast %struct.es2_ap_dev* %328 to %struct.gb_host_device*
  %330 = call i32 @es2_arpc_in_enable(%struct.gb_host_device* %329)
  store i32 %330, i32* %12, align 4
  %331 = load i32, i32* %12, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %315
  br label %357

334:                                              ; preds = %315
  %335 = load %struct.gb_host_device*, %struct.gb_host_device** %7, align 8
  %336 = call i32 @gb_hd_add(%struct.gb_host_device* %335)
  store i32 %336, i32* %12, align 4
  %337 = load i32, i32* %12, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %334
  br label %353

340:                                              ; preds = %334
  %341 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %342 = bitcast %struct.es2_ap_dev* %341 to %struct.gb_host_device*
  %343 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %344 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %343, i32 0, i32 1
  %345 = call i32 @es2_cport_in_enable(%struct.gb_host_device* %342, %struct.TYPE_6__* %344)
  store i32 %345, i32* %12, align 4
  %346 = load i32, i32* %12, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %340
  br label %350

349:                                              ; preds = %340
  store i32 0, i32* %3, align 4
  br label %362

350:                                              ; preds = %348
  %351 = load %struct.gb_host_device*, %struct.gb_host_device** %7, align 8
  %352 = call i32 @gb_hd_del(%struct.gb_host_device* %351)
  br label %353

353:                                              ; preds = %350, %339
  %354 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %355 = bitcast %struct.es2_ap_dev* %354 to %struct.gb_host_device*
  %356 = call i32 @es2_arpc_in_disable(%struct.gb_host_device* %355)
  br label %357

357:                                              ; preds = %353, %333, %295, %258, %242, %204, %187, %171, %89, %82
  %358 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %359 = bitcast %struct.es2_ap_dev* %358 to %struct.gb_host_device*
  %360 = call i32 @es2_destroy(%struct.gb_host_device* %359)
  %361 = load i32, i32* %12, align 4
  store i32 %361, i32* %3, align 4
  br label %362

362:                                              ; preds = %357, %349, %47, %30
  %363 = load i32, i32* %3, align 4
  ret i32 %363
}

declare dso_local %struct.usb_device* @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @apb_get_cport_count(%struct.usb_device*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.gb_host_device* @gb_hd_create(i32*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.gb_host_device*) #1

declare dso_local i32 @PTR_ERR(%struct.gb_host_device*) #1

declare dso_local %struct.gb_host_device* @hd_to_es2(%struct.gb_host_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_KFIFO(i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.gb_host_device*) #1

declare dso_local i32 @gb_hd_cport_reserve(%struct.gb_host_device*, i32) #1

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8*) #1

declare dso_local i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.usb_device*, i32, i32*, i32, i32, %struct.gb_host_device*) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i8*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.gb_host_device*, i32*) #1

declare dso_local i32 @gb_debugfs_get(...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @es2_arpc_in_enable(%struct.gb_host_device*) #1

declare dso_local i32 @gb_hd_add(%struct.gb_host_device*) #1

declare dso_local i32 @es2_cport_in_enable(%struct.gb_host_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @gb_hd_del(%struct.gb_host_device*) #1

declare dso_local i32 @es2_arpc_in_disable(%struct.gb_host_device*) #1

declare dso_local i32 @es2_destroy(%struct.gb_host_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
