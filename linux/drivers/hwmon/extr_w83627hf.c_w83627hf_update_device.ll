; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_w83627hf_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_w83627hf_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83627hf_data = type { i64, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i64 }
%struct.device = type { i32 }

@w83697hf = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@w83627hf = common dso_local global i64 0, align 8
@w83627thf = common dso_local global i64 0, align 8
@W83627HF_REG_PWM_FREQ = common dso_local global i32 0, align 4
@W83637HF_REG_PWM_FREQ = common dso_local global i32* null, align 8
@W83627THF_REG_PWM_ENABLE = common dso_local global i32* null, align 8
@W83627THF_PWM_ENABLE_SHIFT = common dso_local global i32* null, align 8
@w83627hf_reg_temp = common dso_local global i32* null, align 8
@w83627hf_reg_temp_over = common dso_local global i32* null, align 8
@w83627hf_reg_temp_hyst = common dso_local global i32* null, align 8
@W83781D_REG_ALARM1 = common dso_local global i32 0, align 4
@W83781D_REG_ALARM2 = common dso_local global i32 0, align 4
@W83781D_REG_ALARM3 = common dso_local global i32 0, align 4
@W83781D_REG_BEEP_INTS2 = common dso_local global i32 0, align 4
@W83781D_REG_BEEP_INTS1 = common dso_local global i32 0, align 4
@W83781D_REG_BEEP_INTS3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.w83627hf_data* (%struct.device*)* @w83627hf_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.w83627hf_data* @w83627hf_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.w83627hf_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call %struct.w83627hf_data* @dev_get_drvdata(%struct.device* %10)
  store %struct.w83627hf_data* %11, %struct.w83627hf_data** %3, align 8
  %12 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %13 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @w83697hf, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 2, i32 3
  store i32 %18, i32* %5, align 4
  %19 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %20 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @w83697hf, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 2, i32 3
  store i32 %25, i32* %6, align 4
  %26 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %27 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %26, i32 0, i32 15
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i64, i64* @jiffies, align 8
  %30 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %31 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %30, i32 0, i32 16
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @HZ, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load i32, i32* @HZ, align 4
  %37 = sdiv i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = call i64 @time_after(i64 %29, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %1
  %43 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %44 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %377, label %47

47:                                               ; preds = %42, %1
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %110, %47
  %49 = load i32, i32* %4, align 4
  %50 = icmp sle i32 %49, 8
  br i1 %50, label %51, label %113

51:                                               ; preds = %48
  %52 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %53 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @w83697hf, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %78, label %60

60:                                               ; preds = %57, %51
  %61 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %62 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @w83627hf, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %68 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @w83697hf, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %73, 5
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 6
  br i1 %77, label %78, label %79

78:                                               ; preds = %75, %72, %57
  br label %110

79:                                               ; preds = %75, %66, %60
  %80 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @W83781D_REG_IN(i32 %81)
  %83 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %80, i32 %82)
  %84 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %85 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %83, i32* %89, align 4
  %90 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @W83781D_REG_IN_MIN(i32 %91)
  %93 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %90, i32 %92)
  %94 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %95 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  %100 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @W83781D_REG_IN_MAX(i32 %101)
  %103 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %100, i32 %102)
  %104 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %105 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %103, i32* %109, align 4
  br label %110

110:                                              ; preds = %79, %78
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %48

113:                                              ; preds = %48
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %138, %113
  %115 = load i32, i32* %4, align 4
  %116 = icmp sle i32 %115, 2
  br i1 %116, label %117, label %141

117:                                              ; preds = %114
  %118 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @W83627HF_REG_FAN(i32 %119)
  %121 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %118, i32 %120)
  %122 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %123 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %122, i32 0, i32 5
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %121, i32* %127, align 4
  %128 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @W83627HF_REG_FAN_MIN(i32 %129)
  %131 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %128, i32 %130)
  %132 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %133 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %132, i32 0, i32 6
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %131, i32* %137, align 4
  br label %138

138:                                              ; preds = %117
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %4, align 4
  br label %114

