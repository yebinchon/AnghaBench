; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_rohm_bu21023.c_rohm_ts_manual_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_rohm_bu21023.c_rohm_ts_manual_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rohm_ts_data = type { %struct.i2c_client* }
%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }

@CALIBRATION_REG1 = common dso_local global i32 0, align 4
@CALIBRATION_REG2 = common dso_local global i32 0, align 4
@CALIBRATION_REG3 = common dso_local global i32 0, align 4
@INT_MASK = common dso_local global i32 0, align 4
@COORD_UPDATE = common dso_local global i32 0, align 4
@SLEEP_IN = common dso_local global i32 0, align 4
@SLEEP_OUT = common dso_local global i32 0, align 4
@PROGRAM_LOAD_DONE = common dso_local global i32 0, align 4
@TEST1 = common dso_local global i32 0, align 4
@DUALTOUCH_STABILIZE_ON = common dso_local global i32 0, align 4
@CALIBRATION_RETRY_MAX = common dso_local global i32 0, align 4
@SAMPLING_DELAY = common dso_local global i32 0, align 4
@PRM1_X_H = common dso_local global i32 0, align 4
@TOUCH = common dso_local global i32 0, align 4
@TOUCH_DETECT = common dso_local global i32 0, align 4
@PRM1_X_L = common dso_local global i32 0, align 4
@AXIS_OFFSET = common dso_local global i32 0, align 4
@PRM1_Y_H = common dso_local global i32 0, align 4
@PRM1_Y_L = common dso_local global i32 0, align 4
@DUALTOUCH_REG_ON = common dso_local global i32 0, align 4
@AXIS_ADJUST = common dso_local global i64 0, align 8
@FORCE_CALIBRATION = common dso_local global i32 0, align 4
@FORCE_CALIBRATION_OFF = common dso_local global i32 0, align 4
@FORCE_CALIBRATION_ON = common dso_local global i32 0, align 4
@INT_CLEAR = common dso_local global i32 0, align 4
@TOUCH_GESTURE = common dso_local global i32 0, align 4
@CALIBRATION_MASK = common dso_local global i32 0, align 4
@INT_STATUS = common dso_local global i32 0, align 4
@CALIBRATION_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"calibration timeout\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@INT_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rohm_ts_data*)* @rohm_ts_manual_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rohm_ts_manual_calibration(%struct.rohm_ts_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rohm_ts_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca [33 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.rohm_ts_data* %0, %struct.rohm_ts_data** %3, align 8
  %27 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %3, align 8
  %28 = getelementptr inbounds %struct.rohm_ts_data, %struct.rohm_ts_data* %27, i32 0, i32 0
  %29 = load %struct.i2c_client*, %struct.i2c_client** %28, align 8
  store %struct.i2c_client* %29, %struct.i2c_client** %4, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  store %struct.device* %31, %struct.device** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load i32, i32* @CALIBRATION_REG1, align 4
  %34 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %32, i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %2, align 4
  br label %398

39:                                               ; preds = %1
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load i32, i32* @CALIBRATION_REG2, align 4
  %42 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %40, i32 %41)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* %2, align 4
  br label %398

47:                                               ; preds = %39
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = load i32, i32* @CALIBRATION_REG3, align 4
  %50 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %48, i32 %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %16, align 4
  store i32 %54, i32* %2, align 4
  br label %398

55:                                               ; preds = %47
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = load i32, i32* @INT_MASK, align 4
  %58 = load i32, i32* @COORD_UPDATE, align 4
  %59 = load i32, i32* @SLEEP_IN, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @SLEEP_OUT, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @PROGRAM_LOAD_DONE, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %56, i32 %57, i32 %64)
  store i32 %65, i32* %24, align 4
  %66 = load i32, i32* %24, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %378

69:                                               ; preds = %55
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = load i32, i32* @TEST1, align 4
  %72 = load i32, i32* @DUALTOUCH_STABILIZE_ON, align 4
  %73 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %70, i32 %71, i32 %72)
  store i32 %73, i32* %24, align 4
  %74 = load i32, i32* %24, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %378

77:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %331, %77
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @CALIBRATION_RETRY_MAX, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %334

82:                                               ; preds = %78
  %83 = load i32, i32* @SAMPLING_DELAY, align 4
  %84 = mul nsw i32 2, %83
  %85 = call i32 @mdelay(i32 %84)
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = load i32, i32* @PRM1_X_H, align 4
  %88 = getelementptr inbounds [33 x i32], [33 x i32]* %6, i64 0, i64 0
  %89 = call i32 @rohm_i2c_burst_read(%struct.i2c_client* %86, i32 %87, i32* %88, i32 132)
  store i32 %89, i32* %24, align 4
  %90 = load i32, i32* %24, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %378

