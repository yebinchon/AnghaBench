; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_abituguru_detect_no_pwms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_abituguru_detect_no_pwms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abituguru_data = type { i32, i32**, i32*, i32** }

@pwms = common dso_local global i64 0, align 8
@ABIT_UGURU_MAX_PWMS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"assuming %d PWM outputs because of \22pwms\22 module param\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"detecting number of PWM outputs\0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"  pwm channel %d does not seem to be a pwm channel: settings[0] = %02X\0A\00", align 1
@ABIT_UGURU_TEMP_SENSOR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [91 x i8] c"  pwm channel %d does not seem to be a pwm channel: %d is not a valid temp sensor address\0A\00", align 1
@abituguru_pwm_min = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [101 x i8] c"  pwm channel %d does not seem to be a pwm channel: setting %d (%d) is below the minimum value (%d)\0A\00", align 1
@abituguru_pwm_max = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [101 x i8] c"  pwm channel %d does not seem to be a pwm channel: setting %d (%d) is above the maximum value (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [82 x i8] c"  pwm channel %d does not seem to be a pwm channel: min pwm (%d) >= max pwm (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [84 x i8] c"  pwm channel %d does not seem to be a pwm channel: min temp (%d) >= max temp (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c" found: %d PWM outputs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.abituguru_data*)* @abituguru_detect_no_pwms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abituguru_detect_no_pwms(%struct.abituguru_data* %0) #0 {
  %2 = alloca %struct.abituguru_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.abituguru_data* %0, %struct.abituguru_data** %2, align 8
  %6 = load i64, i64* @pwms, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load i64, i64* @pwms, align 8
  %10 = load i64, i64* @ABIT_UGURU_MAX_PWMS, align 8
  %11 = icmp sle i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i64, i64* @pwms, align 8
  %14 = trunc i64 %13 to i32
  %15 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %16 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %18 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i32, i8*, ...) @ABIT_UGURU_DEBUG(i32 2, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %298

21:                                               ; preds = %8, %1
  %22 = call i32 (i32, i8*, ...) @ABIT_UGURU_DEBUG(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %286, %21
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @ABIT_UGURU_MAX_PWMS, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %289

28:                                               ; preds = %23
  %29 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %30 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, -144
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %28
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %43 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %42, i32 0, i32 1
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @ABIT_UGURU_DEBUG(i32 2, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %50)
  br label %289

52:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %86, %52
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %56 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @ABIT_UGURU_TEMP_SENSOR, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %54, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %53
  %63 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %64 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %63, i32 0, i32 3
  %65 = load i32**, i32*** %64, align 8
  %66 = load i64, i64* @ABIT_UGURU_TEMP_SENSOR, align 8
  %67 = getelementptr inbounds i32*, i32** %65, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %74 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %73, i32 0, i32 1
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 15
  %83 = icmp eq i32 %72, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %62
  br label %89

85:                                               ; preds = %62
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %53

89:                                               ; preds = %84, %53
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %92 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @ABIT_UGURU_TEMP_SENSOR, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %90, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %89
  %99 = load i32, i32* %3, align 4
  %100 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %101 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %100, i32 0, i32 1
  %102 = load i32**, i32*** %101, align 8
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 15
  %110 = call i32 (i32, i8*, ...) @ABIT_UGURU_DEBUG(i32 2, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %109)
  br label %289

111:                                              ; preds = %89
  store i32 1, i32* %4, align 4
  br label %112

112:                                              ; preds = %200, %111
  %113 = load i32, i32* %4, align 4
  %114 = icmp slt i32 %113, 5
  br i1 %114, label %115, label %203

115:                                              ; preds = %112
  %116 = load i32, i32* %3, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load i32, i32* %4, align 4
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %4, align 4
  %123 = icmp eq i32 %122, 2
  br i1 %123, label %124, label %125

124:                                              ; preds = %121, %118
  store i32 77, i32* %5, align 4
  br label %131

125:                                              ; preds = %121, %115
  %126 = load i32*, i32** @abituguru_pwm_min, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %125, %124
  %132 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %133 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %132, i32 0, i32 1
  %134 = load i32**, i32*** %133, align 8
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32*, i32** %134, i64 %136
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %161

145:                                              ; preds = %131
  %146 = load i32, i32* %3, align 4
  %147 = load i32, i32* %4, align 4
  %148 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %149 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %148, i32 0, i32 1
  %150 = load i32**, i32*** %149, align 8
  %151 = load i32, i32* %3, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %150, i64 %152
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %4, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %5, align 4
  %160 = call i32 (i32, i8*, ...) @ABIT_UGURU_DEBUG(i32 2, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.4, i64 0, i64 0), i32 %146, i32 %147, i32 %158, i32 %159)
  br label %290

161:                                              ; preds = %131
  %162 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %163 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %162, i32 0, i32 1
  %164 = load i32**, i32*** %163, align 8
  %165 = load i32, i32* %3, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32*, i32** %164, i64 %166
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %4, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** @abituguru_pwm_max, align 8
  %174 = load i32, i32* %4, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = icmp sgt i32 %172, %177
  br i1 %178, label %179, label %199

179:                                              ; preds = %161
  %180 = load i32, i32* %3, align 4
  %181 = load i32, i32* %4, align 4
  %182 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %183 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %182, i32 0, i32 1
  %184 = load i32**, i32*** %183, align 8
  %185 = load i32, i32* %3, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32*, i32** %184, i64 %186
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %4, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** @abituguru_pwm_max, align 8
  %194 = load i32, i32* %4, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (i32, i8*, ...) @ABIT_UGURU_DEBUG(i32 2, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.5, i64 0, i64 0), i32 %180, i32 %181, i32 %192, i32 %197)
  br label %290

