; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_gtco.c_gtco_urb_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_gtco.c_gtco_urb_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.gtco* }
%struct.gtco = type { i32*, i32, %struct.TYPE_3__*, %struct.input_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.input_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@ECONNRESET = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@PID_1000 = common dso_local global i64 0, align 8
@PID_1001 = common dso_local global i64 0, align 8
@PID_1002 = common dso_local global i64 0, align 8
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_TILT_X = common dso_local global i32 0, align 4
@ABS_TILT_Y = common dso_local global i32 0, align 4
@MASK_BUTTON = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SERIAL = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@MASK_INRANGE = common dso_local global i8 0, align 1
@ABS_DISTANCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"======>>>>>>REPORT 1: val 0x%X(%d)\0A\00", align 1
@MSC_SCAN = common dso_local global i32 0, align 4
@PID_400 = common dso_local global i64 0, align 8
@PID_401 = common dso_local global i64 0, align 8
@ABS_MISC = common dso_local global i32 0, align 4
@MSC_RAW = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"usb_submit_urb failed rc=0x%x\0A\00", align 1
@BTN_DIGI = common dso_local global i64 0, align 8
@i = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @gtco_urb_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gtco_urb_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.gtco*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i8], align 1
  %8 = alloca i8, align 1
  store %struct.urb* %0, %struct.urb** %2, align 8
  %9 = load %struct.urb*, %struct.urb** %2, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 1
  %11 = load %struct.gtco*, %struct.gtco** %10, align 8
  store %struct.gtco* %11, %struct.gtco** %3, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.gtco*, %struct.gtco** %3, align 8
  %13 = getelementptr inbounds %struct.gtco, %struct.gtco* %12, i32 0, i32 3
  %14 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  store %struct.input_dev* %14, %struct.input_dev** %4, align 8
  %15 = load %struct.urb*, %struct.urb** %2, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ECONNRESET, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %35, label %21

21:                                               ; preds = %1
  %22 = load %struct.urb*, %struct.urb** %2, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load %struct.urb*, %struct.urb** %2, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ESHUTDOWN, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %21, %1
  br label %412

36:                                               ; preds = %28
  %37 = load %struct.urb*, %struct.urb** %2, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %399

42:                                               ; preds = %36
  %43 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %44 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PID_1000, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %63, label %49

49:                                               ; preds = %42
  %50 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %51 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PID_1001, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %58 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PID_1002, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %208

63:                                               ; preds = %56, %49, %42
  %64 = load %struct.gtco*, %struct.gtco** %3, align 8
  %65 = getelementptr inbounds %struct.gtco, %struct.gtco* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %207 [
    i32 5, label %69
    i32 4, label %102
    i32 2, label %121
    i32 3, label %121
    i32 1, label %134
    i32 7, label %197
  ]

69:                                               ; preds = %63
  %70 = load %struct.gtco*, %struct.gtco** %3, align 8
  %71 = getelementptr inbounds %struct.gtco, %struct.gtco* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 8
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 1
  store i32 %75, i32* %6, align 4
  %76 = load %struct.gtco*, %struct.gtco** %3, align 8
  %77 = getelementptr inbounds %struct.gtco, %struct.gtco* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 7
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 7
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %85 = load i32, i32* @ABS_PRESSURE, align 4
  %86 = load %struct.gtco*, %struct.gtco** %3, align 8
  %87 = getelementptr inbounds %struct.gtco, %struct.gtco* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @input_report_abs(%struct.input_dev* %84, i32 %85, i32 %90)
  %92 = load %struct.gtco*, %struct.gtco** %3, align 8
  %93 = getelementptr inbounds %struct.gtco, %struct.gtco* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 7
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 127
  %98 = load %struct.gtco*, %struct.gtco** %3, align 8
  %99 = getelementptr inbounds %struct.gtco, %struct.gtco* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 7
  store i32 %97, i32* %101, align 4
  br label %102

102:                                              ; preds = %63, %69
  %103 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %104 = load i32, i32* @ABS_TILT_X, align 4
  %105 = load %struct.gtco*, %struct.gtco** %3, align 8
  %106 = getelementptr inbounds %struct.gtco, %struct.gtco* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 6
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @sign_extend32(i32 %109, i32 6)
  %111 = call i32 @input_report_abs(%struct.input_dev* %103, i32 %104, i32 %110)
  %112 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %113 = load i32, i32* @ABS_TILT_Y, align 4
  %114 = load %struct.gtco*, %struct.gtco** %3, align 8
  %115 = getelementptr inbounds %struct.gtco, %struct.gtco* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 7
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @sign_extend32(i32 %118, i32 6)
  %120 = call i32 @input_report_abs(%struct.input_dev* %112, i32 %113, i32 %119)
  br label %121

