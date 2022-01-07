; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_hanwang.c_hanwang_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_hanwang.c_hanwang_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.hanwang = type { i32, i32, %struct.TYPE_13__*, %struct.TYPE_14__*, %struct.input_dev*, i32, i32, %struct.usb_device* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.input_dev = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@hanwang_open = common dso_local global i32 0, align 4
@hanwang_close = common dso_local global i32 0, align 4
@hw_eventtypes = common dso_local global i32* null, align 8
@hw_absevents = common dso_local global i32* null, align 8
@hw_btnevents = common dso_local global i32* null, align 8
@hw_mscevents = common dso_local global i32* null, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_TILT_X = common dso_local global i32 0, align 4
@ABS_TILT_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@hanwang_irq = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @hanwang_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hanwang_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca %struct.hanwang*, align 8
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %12)
  store %struct.usb_device* %13, %struct.usb_device** %6, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %325

24:                                               ; preds = %2
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.hanwang* @kzalloc(i32 48, i32 %25)
  store %struct.hanwang* %26, %struct.hanwang** %8, align 8
  %27 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %27, %struct.input_dev** %9, align 8
  %28 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %29 = icmp ne %struct.hanwang* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %32 = icmp ne %struct.input_dev* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30, %24
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %10, align 4
  br label %319

