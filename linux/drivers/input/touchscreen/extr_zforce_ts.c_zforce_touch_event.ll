; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zforce_ts.c_zforce_touch_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zforce_ts.c_zforce_touch_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zforce_ts = type { i32, %struct.zforce_ts_platdata*, %struct.i2c_client* }
%struct.zforce_ts_platdata = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.zforce_point = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ZFORCE_REPORT_POINTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"too many coordinates %d, expected max %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"coordinates (%d,%d) invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [96 x i8] c"point %d/%d: state %d, id %d, pressure %d, prblty %d, x %d, y %d, amajor %d, aminor %d, ori %d\0A\00", align 1
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@STATE_UP = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zforce_ts*, i32*)* @zforce_touch_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zforce_touch_event(%struct.zforce_ts* %0, i32* %1) #0 {
  %3 = alloca %struct.zforce_ts*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.zforce_ts_platdata*, align 8
  %7 = alloca %struct.zforce_point, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.zforce_ts* %0, %struct.zforce_ts** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %12 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %11, i32 0, i32 2
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %5, align 8
  %14 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %15 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %14, i32 0, i32 1
  %16 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %15, align 8
  store %struct.zforce_ts_platdata* %16, %struct.zforce_ts_platdata** %6, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @ZFORCE_REPORT_POINTS, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @ZFORCE_REPORT_POINTS, align 4
  %28 = call i32 @dev_warn(i32* %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* @ZFORCE_REPORT_POINTS, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %23, %2
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %261, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %264

35:                                               ; preds = %31
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 9, %37
  %39 = add nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 8
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 9, %45
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %43, %50
  %52 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 9, %54
  %56 = add nsw i32 %55, 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 8
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = mul nsw i32 9, %62
  %64 = add nsw i32 %63, 3
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %60, %67
  %69 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %6, align 8
  %73 = getelementptr inbounds %struct.zforce_ts_platdata, %struct.zforce_ts_platdata* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %83, label %76

76:                                               ; preds = %35
  %77 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.zforce_ts_platdata*, %struct.zforce_ts_platdata** %6, align 8
  %80 = getelementptr inbounds %struct.zforce_ts_platdata, %struct.zforce_ts_platdata* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %78, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %76, %35
  %84 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_warn(i32* %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %89)
  %91 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 1
  store i32 0, i32* %91, align 4
  %92 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 0
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %83, %76
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %9, align 4
  %96 = mul nsw i32 9, %95
  %97 = add nsw i32 %96, 5
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %94, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 15
  %102 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 2
  store i32 %101, i32* %102, align 4
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* %9, align 4
  %105 = mul nsw i32 9, %104
  %106 = add nsw i32 %105, 5
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 240
  %111 = ashr i32 %110, 4
  %112 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 3
  store i32 %111, i32* %112, align 4
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* %9, align 4
  %115 = mul nsw i32 9, %114
  %116 = add nsw i32 %115, 6
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %113, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %4, align 8
  %121 = load i32, i32* %9, align 4
  %122 = mul nsw i32 9, %121
  %123 = add nsw i32 %122, 7
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @max(i32 %119, i32 %126)
  %128 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 4
  store i32 %127, i32* %128, align 4
  %129 = load i32*, i32** %4, align 8
  %130 = load i32, i32* %9, align 4
  %131 = mul nsw i32 9, %130
  %132 = add nsw i32 %131, 6
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %4, align 8
  %137 = load i32, i32* %9, align 4
  %138 = mul nsw i32 9, %137
  %139 = add nsw i32 %138, 7
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %136, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @min(i32 %135, i32 %142)
  %144 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 5
  store i32 %143, i32* %144, align 4
  %145 = load i32*, i32** %4, align 8
  %146 = load i32, i32* %9, align 4
  %147 = mul nsw i32 9, %146
  %148 = add nsw i32 %147, 6
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %145, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %4, align 8
  %153 = load i32, i32* %9, align 4
  %154 = mul nsw i32 9, %153
  %155 = add nsw i32 %154, 7
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %152, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = icmp sgt i32 %151, %158
  %160 = zext i1 %159 to i32
  %161 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 6
  store i32 %160, i32* %161, align 4
  %162 = load i32*, i32** %4, align 8
  %163 = load i32, i32* %9, align 4
  %164 = mul nsw i32 9, %163
  %165 = add nsw i32 %164, 8
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %162, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 7
  store i32 %168, i32* %169, align 4
  %170 = load i32*, i32** %4, align 8
  %171 = load i32, i32* %9, align 4
  %172 = mul nsw i32 9, %171
  %173 = add nsw i32 %172, 9
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %170, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 8
  store i32 %176, i32* %177, align 4
  %178 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %179 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %178, i32 0, i32 0
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* %8, align 4
  %182 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 7
  %187 = load i32, i32* %186, align 4
  %188 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 8
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 5
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 6
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @dev_dbg(i32* %179, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.2, i64 0, i64 0), i32 %180, i32 %181, i32 %183, i32 %185, i32 %187, i32 %189, i32 %191, i32 %193, i32 %195, i32 %197, i32 %199)
  %201 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %202 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = sub nsw i32 %205, 1
  %207 = call i32 @input_mt_slot(i32 %203, i32 %206)
  %208 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %209 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @MT_TOOL_FINGER, align 4
  %212 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @STATE_UP, align 4
  %215 = icmp ne i32 %213, %214
  %216 = zext i1 %215 to i32
  %217 = call i32 @input_mt_report_slot_state(i32 %210, i32 %211, i32 %216)
  %218 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @STATE_UP, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %222, label %260

222:                                              ; preds = %93
  %223 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %224 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %227 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @input_report_abs(i32 %225, i32 %226, i32 %228)
  %230 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %231 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %234 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @input_report_abs(i32 %232, i32 %233, i32 %235)
  %237 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %238 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %241 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 4
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @input_report_abs(i32 %239, i32 %240, i32 %242)
  %244 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %245 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %248 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 5
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @input_report_abs(i32 %246, i32 %247, i32 %249)
  %251 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %252 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %255 = getelementptr inbounds %struct.zforce_point, %struct.zforce_point* %7, i32 0, i32 6
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @input_report_abs(i32 %253, i32 %254, i32 %256)
  %258 = load i32, i32* %10, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %10, align 4
  br label %260

260:                                              ; preds = %222, %93
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %9, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %9, align 4
  br label %31

264:                                              ; preds = %31
  %265 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %266 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @input_mt_sync_frame(i32 %267)
  %269 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %270 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* %10, align 4
  %273 = call i32 @input_mt_report_finger_count(i32 %271, i32 %272)
  %274 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %275 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @input_sync(i32 %276)
  ret i32 0
}

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_mt_slot(i32, i32) #1

declare dso_local i32 @input_mt_report_slot_state(i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_mt_sync_frame(i32) #1

declare dso_local i32 @input_mt_report_finger_count(i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