121:                                              ; preds = %63, %63, %102
  %122 = load %struct.gtco*, %struct.gtco** %3, align 8
  %123 = getelementptr inbounds %struct.gtco, %struct.gtco* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 5
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @MASK_BUTTON, align 4
  %128 = and i32 %126, %127
  store i32 %128, i32* %6, align 4
  %129 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %130 = load i32, i32* @EV_MSC, align 4
  %131 = load i32, i32* @MSC_SERIAL, align 4
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @input_event(%struct.input_dev* %129, i32 %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %63, %121
  %135 = load %struct.gtco*, %struct.gtco** %3, align 8
  %136 = getelementptr inbounds %struct.gtco, %struct.gtco* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = bitcast i32* %138 to i8*
  %140 = call i32 @get_unaligned_le16(i8* %139)
  store i32 %140, i32* %6, align 4
  %141 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %142 = load i32, i32* @ABS_X, align 4
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @input_report_abs(%struct.input_dev* %141, i32 %142, i32 %143)
  %145 = load %struct.gtco*, %struct.gtco** %3, align 8
  %146 = getelementptr inbounds %struct.gtco, %struct.gtco* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 3
  %149 = bitcast i32* %148 to i8*
  %150 = call i32 @get_unaligned_le16(i8* %149)
  store i32 %150, i32* %6, align 4
  %151 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %152 = load i32, i32* @ABS_Y, align 4
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @input_report_abs(%struct.input_dev* %151, i32 %152, i32 %153)
  %155 = load %struct.gtco*, %struct.gtco** %3, align 8
  %156 = getelementptr inbounds %struct.gtco, %struct.gtco* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 5
  %159 = load i32, i32* %158, align 4
  %160 = load i8, i8* @MASK_INRANGE, align 1
  %161 = sext i8 %160 to i32
  %162 = and i32 %159, %161
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 1, i32 0
  store i32 %165, i32* %6, align 4
  %166 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %167 = load i32, i32* @ABS_DISTANCE, align 4
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @input_report_abs(%struct.input_dev* %166, i32 %167, i32 %168)
  %170 = load %struct.gtco*, %struct.gtco** %3, align 8
  %171 = getelementptr inbounds %struct.gtco, %struct.gtco* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %196

176:                                              ; preds = %134
  %177 = load %struct.gtco*, %struct.gtco** %3, align 8
  %178 = getelementptr inbounds %struct.gtco, %struct.gtco* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 5
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @MASK_BUTTON, align 4
  %183 = and i32 %181, %182
  store i32 %183, i32* %6, align 4
  %184 = load %struct.gtco*, %struct.gtco** %3, align 8
  %185 = getelementptr inbounds %struct.gtco, %struct.gtco* %184, i32 0, i32 2
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %6, align 4
  %190 = call i32 @dev_dbg(i32* %187, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %188, i32 %189)
  %191 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %192 = load i32, i32* @EV_MSC, align 4
  %193 = load i32, i32* @MSC_SERIAL, align 4
  %194 = load i32, i32* %6, align 4
  %195 = call i32 @input_event(%struct.input_dev* %191, i32 %192, i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %176, %134
  br label %207

197:                                              ; preds = %63
  %198 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %199 = load i32, i32* @EV_MSC, align 4
  %200 = load i32, i32* @MSC_SCAN, align 4
  %201 = load %struct.gtco*, %struct.gtco** %3, align 8
  %202 = getelementptr inbounds %struct.gtco, %struct.gtco* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @input_event(%struct.input_dev* %198, i32 %199, i32 %200, i32 %205)
  br label %207

207:                                              ; preds = %63, %197, %196
  br label %208

208:                                              ; preds = %207, %56
  %209 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %210 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @PID_400, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %222, label %215

215:                                              ; preds = %208
  %216 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %217 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @PID_401, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %387

222:                                              ; preds = %215, %208
  %223 = load %struct.gtco*, %struct.gtco** %3, align 8
  %224 = getelementptr inbounds %struct.gtco, %struct.gtco* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 0
  %227 = load i32, i32* %226, align 4
  %228 = icmp eq i32 %227, 2
  br i1 %228, label %229, label %239

229:                                              ; preds = %222
  %230 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %231 = load i32, i32* @EV_MSC, align 4
  %232 = load i32, i32* @MSC_SCAN, align 4
  %233 = load %struct.gtco*, %struct.gtco** %3, align 8
  %234 = getelementptr inbounds %struct.gtco, %struct.gtco* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @input_event(%struct.input_dev* %230, i32 %231, i32 %232, i32 %237)
  br label %239

239:                                              ; preds = %229, %222
  %240 = load %struct.gtco*, %struct.gtco** %3, align 8
  %241 = getelementptr inbounds %struct.gtco, %struct.gtco* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  %244 = load i32, i32* %243, align 4
  %245 = icmp eq i32 %244, 1
  br i1 %245, label %246, label %386

246:                                              ; preds = %239
  %247 = load %struct.gtco*, %struct.gtco** %3, align 8
  %248 = getelementptr inbounds %struct.gtco, %struct.gtco* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = icmp sgt i32 %249, 65536
  br i1 %250, label %251, label %330

251:                                              ; preds = %246
  %252 = load %struct.gtco*, %struct.gtco** %3, align 8
  %253 = getelementptr inbounds %struct.gtco, %struct.gtco* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 2
  %256 = load i32, i32* %255, align 4
  %257 = shl i32 %256, 8
  %258 = load %struct.gtco*, %struct.gtco** %3, align 8
  %259 = getelementptr inbounds %struct.gtco, %struct.gtco* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 1
  %262 = load i32, i32* %261, align 4
  %263 = or i32 %257, %262
  store i32 %263, i32* %6, align 4
  %264 = load %struct.gtco*, %struct.gtco** %3, align 8
  %265 = getelementptr inbounds %struct.gtco, %struct.gtco* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 3
  %268 = load i32, i32* %267, align 4
  %269 = and i32 %268, 1
  %270 = shl i32 %269, 16
  %271 = load i32, i32* %6, align 4
  %272 = or i32 %271, %270
  store i32 %272, i32* %6, align 4
  %273 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %274 = load i32, i32* @ABS_X, align 4
  %275 = load i32, i32* %6, align 4
  %276 = call i32 @input_report_abs(%struct.input_dev* %273, i32 %274, i32 %275)
  %277 = load %struct.gtco*, %struct.gtco** %3, align 8
  %278 = getelementptr inbounds %struct.gtco, %struct.gtco* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 3
  %281 = load i32, i32* %280, align 4
  %282 = ashr i32 %281, 1
  %283 = trunc i32 %282 to i8
  %284 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 %283, i8* %284, align 1
  %285 = load %struct.gtco*, %struct.gtco** %3, align 8
  %286 = getelementptr inbounds %struct.gtco, %struct.gtco* %285, i32 0, i32 0
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 3
  %289 = load i32, i32* %288, align 4
  %290 = and i32 %289, 1
  %291 = shl i32 %290, 7
  %292 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %293 = load i8, i8* %292, align 1
  %294 = sext i8 %293 to i32
  %295 = or i32 %294, %291
  %296 = trunc i32 %295 to i8
  store i8 %296, i8* %292, align 1
  %297 = load %struct.gtco*, %struct.gtco** %3, align 8
  %298 = getelementptr inbounds %struct.gtco, %struct.gtco* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 4
  %301 = load i32, i32* %300, align 4
  %302 = ashr i32 %301, 1
  %303 = trunc i32 %302 to i8
  %304 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  store i8 %303, i8* %304, align 1
  %305 = load %struct.gtco*, %struct.gtco** %3, align 8
  %306 = getelementptr inbounds %struct.gtco, %struct.gtco* %305, i32 0, i32 0
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 5
  %309 = load i32, i32* %308, align 4
  %310 = and i32 %309, 1
  %311 = shl i32 %310, 7
  %312 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  %313 = load i8, i8* %312, align 1
  %314 = sext i8 %313 to i32
  %315 = or i32 %314, %311
  %316 = trunc i32 %315 to i8
  store i8 %316, i8* %312, align 1
  %317 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %318 = call i32 @get_unaligned_le16(i8* %317)
  store i32 %318, i32* %6, align 4
  %319 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %320 = load i32, i32* @ABS_Y, align 4
  %321 = load i32, i32* %6, align 4
  %322 = call i32 @input_report_abs(%struct.input_dev* %319, i32 %320, i32 %321)
  %323 = load %struct.gtco*, %struct.gtco** %3, align 8
  %324 = getelementptr inbounds %struct.gtco, %struct.gtco* %323, i32 0, i32 0
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 5
  %327 = load i32, i32* %326, align 4
  %328 = ashr i32 %327, 1
  %329 = trunc i32 %328 to i8
  store i8 %329, i8* %8, align 1
  br label %357

330:                                              ; preds = %246
  %331 = load %struct.gtco*, %struct.gtco** %3, align 8
  %332 = getelementptr inbounds %struct.gtco, %struct.gtco* %331, i32 0, i32 0
  %333 = load i32*, i32** %332, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 1
  %335 = bitcast i32* %334 to i8*
  %336 = call i32 @get_unaligned_le16(i8* %335)
  store i32 %336, i32* %6, align 4
  %337 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %338 = load i32, i32* @ABS_X, align 4
  %339 = load i32, i32* %6, align 4
  %340 = call i32 @input_report_abs(%struct.input_dev* %337, i32 %338, i32 %339)
  %341 = load %struct.gtco*, %struct.gtco** %3, align 8
  %342 = getelementptr inbounds %struct.gtco, %struct.gtco* %341, i32 0, i32 0
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 3
  %345 = bitcast i32* %344 to i8*
  %346 = call i32 @get_unaligned_le16(i8* %345)
  store i32 %346, i32* %6, align 4
  %347 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %348 = load i32, i32* @ABS_Y, align 4
  %349 = load i32, i32* %6, align 4
  %350 = call i32 @input_report_abs(%struct.input_dev* %347, i32 %348, i32 %349)
  %351 = load %struct.gtco*, %struct.gtco** %3, align 8
  %352 = getelementptr inbounds %struct.gtco, %struct.gtco* %351, i32 0, i32 0
  %353 = load i32*, i32** %352, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 5
  %355 = load i32, i32* %354, align 4
  %356 = trunc i32 %355 to i8
  store i8 %356, i8* %8, align 1
  br label %357

357:                                              ; preds = %330, %251
  %358 = load i8, i8* %8, align 1
  %359 = sext i8 %358 to i32
  %360 = load i8, i8* @MASK_INRANGE, align 1
  %361 = sext i8 %360 to i32
  %362 = and i32 %359, %361
  %363 = icmp ne i32 %362, 0
  %364 = zext i1 %363 to i64
  %365 = select i1 %363, i32 1, i32 0
  store i32 %365, i32* %6, align 4
  %366 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %367 = load i32, i32* @ABS_DISTANCE, align 4
  %368 = load i32, i32* %6, align 4
  %369 = call i32 @input_report_abs(%struct.input_dev* %366, i32 %367, i32 %368)
  %370 = load i8, i8* %8, align 1
  %371 = sext i8 %370 to i32
  %372 = and i32 %371, 15
  store i32 %372, i32* %6, align 4
  %373 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %374 = load i32, i32* @EV_MSC, align 4
  %375 = load i32, i32* @MSC_SERIAL, align 4
  %376 = load i32, i32* %6, align 4
  %377 = call i32 @input_event(%struct.input_dev* %373, i32 %374, i32 %375, i32 %376)
  %378 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %379 = load i32, i32* @ABS_MISC, align 4
  %380 = load %struct.gtco*, %struct.gtco** %3, align 8
  %381 = getelementptr inbounds %struct.gtco, %struct.gtco* %380, i32 0, i32 0
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 6
  %384 = load i32, i32* %383, align 4
  %385 = call i32 @input_report_abs(%struct.input_dev* %378, i32 %379, i32 %384)
  br label %386

386:                                              ; preds = %357, %239
  br label %387

387:                                              ; preds = %386, %215
  %388 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %389 = load i32, i32* @EV_MSC, align 4
  %390 = load i32, i32* @MSC_RAW, align 4
  %391 = load %struct.gtco*, %struct.gtco** %3, align 8
  %392 = getelementptr inbounds %struct.gtco, %struct.gtco* %391, i32 0, i32 0
  %393 = load i32*, i32** %392, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 0
  %395 = load i32, i32* %394, align 4
  %396 = call i32 @input_event(%struct.input_dev* %388, i32 %389, i32 %390, i32 %395)
  %397 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %398 = call i32 @input_sync(%struct.input_dev* %397)
  br label %399

399:                                              ; preds = %387, %41
  %400 = load %struct.urb*, %struct.urb** %2, align 8
  %401 = load i32, i32* @GFP_ATOMIC, align 4
  %402 = call i32 @usb_submit_urb(%struct.urb* %400, i32 %401)
  store i32 %402, i32* %5, align 4
  %403 = load i32, i32* %5, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %412

405:                                              ; preds = %399
  %406 = load %struct.gtco*, %struct.gtco** %3, align 8
  %407 = getelementptr inbounds %struct.gtco, %struct.gtco* %406, i32 0, i32 2
  %408 = load %struct.TYPE_3__*, %struct.TYPE_3__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %408, i32 0, i32 0
  %410 = load i32, i32* %5, align 4
  %411 = call i32 @dev_err(i32* %409, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %410)
  br label %412

412:                                              ; preds = %35, %405, %399
  ret void
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @get_unaligned_le16(i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