93:                                               ; preds = %82
  %94 = load i32, i32* @TOUCH, align 4
  %95 = load i32, i32* @PRM1_X_H, align 4
  %96 = sub nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [33 x i32], [33 x i32]* %6, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @TOUCH_DETECT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %331

104:                                              ; preds = %93
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %150

107:                                              ; preds = %104
  %108 = load i32, i32* @PRM1_X_H, align 4
  %109 = load i32, i32* @PRM1_X_H, align 4
  %110 = sub nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [33 x i32], [33 x i32]* %6, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 2
  %115 = load i32, i32* @PRM1_X_L, align 4
  %116 = load i32, i32* @PRM1_X_H, align 4
  %117 = sub nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [33 x i32], [33 x i32]* %6, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %114, %120
  %122 = load i32, i32* @AXIS_OFFSET, align 4
  %123 = sub nsw i32 %121, %122
  store i32 %123, i32* %18, align 4
  %124 = load i32, i32* @PRM1_Y_H, align 4
  %125 = load i32, i32* @PRM1_X_H, align 4
  %126 = sub nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [33 x i32], [33 x i32]* %6, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %129, 2
  %131 = load i32, i32* @PRM1_Y_L, align 4
  %132 = load i32, i32* @PRM1_X_H, align 4
  %133 = sub nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [33 x i32], [33 x i32]* %6, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %130, %136
  %138 = load i32, i32* @AXIS_OFFSET, align 4
  %139 = sub nsw i32 %137, %138
  store i32 %139, i32* %19, align 4
  %140 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %141 = load i32, i32* @TEST1, align 4
  %142 = load i32, i32* @DUALTOUCH_STABILIZE_ON, align 4
  %143 = load i32, i32* @DUALTOUCH_REG_ON, align 4
  %144 = or i32 %142, %143
  %145 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %140, i32 %141, i32 %144)
  store i32 %145, i32* %24, align 4
  %146 = load i32, i32* %24, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %107
  br label %378

149:                                              ; preds = %107
  store i32 0, i32* %9, align 4
  br label %217

150:                                              ; preds = %104
  %151 = load i32, i32* @PRM1_X_H, align 4
  %152 = load i32, i32* @PRM1_X_H, align 4
  %153 = sub nsw i32 %151, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [33 x i32], [33 x i32]* %6, i64 0, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 %156, 2
  %158 = load i32, i32* @PRM1_X_L, align 4
  %159 = load i32, i32* @PRM1_X_H, align 4
  %160 = sub nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [33 x i32], [33 x i32]* %6, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %157, %163
  store i32 %164, i32* %22, align 4
  %165 = load i32, i32* @PRM1_Y_H, align 4
  %166 = load i32, i32* @PRM1_X_H, align 4
  %167 = sub nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [33 x i32], [33 x i32]* %6, i64 0, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = shl i32 %170, 2
  %172 = load i32, i32* @PRM1_Y_L, align 4
  %173 = load i32, i32* @PRM1_X_H, align 4
  %174 = sub nsw i32 %172, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [33 x i32], [33 x i32]* %6, i64 0, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %171, %177
  store i32 %178, i32* %23, align 4
  %179 = load i32, i32* %22, align 4
  %180 = icmp sle i32 %179, 4
  br i1 %180, label %181, label %187

181:                                              ; preds = %150
  %182 = load i64, i64* @AXIS_ADJUST, align 8
  %183 = load i32, i32* %18, align 4
  %184 = sext i32 %183 to i64
  %185 = sub nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %18, align 4
  br label %197

187:                                              ; preds = %150
  %188 = load i32, i32* %22, align 4
  %189 = icmp sge i32 %188, 60
  br i1 %189, label %190, label %196

190:                                              ; preds = %187
  %191 = load i64, i64* @AXIS_ADJUST, align 8
  %192 = load i32, i32* %18, align 4
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %193, %191
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %18, align 4
  br label %196

196:                                              ; preds = %190, %187
  br label %197

197:                                              ; preds = %196, %181
  %198 = load i32, i32* %23, align 4
  %199 = icmp sle i32 %198, 4
  br i1 %199, label %200, label %206

200:                                              ; preds = %197
  %201 = load i64, i64* @AXIS_ADJUST, align 8
  %202 = load i32, i32* %19, align 4
  %203 = sext i32 %202 to i64
  %204 = sub nsw i64 %203, %201
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %19, align 4
  br label %216