199:                                              ; preds = %161
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %4, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %4, align 4
  br label %112

203:                                              ; preds = %112
  %204 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %205 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %204, i32 0, i32 1
  %206 = load i32**, i32*** %205, align 8
  %207 = load i32, i32* %3, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32*, i32** %206, i64 %208
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %214 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %213, i32 0, i32 1
  %215 = load i32**, i32*** %214, align 8
  %216 = load i32, i32* %3, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32*, i32** %215, i64 %217
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 2
  %221 = load i32, i32* %220, align 4
  %222 = icmp sge i32 %212, %221
  br i1 %222, label %223, label %244

223:                                              ; preds = %203
  %224 = load i32, i32* %3, align 4
  %225 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %226 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %225, i32 0, i32 1
  %227 = load i32**, i32*** %226, align 8
  %228 = load i32, i32* %3, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32*, i32** %227, i64 %229
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %235 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %234, i32 0, i32 1
  %236 = load i32**, i32*** %235, align 8
  %237 = load i32, i32* %3, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32*, i32** %236, i64 %238
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 2
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (i32, i8*, ...) @ABIT_UGURU_DEBUG(i32 2, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.6, i64 0, i64 0), i32 %224, i32 %233, i32 %242)
  br label %289

244:                                              ; preds = %203
  %245 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %246 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %245, i32 0, i32 1
  %247 = load i32**, i32*** %246, align 8
  %248 = load i32, i32* %3, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32*, i32** %247, i64 %249
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 3
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %255 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %254, i32 0, i32 1
  %256 = load i32**, i32*** %255, align 8
  %257 = load i32, i32* %3, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32*, i32** %256, i64 %258
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 4
  %262 = load i32, i32* %261, align 4
  %263 = icmp sge i32 %253, %262
  br i1 %263, label %264, label %285

264:                                              ; preds = %244
  %265 = load i32, i32* %3, align 4
  %266 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %267 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %266, i32 0, i32 1
  %268 = load i32**, i32*** %267, align 8
  %269 = load i32, i32* %3, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32*, i32** %268, i64 %270
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 3
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %276 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %275, i32 0, i32 1
  %277 = load i32**, i32*** %276, align 8
  %278 = load i32, i32* %3, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32*, i32** %277, i64 %279
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 4
  %283 = load i32, i32* %282, align 4
  %284 = call i32 (i32, i8*, ...) @ABIT_UGURU_DEBUG(i32 2, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.7, i64 0, i64 0), i32 %265, i32 %274, i32 %283)
  br label %289

285:                                              ; preds = %244
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %3, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %3, align 4
  br label %23

289:                                              ; preds = %264, %223, %98, %40, %23
  br label %290

290:                                              ; preds = %289, %179, %145
  %291 = load i32, i32* %3, align 4
  %292 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %293 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %292, i32 0, i32 0
  store i32 %291, i32* %293, align 8
  %294 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %295 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = call i32 (i32, i8*, ...) @ABIT_UGURU_DEBUG(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %296)
  br label %298

298:                                              ; preds = %290, %12
  ret void
}

declare dso_local i32 @ABIT_UGURU_DEBUG(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
