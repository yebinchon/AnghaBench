; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_rohm_bu21023.c_rohm_ts_soft_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_rohm_bu21023.c_rohm_ts_soft_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rohm_ts_data = type { i32, i32*, %struct.input_dev*, %struct.i2c_client* }
%struct.input_dev = type { i32 }
%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.input_mt_pos = type { i32, i32 }

@MAX_CONTACTS = common dso_local global i32 0, align 4
@INT_MASK = common dso_local global i32 0, align 4
@INT_ALL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@INT_CLEAR = common dso_local global i32 0, align 4
@POS_X1_H = common dso_local global i32 0, align 4
@TOUCH_GESTURE = common dso_local global i32 0, align 4
@TOUCH_MASK = common dso_local global i32 0, align 4
@POS_X1_L = common dso_local global i32 0, align 4
@POS_Y1_H = common dso_local global i32 0, align 4
@POS_Y1_L = common dso_local global i32 0, align 4
@POS_X2_H = common dso_local global i32 0, align 4
@POS_X2_L = common dso_local global i32 0, align 4
@POS_Y2_H = common dso_local global i32 0, align 4
@POS_Y2_L = common dso_local global i32 0, align 4
@untouch_threshold = common dso_local global i32* null, align 8
@single_touch_threshold = common dso_local global i32* null, align 8
@dual_touch_threshold = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"Three or more touches are not supported\0A\00", align 1
@ROHM_TS_DISPLACEMENT_MAX = common dso_local global i32 0, align 4
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@CALIBRATION_REQUEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"manual calibration failed: %d\0A\00", align 1
@CALIBRATION_DONE = common dso_local global i32 0, align 4
@SLEEP_OUT = common dso_local global i32 0, align 4
@SLEEP_IN = common dso_local global i32 0, align 4
@PROGRAM_LOAD_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rohm_ts_soft_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rohm_ts_soft_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rohm_ts_data*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca [10 x i32], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.rohm_ts_data*
  store %struct.rohm_ts_data* %23, %struct.rohm_ts_data** %6, align 8
  %24 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %6, align 8
  %25 = getelementptr inbounds %struct.rohm_ts_data, %struct.rohm_ts_data* %24, i32 0, i32 3
  %26 = load %struct.i2c_client*, %struct.i2c_client** %25, align 8
  store %struct.i2c_client* %26, %struct.i2c_client** %7, align 8
  %27 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %6, align 8
  %28 = getelementptr inbounds %struct.rohm_ts_data, %struct.rohm_ts_data* %27, i32 0, i32 2
  %29 = load %struct.input_dev*, %struct.input_dev** %28, align 8
  store %struct.input_dev* %29, %struct.input_dev** %8, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  store %struct.device* %31, %struct.device** %9, align 8
  %32 = load i32, i32* @MAX_CONTACTS, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %11, align 8
  %35 = alloca %struct.input_mt_pos, i64 %33, align 16
  store i64 %33, i64* %12, align 8
  %36 = load i32, i32* @MAX_CONTACTS, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %13, align 8
  store i32 -1, i32* %16, align 4
  %39 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %6, align 8
  %40 = getelementptr inbounds %struct.rohm_ts_data, %struct.rohm_ts_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %17, align 4
  %42 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %43 = load i32, i32* @INT_MASK, align 4
  %44 = load i32, i32* @INT_ALL, align 4
  %45 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %42, i32 %43, i32 %44)
  store i32 %45, i32* %19, align 4
  %46 = load i32, i32* %19, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %2
  %49 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %332

50:                                               ; preds = %2
  %51 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %52 = load i32, i32* @INT_CLEAR, align 4
  %53 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %51, i32 %52, i32 255)
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %19, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %332

58:                                               ; preds = %50
  %59 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %60 = load i32, i32* @POS_X1_H, align 4
  %61 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %62 = call i32 @rohm_i2c_burst_read(%struct.i2c_client* %59, i32 %60, i32* %61, i32 40)
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %19, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %66, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %332

67:                                               ; preds = %58
  %68 = load i32, i32* @TOUCH_GESTURE, align 4
  %69 = load i32, i32* @POS_X1_H, align 4
  %70 = sub nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @TOUCH_MASK, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %143

