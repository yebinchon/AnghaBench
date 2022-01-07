; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_hanwang.c_hanwang_parse_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_hanwang.c_hanwang_parse_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hanwang = type { i8*, i8*, i8, %struct.TYPE_2__*, %struct.usb_device*, %struct.input_dev* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.usb_device = type { i32 }
%struct.input_dev = type { i32 }

@BTN_TOOL_PEN = common dso_local global i8* null, align 8
@STYLUS_DEVICE_ID = common dso_local global i8* null, align 8
@ERASER_DEVICE_ID = common dso_local global i8 0, align 1
@BTN_TOOL_RUBBER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"unknown tablet tool %02x\0A\00", align 1
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_TILT_X = common dso_local global i32 0, align 4
@ABS_TILT_Y = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i8* null, align 8
@BTN_STYLUS2 = common dso_local global i8* null, align 8
@ABS_MISC = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SERIAL = common dso_local global i32 0, align 4
@PAD_DEVICE_ID = common dso_local global i8 0, align 1
@BTN_TOOL_FINGER = common dso_local global i8* null, align 8
@ABS_WHEEL = common dso_local global i32 0, align 4
@BTN_0 = common dso_local global i8* null, align 8
@BTN_1 = common dso_local global i32 0, align 4
@ABS_RX = common dso_local global i32 0, align 4
@ABS_RY = common dso_local global i32 0, align 4
@BTN_5 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"error packet  %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hanwang*)* @hanwang_parse_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hanwang_parse_packet(%struct.hanwang* %0) #0 {
  %2 = alloca %struct.hanwang*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.hanwang* %0, %struct.hanwang** %2, align 8
  %9 = load %struct.hanwang*, %struct.hanwang** %2, align 8
  %10 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %3, align 8
  %12 = load %struct.hanwang*, %struct.hanwang** %2, align 8
  %13 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %12, i32 0, i32 5
  %14 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  store %struct.input_dev* %14, %struct.input_dev** %4, align 8
  %15 = load %struct.hanwang*, %struct.hanwang** %2, align 8
  %16 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %15, i32 0, i32 4
  %17 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  store %struct.usb_device* %17, %struct.usb_device** %5, align 8
  %18 = load %struct.hanwang*, %struct.hanwang** %2, align 8
  %19 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 129
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load i8*, i8** @BTN_TOOL_PEN, align 8
  %27 = load %struct.hanwang*, %struct.hanwang** %2, align 8
  %28 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @STYLUS_DEVICE_ID, align 8
  %30 = ptrtoint i8* %29 to i8
  %31 = load %struct.hanwang*, %struct.hanwang** %2, align 8
  %32 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %31, i32 0, i32 2
  store i8 %30, i8* %32, align 8
  br label %33

33:                                               ; preds = %25, %1
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  switch i32 %37, label %422 [
    i32 2, label %38
    i32 12, label %219
  ]

38:                                               ; preds = %33
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  switch i32 %42, label %104 [
    i32 128, label %43
    i32 0, label %55
    i32 194, label %67
  ]

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 129
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.hanwang*, %struct.hanwang** %2, align 8
  %48 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %47, i32 0, i32 2
  store i8 0, i8* %48, align 8
  %49 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %50 = load %struct.hanwang*, %struct.hanwang** %2, align 8
  %51 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @input_report_key(%struct.input_dev* %49, i8* %52, i8 zeroext 0)
  br label %54

54:                                               ; preds = %46, %43
  br label %203

55:                                               ; preds = %38
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 129
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.hanwang*, %struct.hanwang** %2, align 8
  %60 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %59, i32 0, i32 2
  store i8 0, i8* %60, align 8
  %61 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %62 = load %struct.hanwang*, %struct.hanwang** %2, align 8
  %63 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @input_report_key(%struct.input_dev* %61, i8* %64, i8 zeroext 0)
  br label %66

66:                                               ; preds = %58, %55
  br label %203

67:                                               ; preds = %38
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 3
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 240
  switch i32 %72, label %94 [
    i32 32, label %73
    i32 48, label %73
    i32 160, label %84
    i32 176, label %84
  ]

73:                                               ; preds = %67, %67
  %74 = load i8*, i8** @STYLUS_DEVICE_ID, align 8
  %75 = ptrtoint i8* %74 to i8
  %76 = load %struct.hanwang*, %struct.hanwang** %2, align 8
  %77 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %76, i32 0, i32 2
  store i8 %75, i8* %77, align 8
  %78 = load i8*, i8** @BTN_TOOL_PEN, align 8
  %79 = load %struct.hanwang*, %struct.hanwang** %2, align 8
  %80 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %82 = load i8*, i8** @BTN_TOOL_PEN, align 8
  %83 = call i32 @input_report_key(%struct.input_dev* %81, i8* %82, i8 zeroext 1)
  br label %103

84:                                               ; preds = %67, %67
  %85 = load i8, i8* @ERASER_DEVICE_ID, align 1
  %86 = load %struct.hanwang*, %struct.hanwang** %2, align 8
  %87 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %86, i32 0, i32 2
  store i8 %85, i8* %87, align 8
  %88 = load i8*, i8** @BTN_TOOL_RUBBER, align 8
  %89 = load %struct.hanwang*, %struct.hanwang** %2, align 8
  %90 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %92 = load i8*, i8** @BTN_TOOL_RUBBER, align 8
  %93 = call i32 @input_report_key(%struct.input_dev* %91, i8* %92, i8 zeroext 1)
  br label %103

94:                                               ; preds = %67
  %95 = load %struct.hanwang*, %struct.hanwang** %2, align 8
  %96 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %95, i32 0, i32 2
  store i8 0, i8* %96, align 8
  %97 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %98 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %97, i32 0, i32 0
  %99 = load i8*, i8** %3, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = call i32 @dev_dbg(i32* %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8 zeroext %101)
  br label %103

103:                                              ; preds = %94, %84, %73
  br label %203

104:                                              ; preds = %38
  %105 = load i32, i32* %6, align 4
  switch i32 %105, label %139 [
    i32 128, label %106
    i32 130, label %126
    i32 129, label %126
  ]

106:                                              ; preds = %104
  %107 = load i8*, i8** %3, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 6
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = shl i32 %110, 3
  %112 = load i8*, i8** %3, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 7
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %115, 192
  %117 = ashr i32 %116, 5
  %118 = or i32 %111, %117
  %119 = load i8*, i8** %3, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = and i32 %122, 1
  %124 = or i32 %118, %123
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %8, align 1
  br label %140

126:                                              ; preds = %104, %104
  %127 = load i8*, i8** %3, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 7
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = ashr i32 %130, 6
  %132 = load i8*, i8** %3, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 6
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = shl i32 %135, 2
  %137 = or i32 %131, %136
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %8, align 1
  br label %140

139:                                              ; preds = %104
  store i8 0, i8* %8, align 1
  br label %140

140:                                              ; preds = %139, %126, %106
  %141 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %142 = load i32, i32* @ABS_X, align 4
  %143 = load i8*, i8** %3, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 2
  %145 = bitcast i8* %144 to i32*
  %146 = call zeroext i8 @be16_to_cpup(i32* %145)
  %147 = call i32 @input_report_abs(%struct.input_dev* %141, i32 %142, i8 zeroext %146)
  %148 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %149 = load i32, i32* @ABS_Y, align 4
  %150 = load i8*, i8** %3, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 4
  %152 = bitcast i8* %151 to i32*
  %153 = call zeroext i8 @be16_to_cpup(i32* %152)
  %154 = call i32 @input_report_abs(%struct.input_dev* %148, i32 %149, i8 zeroext %153)
  %155 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %156 = load i32, i32* @ABS_PRESSURE, align 4
  %157 = load i8, i8* %8, align 1
  %158 = call i32 @input_report_abs(%struct.input_dev* %155, i32 %156, i8 zeroext %157)
  %159 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %160 = load i32, i32* @ABS_TILT_X, align 4
  %161 = load i8*, i8** %3, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 7
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = and i32 %164, 63
  %166 = trunc i32 %165 to i8
  %167 = call i32 @input_report_abs(%struct.input_dev* %159, i32 %160, i8 zeroext %166)
  %168 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %169 = load i32, i32* @ABS_TILT_Y, align 4
  %170 = load i8*, i8** %3, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 8
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = and i32 %173, 127
  %175 = trunc i32 %174 to i8
  %176 = call i32 @input_report_abs(%struct.input_dev* %168, i32 %169, i8 zeroext %175)
  %177 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %178 = load i8*, i8** @BTN_STYLUS, align 8
  %179 = load i8*, i8** %3, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = and i32 %182, 2
  %184 = trunc i32 %183 to i8
  %185 = call i32 @input_report_key(%struct.input_dev* %177, i8* %178, i8 zeroext %184)
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %186, 129
  br i1 %187, label %188, label %198

188:                                              ; preds = %140
  %189 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %190 = load i8*, i8** @BTN_STYLUS2, align 8
  %191 = load i8*, i8** %3, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 1
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = and i32 %194, 4
  %196 = trunc i32 %195 to i8
  %197 = call i32 @input_report_key(%struct.input_dev* %189, i8* %190, i8 zeroext %196)
  br label %202

198:                                              ; preds = %140
  %199 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %200 = load i8*, i8** @BTN_TOOL_PEN, align 8
  %201 = call i32 @input_report_key(%struct.input_dev* %199, i8* %200, i8 zeroext 1)
  br label %202

202:                                              ; preds = %198, %188
  br label %203

203:                                              ; preds = %202, %103, %66, %54
  %204 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %205 = load i32, i32* @ABS_MISC, align 4
  %206 = load %struct.hanwang*, %struct.hanwang** %2, align 8
  %207 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %206, i32 0, i32 2
  %208 = load i8, i8* %207, align 8
  %209 = call i32 @input_report_abs(%struct.input_dev* %204, i32 %205, i8 zeroext %208)
  %210 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %211 = load i32, i32* @EV_MSC, align 4
  %212 = load i32, i32* @MSC_SERIAL, align 4
  %213 = load %struct.hanwang*, %struct.hanwang** %2, align 8
  %214 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %213, i32 0, i32 3
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @input_event(%struct.input_dev* %210, i32 %211, i32 %212, i32 %217)
  br label %429

219:                                              ; preds = %33
  %220 = load i8, i8* @PAD_DEVICE_ID, align 1
  %221 = load %struct.hanwang*, %struct.hanwang** %2, align 8
  %222 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %221, i32 0, i32 2
  store i8 %220, i8* %222, align 8
  %223 = load i32, i32* %6, align 4
  switch i32 %223, label %411 [
    i32 128, label %224
    i32 130, label %284
    i32 129, label %404
  ]

224:                                              ; preds = %219
  %225 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %226 = load i8*, i8** @BTN_TOOL_FINGER, align 8
  %227 = load i8*, i8** %3, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 1
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %244, label %232

232:                                              ; preds = %224
  %233 = load i8*, i8** %3, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 2
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %244, label %238

238:                                              ; preds = %232
  %239 = load i8*, i8** %3, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 3
  %241 = load i8, i8* %240, align 1
  %242 = zext i8 %241 to i32
  %243 = icmp ne i32 %242, 0
  br label %244

244:                                              ; preds = %238, %232, %224
  %245 = phi i1 [ true, %232 ], [ true, %224 ], [ %243, %238 ]
  %246 = zext i1 %245 to i32
  %247 = trunc i32 %246 to i8
  %248 = call i32 @input_report_key(%struct.input_dev* %225, i8* %226, i8 zeroext %247)
  %249 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %250 = load i32, i32* @ABS_WHEEL, align 4
  %251 = load i8*, i8** %3, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 1
  %253 = load i8, i8* %252, align 1
  %254 = call i32 @input_report_abs(%struct.input_dev* %249, i32 %250, i8 zeroext %253)
  %255 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %256 = load i8*, i8** @BTN_0, align 8
  %257 = load i8*, i8** %3, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 2
  %259 = load i8, i8* %258, align 1
  %260 = call i32 @input_report_key(%struct.input_dev* %255, i8* %256, i8 zeroext %259)
  store i32 0, i32* %7, align 4
  br label %261

261:                                              ; preds = %280, %244
  %262 = load i32, i32* %7, align 4
  %263 = icmp slt i32 %262, 8
  br i1 %263, label %264, label %283

264:                                              ; preds = %261
  %265 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %266 = load i32, i32* @BTN_1, align 4
  %267 = load i32, i32* %7, align 4
  %268 = add nsw i32 %266, %267
  %269 = sext i32 %268 to i64
  %270 = inttoptr i64 %269 to i8*
  %271 = load i8*, i8** %3, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 3
  %273 = load i8, i8* %272, align 1
  %274 = zext i8 %273 to i32
  %275 = load i32, i32* %7, align 4
  %276 = shl i32 1, %275
  %277 = and i32 %274, %276
  %278 = trunc i32 %277 to i8
  %279 = call i32 @input_report_key(%struct.input_dev* %265, i8* %270, i8 zeroext %278)
  br label %280

280:                                              ; preds = %264
  %281 = load i32, i32* %7, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %7, align 4
  br label %261

283:                                              ; preds = %261
  br label %411

284:                                              ; preds = %219
  %285 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %286 = load i8*, i8** @BTN_TOOL_FINGER, align 8
  %287 = load i8*, i8** %3, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 1
  %289 = load i8, i8* %288, align 1
  %290 = zext i8 %289 to i32
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %322, label %292

292:                                              ; preds = %284
  %293 = load i8*, i8** %3, align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 2
  %295 = load i8, i8* %294, align 1
  %296 = zext i8 %295 to i32
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %322, label %298

298:                                              ; preds = %292
  %299 = load i8*, i8** %3, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 3
  %301 = load i8, i8* %300, align 1
  %302 = zext i8 %301 to i32
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %322, label %304

304:                                              ; preds = %298
  %305 = load i8*, i8** %3, align 8
  %306 = getelementptr inbounds i8, i8* %305, i64 4
  %307 = load i8, i8* %306, align 1
  %308 = zext i8 %307 to i32
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %322, label %310

310:                                              ; preds = %304
  %311 = load i8*, i8** %3, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 5
  %313 = load i8, i8* %312, align 1
  %314 = zext i8 %313 to i32
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %322, label %316

316:                                              ; preds = %310
  %317 = load i8*, i8** %3, align 8
  %318 = getelementptr inbounds i8, i8* %317, i64 6
  %319 = load i8, i8* %318, align 1
  %320 = zext i8 %319 to i32
  %321 = icmp ne i32 %320, 0
  br label %322

322:                                              ; preds = %316, %310, %304, %298, %292, %284
  %323 = phi i1 [ true, %310 ], [ true, %304 ], [ true, %298 ], [ true, %292 ], [ true, %284 ], [ %321, %316 ]
  %324 = zext i1 %323 to i32
  %325 = trunc i32 %324 to i8
  %326 = call i32 @input_report_key(%struct.input_dev* %285, i8* %286, i8 zeroext %325)
  %327 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %328 = load i32, i32* @ABS_RX, align 4
  %329 = load i8*, i8** %3, align 8
  %330 = getelementptr inbounds i8, i8* %329, i64 1
  %331 = load i8, i8* %330, align 1
  %332 = zext i8 %331 to i32
  %333 = and i32 %332, 31
  %334 = shl i32 %333, 8
  %335 = load i8*, i8** %3, align 8
  %336 = getelementptr inbounds i8, i8* %335, i64 2
  %337 = load i8, i8* %336, align 1
  %338 = zext i8 %337 to i32
  %339 = or i32 %334, %338
  %340 = trunc i32 %339 to i8
  %341 = call i32 @input_report_abs(%struct.input_dev* %327, i32 %328, i8 zeroext %340)
  %342 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %343 = load i32, i32* @ABS_RY, align 4
  %344 = load i8*, i8** %3, align 8
  %345 = getelementptr inbounds i8, i8* %344, i64 3
  %346 = load i8, i8* %345, align 1
  %347 = zext i8 %346 to i32
  %348 = and i32 %347, 31
  %349 = shl i32 %348, 8
  %350 = load i8*, i8** %3, align 8
  %351 = getelementptr inbounds i8, i8* %350, i64 4
  %352 = load i8, i8* %351, align 1
  %353 = zext i8 %352 to i32
  %354 = or i32 %349, %353
  %355 = trunc i32 %354 to i8
  %356 = call i32 @input_report_abs(%struct.input_dev* %342, i32 %343, i8 zeroext %355)
  %357 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %358 = load i8*, i8** @BTN_0, align 8
  %359 = load i8*, i8** %3, align 8
  %360 = getelementptr inbounds i8, i8* %359, i64 5
  %361 = load i8, i8* %360, align 1
  %362 = zext i8 %361 to i32
  %363 = and i32 %362, 1
  %364 = trunc i32 %363 to i8
  %365 = call i32 @input_report_key(%struct.input_dev* %357, i8* %358, i8 zeroext %364)
  store i32 0, i32* %7, align 4
  br label %366

366:                                              ; preds = %400, %322
  %367 = load i32, i32* %7, align 4
  %368 = icmp slt i32 %367, 4
  br i1 %368, label %369, label %403

369:                                              ; preds = %366
  %370 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %371 = load i32, i32* @BTN_1, align 4
  %372 = load i32, i32* %7, align 4
  %373 = add nsw i32 %371, %372
  %374 = sext i32 %373 to i64
  %375 = inttoptr i64 %374 to i8*
  %376 = load i8*, i8** %3, align 8
  %377 = getelementptr inbounds i8, i8* %376, i64 5
  %378 = load i8, i8* %377, align 1
  %379 = zext i8 %378 to i32
  %380 = load i32, i32* %7, align 4
  %381 = shl i32 1, %380
  %382 = and i32 %379, %381
  %383 = trunc i32 %382 to i8
  %384 = call i32 @input_report_key(%struct.input_dev* %370, i8* %375, i8 zeroext %383)
  %385 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %386 = load i32, i32* @BTN_5, align 4
  %387 = load i32, i32* %7, align 4
  %388 = add nsw i32 %386, %387
  %389 = sext i32 %388 to i64
  %390 = inttoptr i64 %389 to i8*
  %391 = load i8*, i8** %3, align 8
  %392 = getelementptr inbounds i8, i8* %391, i64 6
  %393 = load i8, i8* %392, align 1
  %394 = zext i8 %393 to i32
  %395 = load i32, i32* %7, align 4
  %396 = shl i32 1, %395
  %397 = and i32 %394, %396
  %398 = trunc i32 %397 to i8
  %399 = call i32 @input_report_key(%struct.input_dev* %385, i8* %390, i8 zeroext %398)
  br label %400

400:                                              ; preds = %369
  %401 = load i32, i32* %7, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %7, align 4
  br label %366

403:                                              ; preds = %366
  br label %411

404:                                              ; preds = %219
  %405 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %406 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %405, i32 0, i32 0
  %407 = load i8*, i8** %3, align 8
  %408 = getelementptr inbounds i8, i8* %407, i64 0
  %409 = load i8, i8* %408, align 1
  %410 = call i32 @dev_dbg(i32* %406, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %409)
  br label %432

411:                                              ; preds = %219, %403, %283
  %412 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %413 = load i32, i32* @ABS_MISC, align 4
  %414 = load %struct.hanwang*, %struct.hanwang** %2, align 8
  %415 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %414, i32 0, i32 2
  %416 = load i8, i8* %415, align 8
  %417 = call i32 @input_report_abs(%struct.input_dev* %412, i32 %413, i8 zeroext %416)
  %418 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %419 = load i32, i32* @EV_MSC, align 4
  %420 = load i32, i32* @MSC_SERIAL, align 4
  %421 = call i32 @input_event(%struct.input_dev* %418, i32 %419, i32 %420, i32 -1)
  br label %429

422:                                              ; preds = %33
  %423 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %424 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %423, i32 0, i32 0
  %425 = load i8*, i8** %3, align 8
  %426 = getelementptr inbounds i8, i8* %425, i64 0
  %427 = load i8, i8* %426, align 1
  %428 = call i32 @dev_dbg(i32* %424, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %427)
  br label %429

429:                                              ; preds = %422, %411, %203
  %430 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %431 = call i32 @input_sync(%struct.input_dev* %430)
  br label %432

432:                                              ; preds = %429, %404
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i8*, i8 zeroext) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local zeroext i8 @be16_to_cpup(i32*) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