36:                                               ; preds = %30
  %37 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %38 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %39 = call i32 @get_features(%struct.usb_device* %37, %struct.hanwang* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENXIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  br label %319

44:                                               ; preds = %36
  %45 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %46 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %47 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %46, i32 0, i32 2
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %53 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %52, i32 0, i32 0
  %54 = call i32 @usb_alloc_coherent(%struct.usb_device* %45, i32 %50, i32 %51, i32* %53)
  %55 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %56 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %58 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %44
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %10, align 4
  br label %319

64:                                               ; preds = %44
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.TYPE_14__* @usb_alloc_urb(i32 0, i32 %65)
  %67 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %68 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %67, i32 0, i32 3
  store %struct.TYPE_14__* %66, %struct.TYPE_14__** %68, align 8
  %69 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %70 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %69, i32 0, i32 3
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = icmp ne %struct.TYPE_14__* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %64
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %10, align 4
  br label %305

76:                                               ; preds = %64
  %77 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %78 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %79 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %78, i32 0, i32 7
  store %struct.usb_device* %77, %struct.usb_device** %79, align 8
  %80 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %81 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %82 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %81, i32 0, i32 4
  store %struct.input_dev* %80, %struct.input_dev** %82, align 8
  %83 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %84 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %85 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @usb_make_path(%struct.usb_device* %83, i32 %86, i32 4)
  %88 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %89 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @strlcat(i32 %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  %92 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %93 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %96 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %95, i32 0, i32 2
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @strlcpy(i32 %94, i32 %99, i32 4)
  %101 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %102 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %105 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %104, i32 0, i32 9
  store i32 %103, i32* %105, align 8
  %106 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %107 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %110 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %109, i32 0, i32 8
  store i32 %108, i32* %110, align 4
  %111 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %112 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %113 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %112, i32 0, i32 7
  %114 = call i32 @usb_to_input_id(%struct.usb_device* %111, i32* %113)
  %115 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %116 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %115, i32 0, i32 1
  %117 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %118 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %117, i32 0, i32 6
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  store i32* %116, i32** %119, align 8
  %120 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %121 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %122 = call i32 @input_set_drvdata(%struct.input_dev* %120, %struct.hanwang* %121)
  %123 = load i32, i32* @hanwang_open, align 4
  %124 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %125 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* @hanwang_close, align 4
  %127 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %128 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  store i32 0, i32* %11, align 4
  br label %129

129:                                              ; preds = %144, %76
  %130 = load i32, i32* %11, align 4
  %131 = load i32*, i32** @hw_eventtypes, align 8
  %132 = call i32 @ARRAY_SIZE(i32* %131)
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %134, label %147

134:                                              ; preds = %129
  %135 = load i32*, i32** @hw_eventtypes, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %141 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @__set_bit(i32 %139, i32 %142)
  br label %144

144:                                              ; preds = %134
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  br label %129

147:                                              ; preds = %129
  store i32 0, i32* %11, align 4
  br label %148

148:                                              ; preds = %163, %147
  %149 = load i32, i32* %11, align 4
  %150 = load i32*, i32** @hw_absevents, align 8
  %151 = call i32 @ARRAY_SIZE(i32* %150)
  %152 = icmp slt i32 %149, %151
  br i1 %152, label %153, label %166

153:                                              ; preds = %148
  %154 = load i32*, i32** @hw_absevents, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %160 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @__set_bit(i32 %158, i32 %161)
  br label %163

163:                                              ; preds = %153
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %11, align 4
  br label %148

166:                                              ; preds = %148
  store i32 0, i32* %11, align 4
  br label %167

167:                                              ; preds = %182, %166
  %168 = load i32, i32* %11, align 4
  %169 = load i32*, i32** @hw_btnevents, align 8
  %170 = call i32 @ARRAY_SIZE(i32* %169)
  %171 = icmp slt i32 %168, %170
  br i1 %171, label %172, label %185

172:                                              ; preds = %167
  %173 = load i32*, i32** @hw_btnevents, align 8
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %179 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @__set_bit(i32 %177, i32 %180)
  br label %182

182:                                              ; preds = %172
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %11, align 4
  br label %167

185:                                              ; preds = %167
  store i32 0, i32* %11, align 4
  br label %186

186:                                              ; preds = %201, %185
  %187 = load i32, i32* %11, align 4
  %188 = load i32*, i32** @hw_mscevents, align 8
  %189 = call i32 @ARRAY_SIZE(i32* %188)
  %190 = icmp slt i32 %187, %189
  br i1 %190, label %191, label %204

191:                                              ; preds = %186
  %192 = load i32*, i32** @hw_mscevents, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %198 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @__set_bit(i32 %196, i32 %199)
  br label %201

201:                                              ; preds = %191
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %11, align 4
  br label %186

204:                                              ; preds = %186
  %205 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %206 = load i32, i32* @ABS_X, align 4
  %207 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %208 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %207, i32 0, i32 2
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @input_set_abs_params(%struct.input_dev* %205, i32 %206, i32 0, i32 %211, i32 4, i32 0)
  %213 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %214 = load i32, i32* @ABS_Y, align 4
  %215 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %216 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %215, i32 0, i32 2
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @input_set_abs_params(%struct.input_dev* %213, i32 %214, i32 0, i32 %219, i32 4, i32 0)
  %221 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %222 = load i32, i32* @ABS_TILT_X, align 4
  %223 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %224 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %223, i32 0, i32 2
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @input_set_abs_params(%struct.input_dev* %221, i32 %222, i32 0, i32 %227, i32 0, i32 0)
  %229 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %230 = load i32, i32* @ABS_TILT_Y, align 4
  %231 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %232 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %231, i32 0, i32 2
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @input_set_abs_params(%struct.input_dev* %229, i32 %230, i32 0, i32 %235, i32 0, i32 0)
  %237 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %238 = load i32, i32* @ABS_PRESSURE, align 4
  %239 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %240 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %239, i32 0, i32 2
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @input_set_abs_params(%struct.input_dev* %237, i32 %238, i32 0, i32 %243, i32 0, i32 0)
  %245 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %246 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %245, i32 0, i32 0
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i64 0
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %251, %struct.usb_endpoint_descriptor** %7, align 8
  %252 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %253 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %252, i32 0, i32 3
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %253, align 8
  %255 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %256 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %257 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %258 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @usb_rcvintpipe(%struct.usb_device* %256, i32 %259)
  %261 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %262 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %265 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %264, i32 0, i32 2
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @hanwang_irq, align 4
  %270 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %271 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %272 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @usb_fill_int_urb(%struct.TYPE_14__* %254, %struct.usb_device* %255, i32 %260, i32 %263, i32 %268, i32 %269, %struct.hanwang* %270, i32 %273)
  %275 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %276 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %279 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %278, i32 0, i32 3
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 1
  store i32 %277, i32* %281, align 4
  %282 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %283 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %284 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %283, i32 0, i32 3
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = or i32 %287, %282
  store i32 %288, i32* %286, align 4
  %289 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %290 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %289, i32 0, i32 4
  %291 = load %struct.input_dev*, %struct.input_dev** %290, align 8
  %292 = call i32 @input_register_device(%struct.input_dev* %291)
  store i32 %292, i32* %10, align 4
  %293 = load i32, i32* %10, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %204
  br label %300

296:                                              ; preds = %204
  %297 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %298 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %299 = call i32 @usb_set_intfdata(%struct.usb_interface* %297, %struct.hanwang* %298)
  store i32 0, i32* %3, align 4
  br label %325

300:                                              ; preds = %295
  %301 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %302 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %301, i32 0, i32 3
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %302, align 8
  %304 = call i32 @usb_free_urb(%struct.TYPE_14__* %303)
  br label %305

305:                                              ; preds = %300, %73
  %306 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %307 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %308 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %307, i32 0, i32 2
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %313 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %316 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @usb_free_coherent(%struct.usb_device* %306, i32 %311, i32 %314, i32 %317)
  br label %319

319:                                              ; preds = %305, %61, %41, %33
  %320 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %321 = call i32 @input_free_device(%struct.input_dev* %320)
  %322 = load %struct.hanwang*, %struct.hanwang** %8, align 8
  %323 = call i32 @kfree(%struct.hanwang* %322)
  %324 = load i32, i32* %10, align 4
  store i32 %324, i32* %3, align 4
  br label %325

325:                                              ; preds = %319, %296, %21
  %326 = load i32, i32* %3, align 4
  ret i32 %326
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.hanwang* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @get_features(%struct.usb_device*, %struct.hanwang*) #1

declare dso_local i32 @usb_alloc_coherent(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_14__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @usb_to_input_id(%struct.usb_device*, i32*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.hanwang*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_14__*, %struct.usb_device*, i32, i32, i32, i32, %struct.hanwang*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.hanwang*) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_14__*) #1

declare dso_local i32 @usb_free_coherent(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.hanwang*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
