; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71805f.c_f71805f_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71805f.c_f71805f_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f71805f_data = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32, i8*, i64, i8**, i8*, %struct.TYPE_2__*, i8**, i8** }
%struct.TYPE_2__ = type { i32*, i8** }
%struct.device = type { i32 }

@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@F71805F_REG_TEMP_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.f71805f_data* (%struct.device*)* @f71805f_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.f71805f_data* @f71805f_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.f71805f_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.f71805f_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.f71805f_data* %7, %struct.f71805f_data** %3, align 8
  %8 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %9 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %8, i32 0, i32 12
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load i8*, i8** @jiffies, align 8
  %12 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %13 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %12, i32 0, i32 13
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* @HZ, align 4
  %16 = mul nsw i32 60, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr i8, i8* %14, i64 %17
  %19 = call i64 @time_after(i8* %11, i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %23 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %186, label %26

26:                                               ; preds = %21, %1
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %60, %26
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 11
  br i1 %29, label %30, label %63

30:                                               ; preds = %27
  %31 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %32 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %60

39:                                               ; preds = %30
  %40 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @F71805F_REG_IN_HIGH(i32 %41)
  %43 = call i32 @f71805f_read8(%struct.f71805f_data* %40, i32 %42)
  %44 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %45 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  %50 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @F71805F_REG_IN_LOW(i32 %51)
  %53 = call i32 @f71805f_read8(%struct.f71805f_data* %50, i32 %52)
  %54 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %55 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  br label %60

60:                                               ; preds = %39, %38
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %27

63:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %98, %63
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %65, 3
  br i1 %66, label %67, label %101

67:                                               ; preds = %64
  %68 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @F71805F_REG_FAN_LOW(i32 %69)
  %71 = call i8* @f71805f_read16(%struct.f71805f_data* %68, i32 %70)
  %72 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %73 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %72, i32 0, i32 19
  %74 = load i8**, i8*** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  store i8* %71, i8** %77, align 8
  %78 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @F71805F_REG_FAN_TARGET(i32 %79)
  %81 = call i8* @f71805f_read16(%struct.f71805f_data* %78, i32 %80)
  %82 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %83 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %82, i32 0, i32 18
  %84 = load i8**, i8*** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  store i8* %81, i8** %87, align 8
  %88 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @F71805F_REG_PWM_FREQ(i32 %89)
  %91 = call i32 @f71805f_read8(%struct.f71805f_data* %88, i32 %90)
  %92 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %93 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %91, i32* %97, align 4
  br label %98

98:                                               ; preds = %67
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %4, align 4
  br label %64

101:                                              ; preds = %64
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %126, %101
  %103 = load i32, i32* %4, align 4
  %104 = icmp slt i32 %103, 3
  br i1 %104, label %105, label %129

105:                                              ; preds = %102
  %106 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @F71805F_REG_TEMP_HIGH(i32 %107)
  %109 = call i32 @f71805f_read8(%struct.f71805f_data* %106, i32 %108)
  %110 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %111 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %110, i32 0, i32 5
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %109, i32* %115, align 4
  %116 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @F71805F_REG_TEMP_HYST(i32 %117)
  %119 = call i32 @f71805f_read8(%struct.f71805f_data* %116, i32 %118)
  %120 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %121 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %120, i32 0, i32 6
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %119, i32* %125, align 4
  br label %126

126:                                              ; preds = %105
  %127 = load i32, i32* %4, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %4, align 4
  br label %102

129:                                              ; preds = %102
  %130 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %131 = load i32, i32* @F71805F_REG_TEMP_MODE, align 4
  %132 = call i32 @f71805f_read8(%struct.f71805f_data* %130, i32 %131)
  %133 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %134 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %133, i32 0, i32 7
  store i32 %132, i32* %134, align 8
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %179, %129
  %136 = load i32, i32* %4, align 4
  %137 = icmp slt i32 %136, 3
  br i1 %137, label %138, label %182

138:                                              ; preds = %135
  store i32 0, i32* %5, align 4
  br label %139

139:                                              ; preds = %175, %138
  %140 = load i32, i32* %5, align 4
  %141 = icmp slt i32 %140, 3
  br i1 %141, label %142, label %178

142:                                              ; preds = %139
  %143 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @F71805F_REG_PWM_AUTO_POINT_TEMP(i32 %144, i32 %145)
  %147 = call i32 @f71805f_read8(%struct.f71805f_data* %143, i32 %146)
  %148 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %149 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %148, i32 0, i32 17
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %147, i32* %158, align 4
  %159 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @F71805F_REG_PWM_AUTO_POINT_FAN(i32 %160, i32 %161)
  %163 = call i8* @f71805f_read16(%struct.f71805f_data* %159, i32 %162)
  %164 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %165 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %164, i32 0, i32 17
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 1
  %171 = load i8**, i8*** %170, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  store i8* %163, i8** %174, align 8
  br label %175

175:                                              ; preds = %142
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %5, align 4
  br label %139

178:                                              ; preds = %139
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %4, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %4, align 4
  br label %135

182:                                              ; preds = %135
  %183 = load i8*, i8** @jiffies, align 8
  %184 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %185 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %184, i32 0, i32 16
  store i8* %183, i8** %185, align 8
  br label %186

186:                                              ; preds = %182, %21
  %187 = load i8*, i8** @jiffies, align 8
  %188 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %189 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %188, i32 0, i32 13
  %190 = load i8*, i8** %189, align 8
  %191 = load i32, i32* @HZ, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr i8, i8* %190, i64 %192
  %194 = call i64 @time_after(i8* %187, i8* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %186
  %197 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %198 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %306, label %201

201:                                              ; preds = %196, %186
  store i32 0, i32* %4, align 4
  br label %202

202:                                              ; preds = %225, %201
  %203 = load i32, i32* %4, align 4
  %204 = icmp slt i32 %203, 11
  br i1 %204, label %205, label %228

205:                                              ; preds = %202
  %206 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %207 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %4, align 4
  %210 = shl i32 1, %209
  %211 = and i32 %208, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %205
  br label %225

214:                                              ; preds = %205
  %215 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %216 = load i32, i32* %4, align 4
  %217 = call i32 @F71805F_REG_IN(i32 %216)
  %218 = call i32 @f71805f_read8(%struct.f71805f_data* %215, i32 %217)
  %219 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %220 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %219, i32 0, i32 8
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %4, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  store i32 %218, i32* %224, align 4
  br label %225

225:                                              ; preds = %214, %213
  %226 = load i32, i32* %4, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %4, align 4
  br label %202

228:                                              ; preds = %202
  store i32 0, i32* %4, align 4
  br label %229

229:                                              ; preds = %263, %228
  %230 = load i32, i32* %4, align 4
  %231 = icmp slt i32 %230, 3
  br i1 %231, label %232, label %266

232:                                              ; preds = %229
  %233 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %234 = load i32, i32* %4, align 4
  %235 = call i32 @F71805F_REG_FAN(i32 %234)
  %236 = call i8* @f71805f_read16(%struct.f71805f_data* %233, i32 %235)
  %237 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %238 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %237, i32 0, i32 15
  %239 = load i8**, i8*** %238, align 8
  %240 = load i32, i32* %4, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8*, i8** %239, i64 %241
  store i8* %236, i8** %242, align 8
  %243 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %244 = load i32, i32* %4, align 4
  %245 = call i32 @F71805F_REG_FAN_CTRL(i32 %244)
  %246 = call i32 @f71805f_read8(%struct.f71805f_data* %243, i32 %245)
  %247 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %248 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %247, i32 0, i32 9
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %4, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  store i32 %246, i32* %252, align 4
  %253 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %254 = load i32, i32* %4, align 4
  %255 = call i32 @F71805F_REG_PWM_DUTY(i32 %254)
  %256 = call i32 @f71805f_read8(%struct.f71805f_data* %253, i32 %255)
  %257 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %258 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %257, i32 0, i32 10
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %4, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  store i32 %256, i32* %262, align 4
  br label %263

263:                                              ; preds = %232
  %264 = load i32, i32* %4, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %4, align 4
  br label %229

266:                                              ; preds = %229
  store i32 0, i32* %4, align 4
  br label %267

267:                                              ; preds = %281, %266
  %268 = load i32, i32* %4, align 4
  %269 = icmp slt i32 %268, 3
  br i1 %269, label %270, label %284

270:                                              ; preds = %267
  %271 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %272 = load i32, i32* %4, align 4
  %273 = call i32 @F71805F_REG_TEMP(i32 %272)
  %274 = call i32 @f71805f_read8(%struct.f71805f_data* %271, i32 %273)
  %275 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %276 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %275, i32 0, i32 11
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %4, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  store i32 %274, i32* %280, align 4
  br label %281

281:                                              ; preds = %270
  %282 = load i32, i32* %4, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %4, align 4
  br label %267

284:                                              ; preds = %267
  %285 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %286 = call i32 @F71805F_REG_STATUS(i32 0)
  %287 = call i32 @f71805f_read8(%struct.f71805f_data* %285, i32 %286)
  %288 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %289 = call i32 @F71805F_REG_STATUS(i32 1)
  %290 = call i32 @f71805f_read8(%struct.f71805f_data* %288, i32 %289)
  %291 = shl i32 %290, 8
  %292 = add nsw i32 %287, %291
  %293 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %294 = call i32 @F71805F_REG_STATUS(i32 2)
  %295 = call i32 @f71805f_read8(%struct.f71805f_data* %293, i32 %294)
  %296 = shl i32 %295, 16
  %297 = add nsw i32 %292, %296
  %298 = sext i32 %297 to i64
  %299 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %300 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %299, i32 0, i32 14
  store i64 %298, i64* %300, align 8
  %301 = load i8*, i8** @jiffies, align 8
  %302 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %303 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %302, i32 0, i32 13
  store i8* %301, i8** %303, align 8
  %304 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %305 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %304, i32 0, i32 0
  store i32 1, i32* %305, align 8
  br label %306

306:                                              ; preds = %284, %196
  %307 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %308 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %307, i32 0, i32 12
  %309 = call i32 @mutex_unlock(i32* %308)
  %310 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  ret %struct.f71805f_data* %310
}

declare dso_local %struct.f71805f_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i8*, i8*) #1