78:                                               ; preds = %67
  %79 = load i32, i32* @POS_X1_H, align 4
  %80 = load i32, i32* @POS_X1_H, align 4
  %81 = sub nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 2
  %86 = load i32, i32* @POS_X1_L, align 4
  %87 = load i32, i32* @POS_X1_H, align 4
  %88 = sub nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %85, %91
  %93 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %35, i64 0
  %94 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 16
  %95 = load i32, i32* @POS_Y1_H, align 4
  %96 = load i32, i32* @POS_X1_H, align 4
  %97 = sub nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 2
  %102 = load i32, i32* @POS_Y1_L, align 4
  %103 = load i32, i32* @POS_X1_H, align 4
  %104 = sub nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %101, %107
  %109 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %35, i64 0
  %110 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @POS_X2_H, align 4
  %112 = load i32, i32* @POS_X1_H, align 4
  %113 = sub nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 2
  %118 = load i32, i32* @POS_X2_L, align 4
  %119 = load i32, i32* @POS_X1_H, align 4
  %120 = sub nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %117, %123
  %125 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %35, i64 1
  %126 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* @POS_Y2_H, align 4
  %128 = load i32, i32* @POS_X1_H, align 4
  %129 = sub nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 2
  %134 = load i32, i32* @POS_Y2_L, align 4
  %135 = load i32, i32* @POS_X1_H, align 4
  %136 = sub nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %133, %139
  %141 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %35, i64 1
  %142 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %78, %67
  %144 = load i32, i32* %14, align 4
  switch i32 %144, label %222 [
    i32 0, label %145
    i32 128, label %161
    i32 129, label %206
  ]

145:                                              ; preds = %143
  %146 = load i32*, i32** @untouch_threshold, align 8
  %147 = load i32, i32* %17, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %15, align 4
  %151 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %6, align 8
  %152 = getelementptr inbounds %struct.rohm_ts_data, %struct.rohm_ts_data* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %154, align 4
  %157 = load i32, i32* %15, align 4
  %158 = icmp uge i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %145
  store i32 0, i32* %16, align 4
  br label %160

160:                                              ; preds = %159, %145
  br label %226

161:                                              ; preds = %143
  %162 = load i32*, i32** @single_touch_threshold, align 8
  %163 = load i32, i32* %17, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %15, align 4
  %167 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %6, align 8
  %168 = getelementptr inbounds %struct.rohm_ts_data, %struct.rohm_ts_data* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %170, align 4
  %173 = load i32, i32* %15, align 4
  %174 = icmp uge i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %161
  store i32 1, i32* %16, align 4
  br label %176

176:                                              ; preds = %175, %161
  %177 = load i32, i32* %16, align 4
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %205

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %35, i64 1
  %181 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %204

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %35, i64 1
  %186 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %204

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %35, i64 1
  %191 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %35, i64 0
  %194 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 16
  %195 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %35, i64 1
  %196 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %35, i64 0
  %199 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %35, i64 1
  %201 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %200, i32 0, i32 0
  store i32 0, i32* %201, align 8
  %202 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %35, i64 1
  %203 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %202, i32 0, i32 1
  store i32 0, i32* %203, align 4
  br label %204

204:                                              ; preds = %189, %184, %179
  br label %205

205:                                              ; preds = %204, %176
  br label %226

206:                                              ; preds = %143
  %207 = load i32*, i32** @dual_touch_threshold, align 8
  %208 = load i32, i32* %17, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %15, align 4
  %212 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %6, align 8
  %213 = getelementptr inbounds %struct.rohm_ts_data, %struct.rohm_ts_data* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 2
  %216 = load i32, i32* %215, align 4
  %217 = add i32 %216, 1
  store i32 %217, i32* %215, align 4
  %218 = load i32, i32* %15, align 4
  %219 = icmp uge i32 %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %206
  store i32 2, i32* %16, align 4
  br label %221

221:                                              ; preds = %220, %206
  br label %226

