; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_appletouch.c_atp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_appletouch.c_atp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.usb_device_id = type { i64 }
%struct.atp = type { i32, %struct.TYPE_10__*, i32, %struct.atp_info*, %struct.usb_device*, i32, %struct.input_dev*, i32, %struct.usb_interface* }
%struct.TYPE_10__ = type { i32 }
%struct.atp_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_device = type { i32 }
%struct.input_dev = type { i8*, i32, i32, i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Could not find int-in endpoint\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"appletouch\00", align 1
@atp_open = common dso_local global i32 0, align 4
@atp_close = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ATP_PRESSURE = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_TOOL_DOUBLETAP = common dso_local global i32 0, align 4
@BTN_TOOL_TRIPLETAP = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@atp_reinit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @atp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atp_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.atp*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.usb_host_interface*, align 8
  %10 = alloca %struct.usb_endpoint_descriptor*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.atp_info*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %16 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %15)
  store %struct.usb_device* %16, %struct.usb_device** %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %13, align 4
  %19 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %20 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.atp_info*
  store %struct.atp_info* %22, %struct.atp_info** %14, align 8
  %23 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %24 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %23, i32 0, i32 1
  %25 = load %struct.usb_host_interface*, %struct.usb_host_interface** %24, align 8
  store %struct.usb_host_interface* %25, %struct.usb_host_interface** %9, align 8
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %52, %2
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %29 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %26
  %34 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %35 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %40, %struct.usb_endpoint_descriptor** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %33
  %44 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %45 = call i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %49 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %11, align 4
  br label %55

51:                                               ; preds = %43, %33
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %26

55:                                               ; preds = %47, %26
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %60 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %59, i32 0, i32 0
  %61 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %315

64:                                               ; preds = %55
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.atp* @kzalloc(i32 72, i32 %65)
  store %struct.atp* %66, %struct.atp** %6, align 8
  %67 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %67, %struct.input_dev** %7, align 8
  %68 = load %struct.atp*, %struct.atp** %6, align 8
  %69 = icmp ne %struct.atp* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %72 = icmp ne %struct.input_dev* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %70, %64
  %74 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %75 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %74, i32 0, i32 0
  %76 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %307

77:                                               ; preds = %70
  %78 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %79 = load %struct.atp*, %struct.atp** %6, align 8
  %80 = getelementptr inbounds %struct.atp, %struct.atp* %79, i32 0, i32 4
  store %struct.usb_device* %78, %struct.usb_device** %80, align 8
  %81 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %82 = load %struct.atp*, %struct.atp** %6, align 8
  %83 = getelementptr inbounds %struct.atp, %struct.atp* %82, i32 0, i32 8
  store %struct.usb_interface* %81, %struct.usb_interface** %83, align 8
  %84 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %85 = load %struct.atp*, %struct.atp** %6, align 8
  %86 = getelementptr inbounds %struct.atp, %struct.atp* %85, i32 0, i32 6
  store %struct.input_dev* %84, %struct.input_dev** %86, align 8
  %87 = load %struct.atp_info*, %struct.atp_info** %14, align 8
  %88 = load %struct.atp*, %struct.atp** %6, align 8
  %89 = getelementptr inbounds %struct.atp, %struct.atp* %88, i32 0, i32 3
  store %struct.atp_info* %87, %struct.atp_info** %89, align 8
  %90 = load %struct.atp*, %struct.atp** %6, align 8
  %91 = getelementptr inbounds %struct.atp, %struct.atp* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call %struct.TYPE_10__* @usb_alloc_urb(i32 0, i32 %92)
  %94 = load %struct.atp*, %struct.atp** %6, align 8
  %95 = getelementptr inbounds %struct.atp, %struct.atp* %94, i32 0, i32 1
  store %struct.TYPE_10__* %93, %struct.TYPE_10__** %95, align 8
  %96 = load %struct.atp*, %struct.atp** %6, align 8
  %97 = getelementptr inbounds %struct.atp, %struct.atp* %96, i32 0, i32 1
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = icmp ne %struct.TYPE_10__* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %77
  br label %307