declare dso_local i32 @f71805f_read8(%struct.f71805f_data*, i32) #1

declare dso_local i32 @F71805F_REG_IN_HIGH(i32) #1

declare dso_local i32 @F71805F_REG_IN_LOW(i32) #1

declare dso_local i8* @f71805f_read16(%struct.f71805f_data*, i32) #1

declare dso_local i32 @F71805F_REG_FAN_LOW(i32) #1

declare dso_local i32 @F71805F_REG_FAN_TARGET(i32) #1

declare dso_local i32 @F71805F_REG_PWM_FREQ(i32) #1

declare dso_local i32 @F71805F_REG_TEMP_HIGH(i32) #1

declare dso_local i32 @F71805F_REG_TEMP_HYST(i32) #1

declare dso_local i32 @F71805F_REG_PWM_AUTO_POINT_TEMP(i32, i32) #1

declare dso_local i32 @F71805F_REG_PWM_AUTO_POINT_FAN(i32, i32) #1

declare dso_local i32 @F71805F_REG_IN(i32) #1

declare dso_local i32 @F71805F_REG_FAN(i32) #1

declare dso_local i32 @F71805F_REG_FAN_CTRL(i32) #1

declare dso_local i32 @F71805F_REG_PWM_DUTY(i32) #1

declare dso_local i32 @F71805F_REG_TEMP(i32) #1

declare dso_local i32 @F71805F_REG_STATUS(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