141:                                              ; preds = %114
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %185, %141
  %143 = load i32, i32* %4, align 4
  %144 = icmp sle i32 %143, 2
  br i1 %144, label %145, label %188

145:                                              ; preds = %142
  %146 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %147 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %148 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @W836X7HF_REG_PWM(i64 %149, i32 %150)
  %152 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %146, i32 %151)
  store i32 %152, i32* %7, align 4
  %153 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %154 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @w83627thf, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %145
  %159 = load i32, i32* %7, align 4
  %160 = and i32 %159, 240
  store i32 %160, i32* %7, align 4
  br label %161

161:                                              ; preds = %158, %145
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %164 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %163, i32 0, i32 7
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %4, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %162, i32* %168, align 4
  %169 = load i32, i32* %4, align 4
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %184

171:                                              ; preds = %161
  %172 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %173 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @w83627hf, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %183, label %177

177:                                              ; preds = %171
  %178 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %179 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @w83697hf, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %177, %171
  br label %188

184:                                              ; preds = %177, %161
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %4, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %4, align 4
  br label %142

188:                                              ; preds = %183, %142
  %189 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %190 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @w83627hf, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %211

194:                                              ; preds = %188
  %195 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %196 = load i32, i32* @W83627HF_REG_PWM_FREQ, align 4
  %197 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %195, i32 %196)
  store i32 %197, i32* %8, align 4
  %198 = load i32, i32* %8, align 4
  %199 = and i32 %198, 7
  %200 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %201 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %200, i32 0, i32 8
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  store i32 %199, i32* %203, align 4
  %204 = load i32, i32* %8, align 4
  %205 = ashr i32 %204, 4
  %206 = and i32 %205, 7
  %207 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %208 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %207, i32 0, i32 8
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 1
  store i32 %206, i32* %210, align 4
  br label %252

211:                                              ; preds = %188
  %212 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %213 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @w83627thf, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %251

217:                                              ; preds = %211
  store i32 1, i32* %4, align 4
  br label %218

218:                                              ; preds = %247, %217
  %219 = load i32, i32* %4, align 4
  %220 = icmp sle i32 %219, 3
  br i1 %220, label %221, label %250

221:                                              ; preds = %218
  %222 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %223 = load i32*, i32** @W83637HF_REG_PWM_FREQ, align 8
  %224 = load i32, i32* %4, align 4
  %225 = sub nsw i32 %224, 1
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %223, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %222, i32 %228)
  %230 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %231 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %230, i32 0, i32 8
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %4, align 4
  %234 = sub nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  store i32 %229, i32* %236, align 4
  %237 = load i32, i32* %4, align 4
  %238 = icmp eq i32 %237, 2
  br i1 %238, label %239, label %246

239:                                              ; preds = %221
  %240 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %241 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @w83697hf, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %239
  br label %250

246:                                              ; preds = %239, %221
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %4, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %4, align 4
  br label %218

250:                                              ; preds = %245, %218
  br label %251

251:                                              ; preds = %250, %211
  br label %252

252:                                              ; preds = %251, %194
  %253 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %254 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @w83627hf, align 8
  %257 = icmp ne i64 %255, %256
  br i1 %257, label %258, label %290

258:                                              ; preds = %252
  store i32 0, i32* %4, align 4
  br label %259

259:                                              ; preds = %286, %258
  %260 = load i32, i32* %4, align 4
  %261 = load i32, i32* %6, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %289

263:                                              ; preds = %259
  %264 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %265 = load i32*, i32** @W83627THF_REG_PWM_ENABLE, align 8
  %266 = load i32, i32* %4, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %264, i32 %269)
  store i32 %270, i32* %9, align 4
  %271 = load i32, i32* %9, align 4
  %272 = load i32*, i32** @W83627THF_PWM_ENABLE_SHIFT, align 8
  %273 = load i32, i32* %4, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = ashr i32 %271, %276
  %278 = and i32 %277, 3
  %279 = add nsw i32 %278, 1
  %280 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %281 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %280, i32 0, i32 9
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %4, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  store i32 %279, i32* %285, align 4
  br label %286