206:                                              ; preds = %197
  %207 = load i32, i32* %23, align 4
  %208 = icmp sge i32 %207, 60
  br i1 %208, label %209, label %215

209:                                              ; preds = %206
  %210 = load i64, i64* @AXIS_ADJUST, align 8
  %211 = load i32, i32* %19, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %212, %210
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %19, align 4
  br label %215

215:                                              ; preds = %209, %206
  br label %216

216:                                              ; preds = %215, %200
  br label %217

217:                                              ; preds = %216, %149
  %218 = load i32, i32* %18, align 4
  %219 = load i32, i32* %18, align 4
  %220 = and i32 %219, 512
  %221 = shl i32 %220, 1
  %222 = add nsw i32 %218, %221
  store i32 %222, i32* %20, align 4
  %223 = load i32, i32* %19, align 4
  %224 = load i32, i32* %19, align 4
  %225 = and i32 %224, 512
  %226 = shl i32 %225, 1
  %227 = add nsw i32 %223, %226
  store i32 %227, i32* %21, align 4
  %228 = load i32, i32* %20, align 4
  %229 = ashr i32 %228, 3
  store i32 %229, i32* %11, align 4
  %230 = load i32, i32* %21, align 4
  %231 = and i32 %230, 7
  %232 = shl i32 %231, 4
  %233 = load i32, i32* %20, align 4
  %234 = and i32 %233, 7
  %235 = or i32 %232, %234
  store i32 %235, i32* %12, align 4
  %236 = load i32, i32* %21, align 4
  %237 = ashr i32 %236, 3
  store i32 %237, i32* %13, align 4
  %238 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %239 = load i32, i32* @CALIBRATION_REG1, align 4
  %240 = load i32, i32* %11, align 4
  %241 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %238, i32 %239, i32 %240)
  store i32 %241, i32* %24, align 4
  %242 = load i32, i32* %24, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %217
  br label %378

245:                                              ; preds = %217
  %246 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %247 = load i32, i32* @CALIBRATION_REG2, align 4
  %248 = load i32, i32* %12, align 4
  %249 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %246, i32 %247, i32 %248)
  store i32 %249, i32* %24, align 4
  %250 = load i32, i32* %24, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %245
  br label %378

253:                                              ; preds = %245
  %254 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %255 = load i32, i32* @CALIBRATION_REG3, align 4
  %256 = load i32, i32* %13, align 4
  %257 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %254, i32 %255, i32 %256)
  store i32 %257, i32* %24, align 4
  %258 = load i32, i32* %24, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %253
  br label %378

261:                                              ; preds = %253
  %262 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %263 = load i32, i32* @FORCE_CALIBRATION, align 4
  %264 = load i32, i32* @FORCE_CALIBRATION_OFF, align 4
  %265 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %262, i32 %263, i32 %264)
  store i32 %265, i32* %24, align 4
  %266 = load i32, i32* %24, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %261
  br label %378

269:                                              ; preds = %261
  %270 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %271 = load i32, i32* @FORCE_CALIBRATION, align 4
  %272 = load i32, i32* @FORCE_CALIBRATION_ON, align 4
  %273 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %270, i32 %271, i32 %272)
  store i32 %273, i32* %24, align 4
  %274 = load i32, i32* %24, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %269
  br label %378

277:                                              ; preds = %269
  %278 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %279 = load i32, i32* @INT_CLEAR, align 4
  %280 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %278, i32 %279, i32 255)
  store i32 %280, i32* %24, align 4
  %281 = load i32, i32* %24, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %277
  br label %378

284:                                              ; preds = %277
  store i32 0, i32* %10, align 4
  store i32 0, i32* %26, align 4
  br label %285

285:                                              ; preds = %306, %284
  %286 = load i32, i32* %26, align 4
  %287 = icmp slt i32 %286, 10
  br i1 %287, label %288, label %309

288:                                              ; preds = %285
  %289 = load i32, i32* @SAMPLING_DELAY, align 4
  %290 = call i32 @mdelay(i32 %289)
  %291 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %292 = load i32, i32* @TOUCH_GESTURE, align 4
  %293 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %291, i32 %292)
  store i32 %293, i32* %17, align 4
  %294 = load i32, i32* %17, align 4
  %295 = load i32, i32* @CALIBRATION_MASK, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %299, label %298

298:                                              ; preds = %288
  store i32 1, i32* %10, align 4
  br label %309

299:                                              ; preds = %288
  %300 = load i32, i32* %17, align 4
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %299
  %303 = load i32, i32* %17, align 4
  store i32 %303, i32* %24, align 4
  br label %378

304:                                              ; preds = %299
  br label %305