222:                                              ; preds = %143
  %223 = load %struct.device*, %struct.device** %9, align 8
  %224 = call i32 @dev_dbg(%struct.device* %223, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %225 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %225, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %332

226:                                              ; preds = %221, %205, %160
  %227 = load i32, i32* %16, align 4
  %228 = icmp sge i32 %227, 0
  br i1 %228, label %229, label %300

229:                                              ; preds = %226
  %230 = load i32, i32* %17, align 4
  %231 = load i32, i32* %16, align 4
  %232 = icmp ne i32 %230, %231
  br i1 %232, label %233, label %252

233:                                              ; preds = %229
  %234 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %6, align 8
  %235 = getelementptr inbounds %struct.rohm_ts_data, %struct.rohm_ts_data* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %16, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  store i32 %240, i32* %18, align 4
  %241 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %6, align 8
  %242 = getelementptr inbounds %struct.rohm_ts_data, %struct.rohm_ts_data* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = call i32 @memset(i32* %243, i32 0, i32 8)
  %245 = load i32, i32* %18, align 4
  %246 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %6, align 8
  %247 = getelementptr inbounds %struct.rohm_ts_data, %struct.rohm_ts_data* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %16, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  store i32 %245, i32* %251, align 4
  br label %252

252:                                              ; preds = %233, %229
  %253 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %254 = load i32, i32* %16, align 4
  %255 = load i32, i32* @ROHM_TS_DISPLACEMENT_MAX, align 4
  %256 = call i32 @input_mt_assign_slots(%struct.input_dev* %253, i32* %38, %struct.input_mt_pos* %35, i32 %254, i32 %255)
  store i32 0, i32* %20, align 4
  br label %257

257:                                              ; preds = %287, %252
  %258 = load i32, i32* %20, align 4
  %259 = load i32, i32* %16, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %290

261:                                              ; preds = %257
  %262 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %263 = load i32, i32* %20, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %38, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @input_mt_slot(%struct.input_dev* %262, i32 %266)
  %268 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %269 = load i32, i32* @MT_TOOL_FINGER, align 4
  %270 = call i32 @input_mt_report_slot_state(%struct.input_dev* %268, i32 %269, i32 1)
  %271 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %272 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %273 = load i32, i32* %20, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %35, i64 %274
  %276 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @input_report_abs(%struct.input_dev* %271, i32 %272, i32 %277)
  %279 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %280 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %281 = load i32, i32* %20, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %35, i64 %282
  %284 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @input_report_abs(%struct.input_dev* %279, i32 %280, i32 %285)
  br label %287

287:                                              ; preds = %261
  %288 = load i32, i32* %20, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %20, align 4
  br label %257

290:                                              ; preds = %257
  %291 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %292 = call i32 @input_mt_sync_frame(%struct.input_dev* %291)
  %293 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %294 = call i32 @input_mt_report_pointer_emulation(%struct.input_dev* %293, i32 1)
  %295 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %296 = call i32 @input_sync(%struct.input_dev* %295)
  %297 = load i32, i32* %16, align 4
  %298 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %6, align 8
  %299 = getelementptr inbounds %struct.rohm_ts_data, %struct.rohm_ts_data* %298, i32 0, i32 0
  store i32 %297, i32* %299, align 8
  br label %300

300:                                              ; preds = %290, %226
  %301 = load i32, i32* @TOUCH_GESTURE, align 4
  %302 = load i32, i32* @POS_X1_H, align 4
  %303 = sub nsw i32 %301, %302
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @CALIBRATION_REQUEST, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %320

310:                                              ; preds = %300
  %311 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %6, align 8
  %312 = call i32 @rohm_ts_manual_calibration(%struct.rohm_ts_data* %311)
  store i32 %312, i32* %19, align 4
  %313 = load i32, i32* %19, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %310
  %316 = load %struct.device*, %struct.device** %9, align 8
  %317 = load i32, i32* %19, align 4
  %318 = call i32 @dev_warn(%struct.device* %316, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %317)
  br label %319

319:                                              ; preds = %315, %310
  br label %320

320:                                              ; preds = %319, %300
  %321 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %322 = load i32, i32* @INT_MASK, align 4
  %323 = load i32, i32* @CALIBRATION_DONE, align 4
  %324 = load i32, i32* @SLEEP_OUT, align 4
  %325 = or i32 %323, %324
  %326 = load i32, i32* @SLEEP_IN, align 4
  %327 = or i32 %325, %326
  %328 = load i32, i32* @PROGRAM_LOAD_DONE, align 4
  %329 = or i32 %327, %328
  %330 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %321, i32 %322, i32 %329)
  %331 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %331, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %332

332:                                              ; preds = %320, %222, %65, %56, %48
  %333 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %333)
  %334 = load i32, i32* %3, align 4
  ret i32 %334
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #2

declare dso_local i32 @rohm_i2c_burst_read(%struct.i2c_client*, i32, i32*, i32) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @input_mt_assign_slots(%struct.input_dev*, i32*, %struct.input_mt_pos*, i32, i32) #2

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #2

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_mt_sync_frame(%struct.input_dev*) #2

declare dso_local i32 @input_mt_report_pointer_emulation(%struct.input_dev*, i32) #2

declare dso_local i32 @input_sync(%struct.input_dev*) #2

declare dso_local i32 @rohm_ts_manual_calibration(%struct.rohm_ts_data*) #2

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