101:                                              ; preds = %77
  %102 = load %struct.atp*, %struct.atp** %6, align 8
  %103 = getelementptr inbounds %struct.atp, %struct.atp* %102, i32 0, i32 4
  %104 = load %struct.usb_device*, %struct.usb_device** %103, align 8
  %105 = load %struct.atp*, %struct.atp** %6, align 8
  %106 = getelementptr inbounds %struct.atp, %struct.atp* %105, i32 0, i32 3
  %107 = load %struct.atp_info*, %struct.atp_info** %106, align 8
  %108 = getelementptr inbounds %struct.atp_info, %struct.atp_info* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = load %struct.atp*, %struct.atp** %6, align 8
  %112 = getelementptr inbounds %struct.atp, %struct.atp* %111, i32 0, i32 1
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = call i32 @usb_alloc_coherent(%struct.usb_device* %104, i32 %109, i32 %110, i32* %114)
  %116 = load %struct.atp*, %struct.atp** %6, align 8
  %117 = getelementptr inbounds %struct.atp, %struct.atp* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load %struct.atp*, %struct.atp** %6, align 8
  %119 = getelementptr inbounds %struct.atp, %struct.atp* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %101
  br label %302

123:                                              ; preds = %101
  %124 = load %struct.atp*, %struct.atp** %6, align 8
  %125 = getelementptr inbounds %struct.atp, %struct.atp* %124, i32 0, i32 1
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %128 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @usb_rcvintpipe(%struct.usb_device* %128, i32 %129)
  %131 = load %struct.atp*, %struct.atp** %6, align 8
  %132 = getelementptr inbounds %struct.atp, %struct.atp* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.atp*, %struct.atp** %6, align 8
  %135 = getelementptr inbounds %struct.atp, %struct.atp* %134, i32 0, i32 3
  %136 = load %struct.atp_info*, %struct.atp_info** %135, align 8
  %137 = getelementptr inbounds %struct.atp_info, %struct.atp_info* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.atp*, %struct.atp** %6, align 8
  %140 = getelementptr inbounds %struct.atp, %struct.atp* %139, i32 0, i32 3
  %141 = load %struct.atp_info*, %struct.atp_info** %140, align 8
  %142 = getelementptr inbounds %struct.atp_info, %struct.atp_info* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.atp*, %struct.atp** %6, align 8
  %145 = call i32 @usb_fill_int_urb(%struct.TYPE_10__* %126, %struct.usb_device* %127, i32 %130, i32 %133, i32 %138, i32 %143, %struct.atp* %144, i32 1)
  %146 = load %struct.atp*, %struct.atp** %6, align 8
  %147 = call i32 @atp_handle_geyser(%struct.atp* %146)
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %123
  br label %284