305:                                              ; preds = %304
  br label %306

306:                                              ; preds = %305
  %307 = load i32, i32* %26, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %26, align 4
  br label %285

309:                                              ; preds = %298, %285
  %310 = load i32, i32* %10, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %327

312:                                              ; preds = %309
  %313 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %314 = load i32, i32* @INT_STATUS, align 4
  %315 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %313, i32 %314)
  store i32 %315, i32* %17, align 4
  %316 = load i32, i32* %17, align 4
  %317 = load i32, i32* @CALIBRATION_DONE, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %312
  store i32 1, i32* %8, align 4
  br label %334

320:                                              ; preds = %312
  %321 = load i32, i32* %17, align 4
  %322 = icmp slt i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %320
  %324 = load i32, i32* %17, align 4
  store i32 %324, i32* %24, align 4
  br label %378

325:                                              ; preds = %320
  br label %326

326:                                              ; preds = %325
  br label %330

327:                                              ; preds = %309
  %328 = load %struct.device*, %struct.device** %5, align 8
  %329 = call i32 @dev_warn(%struct.device* %328, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %330

330:                                              ; preds = %327, %326
  br label %331

331:                                              ; preds = %330, %103
  %332 = load i32, i32* %7, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %7, align 4
  br label %78

334:                                              ; preds = %319, %78
  %335 = load i32, i32* %8, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %377, label %337

337:                                              ; preds = %334
  %338 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %339 = load i32, i32* @CALIBRATION_REG1, align 4
  %340 = load i32, i32* %14, align 4
  %341 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %338, i32 %339, i32 %340)
  store i32 %341, i32* %24, align 4
  %342 = load i32, i32* %24, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %337
  br label %378

345:                                              ; preds = %337
  %346 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %347 = load i32, i32* @CALIBRATION_REG2, align 4
  %348 = load i32, i32* %15, align 4
  %349 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %346, i32 %347, i32 %348)
  store i32 %349, i32* %24, align 4
  %350 = load i32, i32* %24, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %345
  br label %378

353:                                              ; preds = %345
  %354 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %355 = load i32, i32* @CALIBRATION_REG3, align 4
  %356 = load i32, i32* %16, align 4
  %357 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %354, i32 %355, i32 %356)
  store i32 %357, i32* %24, align 4
  %358 = load i32, i32* %24, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %353
  br label %378

361:                                              ; preds = %353
  %362 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %363 = load i32, i32* @TEST1, align 4
  %364 = load i32, i32* @DUALTOUCH_STABILIZE_ON, align 4
  %365 = load i32, i32* @DUALTOUCH_REG_ON, align 4
  %366 = or i32 %364, %365
  %367 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %362, i32 %363, i32 %366)
  store i32 %367, i32* %24, align 4
  %368 = load i32, i32* %24, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %371

370:                                              ; preds = %361
  br label %378

371:                                              ; preds = %361
  %372 = load i32, i32* @SAMPLING_DELAY, align 4
  %373 = mul nsw i32 10, %372
  %374 = call i32 @mdelay(i32 %373)
  %375 = load i32, i32* @EBUSY, align 4
  %376 = sub nsw i32 0, %375
  store i32 %376, i32* %24, align 4
  br label %377

377:                                              ; preds = %371, %334
  br label %378

378:                                              ; preds = %377, %370, %360, %352, %344, %323, %302, %283, %276, %268, %260, %252, %244, %148, %92, %76, %68
  %379 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %380 = load i32, i32* @INT_MASK, align 4
  %381 = load i32, i32* @INT_ALL, align 4
  %382 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %379, i32 %380, i32 %381)
  store i32 %382, i32* %25, align 4
  %383 = load i32, i32* %25, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %389, label %385

385:                                              ; preds = %378
  %386 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %387 = load i32, i32* @INT_CLEAR, align 4
  %388 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %386, i32 %387, i32 255)
  store i32 %388, i32* %25, align 4
  br label %389

389:                                              ; preds = %385, %378
  %390 = load i32, i32* %24, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %394

392:                                              ; preds = %389
  %393 = load i32, i32* %24, align 4
  br label %396

394:                                              ; preds = %389
  %395 = load i32, i32* %25, align 4
  br label %396

396:                                              ; preds = %394, %392
  %397 = phi i32 [ %393, %392 ], [ %395, %394 ]
  store i32 %397, i32* %2, align 4
  br label %398

398:                                              ; preds = %396, %53, %45, %37
  %399 = load i32, i32* %2, align 4
  ret i32 %399
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rohm_i2c_burst_read(%struct.i2c_client*, i32, i32*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