286:                                              ; preds = %263
  %287 = load i32, i32* %4, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %4, align 4
  br label %259

289:                                              ; preds = %259
  br label %290

290:                                              ; preds = %289, %252
  store i32 0, i32* %4, align 4
  br label %291

291:                                              ; preds = %335, %290
  %292 = load i32, i32* %4, align 4
  %293 = load i32, i32* %5, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %338

295:                                              ; preds = %291
  %296 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %297 = load i32*, i32** @w83627hf_reg_temp, align 8
  %298 = load i32, i32* %4, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %296, i32 %301)
  %303 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %304 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %303, i32 0, i32 10
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %4, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  store i32 %302, i32* %308, align 4
  %309 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %310 = load i32*, i32** @w83627hf_reg_temp_over, align 8
  %311 = load i32, i32* %4, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %309, i32 %314)
  %316 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %317 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %316, i32 0, i32 11
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %4, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  store i32 %315, i32* %321, align 4
  %322 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %323 = load i32*, i32** @w83627hf_reg_temp_hyst, align 8
  %324 = load i32, i32* %4, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %322, i32 %327)
  %329 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %330 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %329, i32 0, i32 12
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %4, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  store i32 %328, i32* %334, align 4
  br label %335

335:                                              ; preds = %295
  %336 = load i32, i32* %4, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %4, align 4
  br label %291

338:                                              ; preds = %291
  %339 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %340 = call i32 @w83627hf_update_fan_div(%struct.w83627hf_data* %339)
  %341 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %342 = load i32, i32* @W83781D_REG_ALARM1, align 4
  %343 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %341, i32 %342)
  %344 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %345 = load i32, i32* @W83781D_REG_ALARM2, align 4
  %346 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %344, i32 %345)
  %347 = shl i32 %346, 8
  %348 = or i32 %343, %347
  %349 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %350 = load i32, i32* @W83781D_REG_ALARM3, align 4
  %351 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %349, i32 %350)
  %352 = shl i32 %351, 16
  %353 = or i32 %348, %352
  %354 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %355 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %354, i32 0, i32 13
  store i32 %353, i32* %355, align 8
  %356 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %357 = load i32, i32* @W83781D_REG_BEEP_INTS2, align 4
  %358 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %356, i32 %357)
  store i32 %358, i32* %4, align 4
  %359 = load i32, i32* %4, align 4
  %360 = shl i32 %359, 8
  %361 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %362 = load i32, i32* @W83781D_REG_BEEP_INTS1, align 4
  %363 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %361, i32 %362)
  %364 = or i32 %360, %363
  %365 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %366 = load i32, i32* @W83781D_REG_BEEP_INTS3, align 4
  %367 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %365, i32 %366)
  %368 = shl i32 %367, 16
  %369 = or i32 %364, %368
  %370 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %371 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %370, i32 0, i32 14
  store i32 %369, i32* %371, align 4
  %372 = load i64, i64* @jiffies, align 8
  %373 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %374 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %373, i32 0, i32 16
  store i64 %372, i64* %374, align 8
  %375 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %376 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %375, i32 0, i32 1
  store i32 1, i32* %376, align 8
  br label %377

377:                                              ; preds = %338, %42
  %378 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %379 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %378, i32 0, i32 15
  %380 = call i32 @mutex_unlock(i32* %379)
  %381 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  ret %struct.w83627hf_data* %381
}

declare dso_local %struct.w83627hf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @w83627hf_read_value(%struct.w83627hf_data*, i32) #1

declare dso_local i32 @W83781D_REG_IN(i32) #1

declare dso_local i32 @W83781D_REG_IN_MIN(i32) #1

declare dso_local i32 @W83781D_REG_IN_MAX(i32) #1

declare dso_local i32 @W83627HF_REG_FAN(i32) #1

declare dso_local i32 @W83627HF_REG_FAN_MIN(i32) #1

declare dso_local i32 @W836X7HF_REG_PWM(i64, i32) #1

declare dso_local i32 @w83627hf_update_fan_div(%struct.w83627hf_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