151:                                              ; preds = %123
  %152 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %153 = load %struct.atp*, %struct.atp** %6, align 8
  %154 = getelementptr inbounds %struct.atp, %struct.atp* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @usb_make_path(%struct.usb_device* %152, i32 %155, i32 4)
  %157 = load %struct.atp*, %struct.atp** %6, align 8
  %158 = getelementptr inbounds %struct.atp, %struct.atp* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @strlcat(i32 %159, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %161 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %162 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %161, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %162, align 8
  %163 = load %struct.atp*, %struct.atp** %6, align 8
  %164 = getelementptr inbounds %struct.atp, %struct.atp* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %167 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %166, i32 0, i32 7
  store i32 %165, i32* %167, align 4
  %168 = load %struct.atp*, %struct.atp** %6, align 8
  %169 = getelementptr inbounds %struct.atp, %struct.atp* %168, i32 0, i32 4
  %170 = load %struct.usb_device*, %struct.usb_device** %169, align 8
  %171 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %172 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %171, i32 0, i32 6
  %173 = call i32 @usb_to_input_id(%struct.usb_device* %170, i32* %172)
  %174 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %175 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %174, i32 0, i32 0
  %176 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %177 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  store i32* %175, i32** %178, align 8
  %179 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %180 = load %struct.atp*, %struct.atp** %6, align 8
  %181 = call i32 @input_set_drvdata(%struct.input_dev* %179, %struct.atp* %180)
  %182 = load i32, i32* @atp_open, align 4
  %183 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %184 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* @atp_close, align 4
  %186 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %187 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* @EV_ABS, align 4
  %189 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %190 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @set_bit(i32 %188, i32 %191)
  %193 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %194 = load i32, i32* @ABS_X, align 4
  %195 = load %struct.atp*, %struct.atp** %6, align 8
  %196 = getelementptr inbounds %struct.atp, %struct.atp* %195, i32 0, i32 3
  %197 = load %struct.atp_info*, %struct.atp_info** %196, align 8
  %198 = getelementptr inbounds %struct.atp_info, %struct.atp_info* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 %199, 1
  %201 = load %struct.atp*, %struct.atp** %6, align 8
  %202 = getelementptr inbounds %struct.atp, %struct.atp* %201, i32 0, i32 3
  %203 = load %struct.atp_info*, %struct.atp_info** %202, align 8
  %204 = getelementptr inbounds %struct.atp_info, %struct.atp_info* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %200, %205
  %207 = sub nsw i32 %206, 1
  %208 = load %struct.atp*, %struct.atp** %6, align 8
  %209 = getelementptr inbounds %struct.atp, %struct.atp* %208, i32 0, i32 3
  %210 = load %struct.atp_info*, %struct.atp_info** %209, align 8
  %211 = getelementptr inbounds %struct.atp_info, %struct.atp_info* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @input_set_abs_params(%struct.input_dev* %193, i32 %194, i32 0, i32 %207, i32 %212, i32 0)
  %214 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %215 = load i32, i32* @ABS_Y, align 4
  %216 = load %struct.atp*, %struct.atp** %6, align 8
  %217 = getelementptr inbounds %struct.atp, %struct.atp* %216, i32 0, i32 3
  %218 = load %struct.atp_info*, %struct.atp_info** %217, align 8
  %219 = getelementptr inbounds %struct.atp_info, %struct.atp_info* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = sub nsw i32 %220, 1
  %222 = load %struct.atp*, %struct.atp** %6, align 8
  %223 = getelementptr inbounds %struct.atp, %struct.atp* %222, i32 0, i32 3
  %224 = load %struct.atp_info*, %struct.atp_info** %223, align 8
  %225 = getelementptr inbounds %struct.atp_info, %struct.atp_info* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = mul nsw i32 %221, %226
  %228 = sub nsw i32 %227, 1
  %229 = load %struct.atp*, %struct.atp** %6, align 8
  %230 = getelementptr inbounds %struct.atp, %struct.atp* %229, i32 0, i32 3
  %231 = load %struct.atp_info*, %struct.atp_info** %230, align 8
  %232 = getelementptr inbounds %struct.atp_info, %struct.atp_info* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @input_set_abs_params(%struct.input_dev* %214, i32 %215, i32 0, i32 %228, i32 %233, i32 0)
  %235 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %236 = load i32, i32* @ABS_PRESSURE, align 4
  %237 = load i32, i32* @ATP_PRESSURE, align 4
  %238 = call i32 @input_set_abs_params(%struct.input_dev* %235, i32 %236, i32 0, i32 %237, i32 0, i32 0)
  %239 = load i32, i32* @EV_KEY, align 4
  %240 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %241 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @set_bit(i32 %239, i32 %242)
  %244 = load i32, i32* @BTN_TOUCH, align 4
  %245 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %246 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @set_bit(i32 %244, i32 %247)
  %249 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %250 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %251 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @set_bit(i32 %249, i32 %252)
  %254 = load i32, i32* @BTN_TOOL_DOUBLETAP, align 4
  %255 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %256 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @set_bit(i32 %254, i32 %257)
  %259 = load i32, i32* @BTN_TOOL_TRIPLETAP, align 4
  %260 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %261 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @set_bit(i32 %259, i32 %262)
  %264 = load i32, i32* @BTN_LEFT, align 4
  %265 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %266 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @set_bit(i32 %264, i32 %267)
  %269 = load %struct.atp*, %struct.atp** %6, align 8
  %270 = getelementptr inbounds %struct.atp, %struct.atp* %269, i32 0, i32 6
  %271 = load %struct.input_dev*, %struct.input_dev** %270, align 8
  %272 = call i32 @input_register_device(%struct.input_dev* %271)
  store i32 %272, i32* %13, align 4
  %273 = load i32, i32* %13, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %151
  br label %284

276:                                              ; preds = %151
  %277 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %278 = load %struct.atp*, %struct.atp** %6, align 8
  %279 = call i32 @usb_set_intfdata(%struct.usb_interface* %277, %struct.atp* %278)
  %280 = load %struct.atp*, %struct.atp** %6, align 8
  %281 = getelementptr inbounds %struct.atp, %struct.atp* %280, i32 0, i32 5
  %282 = load i32, i32* @atp_reinit, align 4
  %283 = call i32 @INIT_WORK(i32* %281, i32 %282)
  store i32 0, i32* %3, align 4
  br label %315

284:                                              ; preds = %275, %150
  %285 = load %struct.atp*, %struct.atp** %6, align 8
  %286 = getelementptr inbounds %struct.atp, %struct.atp* %285, i32 0, i32 4
  %287 = load %struct.usb_device*, %struct.usb_device** %286, align 8
  %288 = load %struct.atp*, %struct.atp** %6, align 8
  %289 = getelementptr inbounds %struct.atp, %struct.atp* %288, i32 0, i32 3
  %290 = load %struct.atp_info*, %struct.atp_info** %289, align 8
  %291 = getelementptr inbounds %struct.atp_info, %struct.atp_info* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.atp*, %struct.atp** %6, align 8
  %294 = getelementptr inbounds %struct.atp, %struct.atp* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.atp*, %struct.atp** %6, align 8
  %297 = getelementptr inbounds %struct.atp, %struct.atp* %296, i32 0, i32 1
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @usb_free_coherent(%struct.usb_device* %287, i32 %292, i32 %295, i32 %300)
  br label %302

302:                                              ; preds = %284, %122
  %303 = load %struct.atp*, %struct.atp** %6, align 8
  %304 = getelementptr inbounds %struct.atp, %struct.atp* %303, i32 0, i32 1
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %304, align 8
  %306 = call i32 @usb_free_urb(%struct.TYPE_10__* %305)
  br label %307

307:                                              ; preds = %302, %100, %73
  %308 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %309 = call i32 @usb_set_intfdata(%struct.usb_interface* %308, %struct.atp* null)
  %310 = load %struct.atp*, %struct.atp** %6, align 8
  %311 = call i32 @kfree(%struct.atp* %310)
  %312 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %313 = call i32 @input_free_device(%struct.input_dev* %312)
  %314 = load i32, i32* %13, align 4
  store i32 %314, i32* %3, align 4
  br label %315

315:                                              ; preds = %307, %276, %58
  %316 = load i32, i32* %3, align 4
  ret i32 %316
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.atp* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local %struct.TYPE_10__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_alloc_coherent(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_10__*, %struct.usb_device*, i32, i32, i32, i32, %struct.atp*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @atp_handle_geyser(%struct.atp*) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @usb_to_input_id(%struct.usb_device*, i32*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.atp*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.atp*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @usb_free_coherent(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_10__*) #1

declare dso_local i32 @kfree(%struct.atp*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
