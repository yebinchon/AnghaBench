; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_dme1737_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_dme1737_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dme1737_data = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64, i32*, i32*, i32, i32, i8*, i32, i8* }
%struct.device = type { i32 }

@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@DME1737_REG_CONFIG = common dso_local global i64 0, align 8
@HAS_VID = common dso_local global i32 0, align 4
@DME1737_REG_VID = common dso_local global i64 0, align 8
@HAS_IN7 = common dso_local global i32 0, align 4
@HAS_TEMP_OFFSET = common dso_local global i32 0, align 4
@DME1737_REG_IN_LSB = common dso_local global i64* null, align 8
@DME1737_REG_IN_LSB_SHL = common dso_local global i32* null, align 8
@DME1737_REG_TEMP_LSB = common dso_local global i64* null, align 8
@DME1737_REG_TEMP_LSB_SHL = common dso_local global i32* null, align 8
@HAS_ZONE3 = common dso_local global i32 0, align 4
@sch5127 = common dso_local global i64 0, align 8
@HAS_ZONE_HYST = common dso_local global i32 0, align 4
@DME1737_REG_ALARM1 = common dso_local global i64 0, align 8
@DME1737_REG_ALARM2 = common dso_local global i64 0, align 8
@DME1737_REG_ALARM3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dme1737_data* (%struct.device*)* @dme1737_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dme1737_data* @dme1737_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.dme1737_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [6 x i32], align 16
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.dme1737_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.dme1737_data* %7, %struct.dme1737_data** %3, align 8
  %8 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %9 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %8, i32 0, i32 24
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load i8*, i8** @jiffies, align 8
  %12 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %13 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %12, i32 0, i32 27
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* @HZ, align 4
  %16 = mul nsw i32 600, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr i8, i8* %14, i64 %17
  %19 = call i64 @time_after(i8* %11, i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %23 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %28 = load i64, i64* @DME1737_REG_CONFIG, align 8
  %29 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %30 = load i64, i64* @DME1737_REG_CONFIG, align 8
  %31 = call i32 @dme1737_read(%struct.dme1737_data* %29, i64 %30)
  %32 = or i32 %31, 16
  %33 = call i32 @dme1737_write(%struct.dme1737_data* %27, i64 %28, i32 %32)
  %34 = load i8*, i8** @jiffies, align 8
  %35 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %36 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %35, i32 0, i32 27
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %26, %21
  %38 = load i8*, i8** @jiffies, align 8
  %39 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %40 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %39, i32 0, i32 25
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* @HZ, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %41, i64 %43
  %45 = call i64 @time_after(i8* %38, i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %37
  %48 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %49 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %637, label %52

52:                                               ; preds = %47, %37
  %53 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %54 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @HAS_VID, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %61 = load i64, i64* @DME1737_REG_VID, align 8
  %62 = call i32 @dme1737_read(%struct.dme1737_data* %60, i64 %61)
  %63 = and i32 %62, 63
  %64 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %65 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %59, %52
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %117, %66
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %70 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @ARRAY_SIZE(i32* %71)
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %120

74:                                               ; preds = %67
  %75 = load i32, i32* %4, align 4
  %76 = icmp eq i32 %75, 7
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %79 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @HAS_IN7, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %77
  br label %117

85:                                               ; preds = %77, %74
  %86 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i64 @DME1737_REG_IN(i32 %87)
  %89 = call i32 @dme1737_read(%struct.dme1737_data* %86, i64 %88)
  %90 = shl i32 %89, 8
  %91 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %92 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %90, i32* %96, align 4
  %97 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i64 @DME1737_REG_IN_MIN(i32 %98)
  %100 = call i32 @dme1737_read(%struct.dme1737_data* %97, i64 %99)
  %101 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %102 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %100, i32* %106, align 4
  %107 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %108 = load i32, i32* %4, align 4
  %109 = call i64 @DME1737_REG_IN_MAX(i32 %108)
  %110 = call i32 @dme1737_read(%struct.dme1737_data* %107, i64 %109)
  %111 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %112 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %111, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %110, i32* %116, align 4
  br label %117

117:                                              ; preds = %85, %84
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %67

120:                                              ; preds = %67
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %178, %120
  %122 = load i32, i32* %4, align 4
  %123 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %124 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %123, i32 0, i32 6
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @ARRAY_SIZE(i32* %125)
  %127 = icmp slt i32 %122, %126
  br i1 %127, label %128, label %181

128:                                              ; preds = %121
  %129 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %130 = load i32, i32* %4, align 4
  %131 = call i64 @DME1737_REG_TEMP(i32 %130)
  %132 = call i32 @dme1737_read(%struct.dme1737_data* %129, i64 %131)
  %133 = shl i32 %132, 8
  %134 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %135 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %134, i32 0, i32 6
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %4, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %133, i32* %139, align 4
  %140 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %141 = load i32, i32* %4, align 4
  %142 = call i64 @DME1737_REG_TEMP_MIN(i32 %141)
  %143 = call i32 @dme1737_read(%struct.dme1737_data* %140, i64 %142)
  %144 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %145 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %144, i32 0, i32 7
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %4, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %143, i32* %149, align 4
  %150 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %151 = load i32, i32* %4, align 4
  %152 = call i64 @DME1737_REG_TEMP_MAX(i32 %151)
  %153 = call i32 @dme1737_read(%struct.dme1737_data* %150, i64 %152)
  %154 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %155 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %154, i32 0, i32 8
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %153, i32* %159, align 4
  %160 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %161 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @HAS_TEMP_OFFSET, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %128
  %167 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %168 = load i32, i32* %4, align 4
  %169 = call i64 @DME1737_REG_TEMP_OFFSET(i32 %168)
  %170 = call i32 @dme1737_read(%struct.dme1737_data* %167, i64 %169)
  %171 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %172 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %171, i32 0, i32 9
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %4, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %170, i32* %176, align 4
  br label %177

177:                                              ; preds = %166, %128
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %4, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %4, align 4
  br label %121

181:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %182

182:                                              ; preds = %206, %181
  %183 = load i32, i32* %4, align 4
  %184 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %185 = call i32 @ARRAY_SIZE(i32* %184)
  %186 = icmp slt i32 %183, %185
  br i1 %186, label %187, label %209

187:                                              ; preds = %182
  %188 = load i32, i32* %4, align 4
  %189 = icmp eq i32 %188, 5
  br i1 %189, label %190, label %198

190:                                              ; preds = %187
  %191 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %192 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @HAS_IN7, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %190
  br label %206

198:                                              ; preds = %190, %187
  %199 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %200 = load i32, i32* %4, align 4
  %201 = call i64 @DME1737_REG_IN_TEMP_LSB(i32 %200)
  %202 = call i32 @dme1737_read(%struct.dme1737_data* %199, i64 %201)
  %203 = load i32, i32* %4, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 %204
  store i32 %202, i32* %205, align 4
  br label %206

206:                                              ; preds = %198, %197
  %207 = load i32, i32* %4, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %4, align 4
  br label %182

209:                                              ; preds = %182
  store i32 0, i32* %4, align 4
  br label %210

210:                                              ; preds = %251, %209
  %211 = load i32, i32* %4, align 4
  %212 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %213 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %212, i32 0, i32 3
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 @ARRAY_SIZE(i32* %214)
  %216 = icmp slt i32 %211, %215
  br i1 %216, label %217, label %254

217:                                              ; preds = %210
  %218 = load i32, i32* %4, align 4
  %219 = icmp eq i32 %218, 7
  br i1 %219, label %220, label %228

220:                                              ; preds = %217
  %221 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %222 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @HAS_IN7, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %220
  br label %251

228:                                              ; preds = %220, %217
  %229 = load i64*, i64** @DME1737_REG_IN_LSB, align 8
  %230 = load i32, i32* %4, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i64, i64* %229, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load i32*, i32** @DME1737_REG_IN_LSB_SHL, align 8
  %237 = load i32, i32* %4, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = shl i32 %235, %240
  %242 = and i32 %241, 240
  %243 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %244 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %243, i32 0, i32 3
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %4, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %249, %242
  store i32 %250, i32* %248, align 4
  br label %251

251:                                              ; preds = %228, %227
  %252 = load i32, i32* %4, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %4, align 4
  br label %210

254:                                              ; preds = %210
  store i32 0, i32* %4, align 4
  br label %255

255:                                              ; preds = %285, %254
  %256 = load i32, i32* %4, align 4
  %257 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %258 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %257, i32 0, i32 6
  %259 = load i32*, i32** %258, align 8
  %260 = call i32 @ARRAY_SIZE(i32* %259)
  %261 = icmp slt i32 %256, %260
  br i1 %261, label %262, label %288

262:                                              ; preds = %255
  %263 = load i64*, i64** @DME1737_REG_TEMP_LSB, align 8
  %264 = load i32, i32* %4, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i64, i64* %263, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load i32*, i32** @DME1737_REG_TEMP_LSB_SHL, align 8
  %271 = load i32, i32* %4, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = shl i32 %269, %274
  %276 = and i32 %275, 240
  %277 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %278 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %277, i32 0, i32 6
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %4, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = or i32 %283, %276
  store i32 %284, i32* %282, align 4
  br label %285

285:                                              ; preds = %262
  %286 = load i32, i32* %4, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %4, align 4
  br label %255

288:                                              ; preds = %255
  store i32 0, i32* %4, align 4
  br label %289

289:                                              ; preds = %379, %288
  %290 = load i32, i32* %4, align 4
  %291 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %292 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %291, i32 0, i32 10
  %293 = load i32*, i32** %292, align 8
  %294 = call i32 @ARRAY_SIZE(i32* %293)
  %295 = icmp slt i32 %290, %294
  br i1 %295, label %296, label %382

296:                                              ; preds = %289
  %297 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %298 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* %4, align 4
  %301 = call i32 @HAS_FAN(i32 %300)
  %302 = and i32 %299, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %296
  br label %379

305:                                              ; preds = %296
  %306 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %307 = load i32, i32* %4, align 4
  %308 = call i64 @DME1737_REG_FAN(i32 %307)
  %309 = call i32 @dme1737_read(%struct.dme1737_data* %306, i64 %308)
  %310 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %311 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %310, i32 0, i32 10
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %4, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  store i32 %309, i32* %315, align 4
  %316 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %317 = load i32, i32* %4, align 4
  %318 = call i64 @DME1737_REG_FAN(i32 %317)
  %319 = add nsw i64 %318, 1
  %320 = call i32 @dme1737_read(%struct.dme1737_data* %316, i64 %319)
  %321 = shl i32 %320, 8
  %322 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %323 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %322, i32 0, i32 10
  %324 = load i32*, i32** %323, align 8
  %325 = load i32, i32* %4, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = or i32 %328, %321
  store i32 %329, i32* %327, align 4
  %330 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %331 = load i32, i32* %4, align 4
  %332 = call i64 @DME1737_REG_FAN_MIN(i32 %331)
  %333 = call i32 @dme1737_read(%struct.dme1737_data* %330, i64 %332)
  %334 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %335 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %334, i32 0, i32 11
  %336 = load i32*, i32** %335, align 8
  %337 = load i32, i32* %4, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  store i32 %333, i32* %339, align 4
  %340 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %341 = load i32, i32* %4, align 4
  %342 = call i64 @DME1737_REG_FAN_MIN(i32 %341)
  %343 = add nsw i64 %342, 1
  %344 = call i32 @dme1737_read(%struct.dme1737_data* %340, i64 %343)
  %345 = shl i32 %344, 8
  %346 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %347 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %346, i32 0, i32 11
  %348 = load i32*, i32** %347, align 8
  %349 = load i32, i32* %4, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = or i32 %352, %345
  store i32 %353, i32* %351, align 4
  %354 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %355 = load i32, i32* %4, align 4
  %356 = call i64 @DME1737_REG_FAN_OPT(i32 %355)
  %357 = call i32 @dme1737_read(%struct.dme1737_data* %354, i64 %356)
  %358 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %359 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %358, i32 0, i32 12
  %360 = load i32*, i32** %359, align 8
  %361 = load i32, i32* %4, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %360, i64 %362
  store i32 %357, i32* %363, align 4
  %364 = load i32, i32* %4, align 4
  %365 = icmp sgt i32 %364, 3
  br i1 %365, label %366, label %378

366:                                              ; preds = %305
  %367 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %368 = load i32, i32* %4, align 4
  %369 = call i64 @DME1737_REG_FAN_MAX(i32 %368)
  %370 = call i32 @dme1737_read(%struct.dme1737_data* %367, i64 %369)
  %371 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %372 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %371, i32 0, i32 13
  %373 = load i32*, i32** %372, align 8
  %374 = load i32, i32* %4, align 4
  %375 = sub nsw i32 %374, 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %373, i64 %376
  store i32 %370, i32* %377, align 4
  br label %378

378:                                              ; preds = %366, %305
  br label %379

379:                                              ; preds = %378, %304
  %380 = load i32, i32* %4, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %4, align 4
  br label %289

382:                                              ; preds = %289
  store i32 0, i32* %4, align 4
  br label %383

383:                                              ; preds = %444, %382
  %384 = load i32, i32* %4, align 4
  %385 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %386 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %385, i32 0, i32 14
  %387 = load i32*, i32** %386, align 8
  %388 = call i32 @ARRAY_SIZE(i32* %387)
  %389 = icmp slt i32 %384, %388
  br i1 %389, label %390, label %447

390:                                              ; preds = %383
  %391 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %392 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = load i32, i32* %4, align 4
  %395 = call i32 @HAS_PWM(i32 %394)
  %396 = and i32 %393, %395
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %399, label %398

398:                                              ; preds = %390
  br label %444

399:                                              ; preds = %390
  %400 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %401 = load i32, i32* %4, align 4
  %402 = call i64 @DME1737_REG_PWM(i32 %401)
  %403 = call i32 @dme1737_read(%struct.dme1737_data* %400, i64 %402)
  %404 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %405 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %404, i32 0, i32 14
  %406 = load i32*, i32** %405, align 8
  %407 = load i32, i32* %4, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %406, i64 %408
  store i32 %403, i32* %409, align 4
  %410 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %411 = load i32, i32* %4, align 4
  %412 = call i64 @DME1737_REG_PWM_FREQ(i32 %411)
  %413 = call i32 @dme1737_read(%struct.dme1737_data* %410, i64 %412)
  %414 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %415 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %414, i32 0, i32 15
  %416 = load i32*, i32** %415, align 8
  %417 = load i32, i32* %4, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %416, i64 %418
  store i32 %413, i32* %419, align 4
  %420 = load i32, i32* %4, align 4
  %421 = icmp slt i32 %420, 3
  br i1 %421, label %422, label %443

422:                                              ; preds = %399
  %423 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %424 = load i32, i32* %4, align 4
  %425 = call i64 @DME1737_REG_PWM_CONFIG(i32 %424)
  %426 = call i32 @dme1737_read(%struct.dme1737_data* %423, i64 %425)
  %427 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %428 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %427, i32 0, i32 16
  %429 = load i32*, i32** %428, align 8
  %430 = load i32, i32* %4, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32, i32* %429, i64 %431
  store i32 %426, i32* %432, align 4
  %433 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %434 = load i32, i32* %4, align 4
  %435 = call i64 @DME1737_REG_PWM_MIN(i32 %434)
  %436 = call i32 @dme1737_read(%struct.dme1737_data* %433, i64 %435)
  %437 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %438 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %437, i32 0, i32 17
  %439 = load i32*, i32** %438, align 8
  %440 = load i32, i32* %4, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %439, i64 %441
  store i32 %436, i32* %442, align 4
  br label %443

443:                                              ; preds = %422, %399
  br label %444

444:                                              ; preds = %443, %398
  %445 = load i32, i32* %4, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %4, align 4
  br label %383

447:                                              ; preds = %383
  store i32 0, i32* %4, align 4
  br label %448

448:                                              ; preds = %466, %447
  %449 = load i32, i32* %4, align 4
  %450 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %451 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %450, i32 0, i32 18
  %452 = load i32*, i32** %451, align 8
  %453 = call i32 @ARRAY_SIZE(i32* %452)
  %454 = icmp slt i32 %449, %453
  br i1 %454, label %455, label %469

455:                                              ; preds = %448
  %456 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %457 = load i32, i32* %4, align 4
  %458 = call i64 @DME1737_REG_PWM_RR(i32 %457)
  %459 = call i32 @dme1737_read(%struct.dme1737_data* %456, i64 %458)
  %460 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %461 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %460, i32 0, i32 18
  %462 = load i32*, i32** %461, align 8
  %463 = load i32, i32* %4, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i32, i32* %462, i64 %464
  store i32 %459, i32* %465, align 4
  br label %466

466:                                              ; preds = %455
  %467 = load i32, i32* %4, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %4, align 4
  br label %448

469:                                              ; preds = %448
  store i32 0, i32* %4, align 4
  br label %470

470:                                              ; preds = %534, %469
  %471 = load i32, i32* %4, align 4
  %472 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %473 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %472, i32 0, i32 19
  %474 = load i32*, i32** %473, align 8
  %475 = call i32 @ARRAY_SIZE(i32* %474)
  %476 = icmp slt i32 %471, %475
  br i1 %476, label %477, label %537

477:                                              ; preds = %470
  %478 = load i32, i32* %4, align 4
  %479 = icmp eq i32 %478, 2
  br i1 %479, label %480, label %488

480:                                              ; preds = %477
  %481 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %482 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %481, i32 0, i32 1
  %483 = load i32, i32* %482, align 4
  %484 = load i32, i32* @HAS_ZONE3, align 4
  %485 = and i32 %483, %484
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %488, label %487

487:                                              ; preds = %480
  br label %534

488:                                              ; preds = %480, %477
  %489 = load i32, i32* %4, align 4
  %490 = icmp eq i32 %489, 1
  br i1 %490, label %491, label %512

491:                                              ; preds = %488
  %492 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %493 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %492, i32 0, i32 20
  %494 = load i64, i64* %493, align 8
  %495 = load i64, i64* @sch5127, align 8
  %496 = icmp eq i64 %494, %495
  br i1 %496, label %497, label %512

497:                                              ; preds = %491
  %498 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %499 = call i64 @DME1737_REG_ZONE_LOW(i32 2)
  %500 = call i32 @dme1737_read(%struct.dme1737_data* %498, i64 %499)
  %501 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %502 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %501, i32 0, i32 19
  %503 = load i32*, i32** %502, align 8
  %504 = getelementptr inbounds i32, i32* %503, i64 1
  store i32 %500, i32* %504, align 4
  %505 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %506 = call i64 @DME1737_REG_ZONE_ABS(i32 2)
  %507 = call i32 @dme1737_read(%struct.dme1737_data* %505, i64 %506)
  %508 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %509 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %508, i32 0, i32 21
  %510 = load i32*, i32** %509, align 8
  %511 = getelementptr inbounds i32, i32* %510, i64 1
  store i32 %507, i32* %511, align 4
  br label %533

512:                                              ; preds = %491, %488
  %513 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %514 = load i32, i32* %4, align 4
  %515 = call i64 @DME1737_REG_ZONE_LOW(i32 %514)
  %516 = call i32 @dme1737_read(%struct.dme1737_data* %513, i64 %515)
  %517 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %518 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %517, i32 0, i32 19
  %519 = load i32*, i32** %518, align 8
  %520 = load i32, i32* %4, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds i32, i32* %519, i64 %521
  store i32 %516, i32* %522, align 4
  %523 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %524 = load i32, i32* %4, align 4
  %525 = call i64 @DME1737_REG_ZONE_ABS(i32 %524)
  %526 = call i32 @dme1737_read(%struct.dme1737_data* %523, i64 %525)
  %527 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %528 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %527, i32 0, i32 21
  %529 = load i32*, i32** %528, align 8
  %530 = load i32, i32* %4, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i32, i32* %529, i64 %531
  store i32 %526, i32* %532, align 4
  br label %533

533:                                              ; preds = %512, %497
  br label %534

534:                                              ; preds = %533, %487
  %535 = load i32, i32* %4, align 4
  %536 = add nsw i32 %535, 1
  store i32 %536, i32* %4, align 4
  br label %470

537:                                              ; preds = %470
  %538 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %539 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %538, i32 0, i32 1
  %540 = load i32, i32* %539, align 4
  %541 = load i32, i32* @HAS_ZONE_HYST, align 4
  %542 = and i32 %540, %541
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %544, label %567

544:                                              ; preds = %537
  store i32 0, i32* %4, align 4
  br label %545

545:                                              ; preds = %563, %544
  %546 = load i32, i32* %4, align 4
  %547 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %548 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %547, i32 0, i32 22
  %549 = load i32*, i32** %548, align 8
  %550 = call i32 @ARRAY_SIZE(i32* %549)
  %551 = icmp slt i32 %546, %550
  br i1 %551, label %552, label %566

552:                                              ; preds = %545
  %553 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %554 = load i32, i32* %4, align 4
  %555 = call i64 @DME1737_REG_ZONE_HYST(i32 %554)
  %556 = call i32 @dme1737_read(%struct.dme1737_data* %553, i64 %555)
  %557 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %558 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %557, i32 0, i32 22
  %559 = load i32*, i32** %558, align 8
  %560 = load i32, i32* %4, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i32, i32* %559, i64 %561
  store i32 %556, i32* %562, align 4
  br label %563

563:                                              ; preds = %552
  %564 = load i32, i32* %4, align 4
  %565 = add nsw i32 %564, 1
  store i32 %565, i32* %4, align 4
  br label %545

566:                                              ; preds = %545
  br label %567

567:                                              ; preds = %566, %537
  %568 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %569 = load i64, i64* @DME1737_REG_ALARM1, align 8
  %570 = call i32 @dme1737_read(%struct.dme1737_data* %568, i64 %569)
  %571 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %572 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %571, i32 0, i32 23
  store i32 %570, i32* %572, align 8
  %573 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %574 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %573, i32 0, i32 23
  %575 = load i32, i32* %574, align 8
  %576 = and i32 %575, 128
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %595

578:                                              ; preds = %567
  %579 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %580 = load i64, i64* @DME1737_REG_ALARM2, align 8
  %581 = call i32 @dme1737_read(%struct.dme1737_data* %579, i64 %580)
  %582 = shl i32 %581, 8
  %583 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %584 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %583, i32 0, i32 23
  %585 = load i32, i32* %584, align 8
  %586 = or i32 %585, %582
  store i32 %586, i32* %584, align 8
  %587 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %588 = load i64, i64* @DME1737_REG_ALARM3, align 8
  %589 = call i32 @dme1737_read(%struct.dme1737_data* %587, i64 %588)
  %590 = shl i32 %589, 16
  %591 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %592 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %591, i32 0, i32 23
  %593 = load i32, i32* %592, align 8
  %594 = or i32 %593, %590
  store i32 %594, i32* %592, align 8
  br label %595

595:                                              ; preds = %578, %567
  %596 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %597 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %596, i32 0, i32 26
  %598 = load i32, i32* %597, align 8
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %631, label %600

600:                                              ; preds = %595
  %601 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %602 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %601, i32 0, i32 23
  %603 = load i32, i32* %602, align 8
  %604 = and i32 %603, 16711680
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %610

606:                                              ; preds = %600
  %607 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %608 = load i64, i64* @DME1737_REG_ALARM3, align 8
  %609 = call i32 @dme1737_write(%struct.dme1737_data* %607, i64 %608, i32 255)
  br label %610

610:                                              ; preds = %606, %600
  %611 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %612 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %611, i32 0, i32 23
  %613 = load i32, i32* %612, align 8
  %614 = and i32 %613, 65280
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %616, label %620

616:                                              ; preds = %610
  %617 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %618 = load i64, i64* @DME1737_REG_ALARM2, align 8
  %619 = call i32 @dme1737_write(%struct.dme1737_data* %617, i64 %618, i32 255)
  br label %620

620:                                              ; preds = %616, %610
  %621 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %622 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %621, i32 0, i32 23
  %623 = load i32, i32* %622, align 8
  %624 = and i32 %623, 255
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %626, label %630

626:                                              ; preds = %620
  %627 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %628 = load i64, i64* @DME1737_REG_ALARM1, align 8
  %629 = call i32 @dme1737_write(%struct.dme1737_data* %627, i64 %628, i32 255)
  br label %630

630:                                              ; preds = %626, %620
  br label %631

631:                                              ; preds = %630, %595
  %632 = load i8*, i8** @jiffies, align 8
  %633 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %634 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %633, i32 0, i32 25
  store i8* %632, i8** %634, align 8
  %635 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %636 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %635, i32 0, i32 0
  store i32 1, i32* %636, align 8
  br label %637

637:                                              ; preds = %631, %47
  %638 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %639 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %638, i32 0, i32 24
  %640 = call i32 @mutex_unlock(i32* %639)
  %641 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  ret %struct.dme1737_data* %641
}

declare dso_local %struct.dme1737_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i8*, i8*) #1

declare dso_local i32 @dme1737_write(%struct.dme1737_data*, i64, i32) #1

declare dso_local i32 @dme1737_read(%struct.dme1737_data*, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @DME1737_REG_IN(i32) #1

declare dso_local i64 @DME1737_REG_IN_MIN(i32) #1

declare dso_local i64 @DME1737_REG_IN_MAX(i32) #1

declare dso_local i64 @DME1737_REG_TEMP(i32) #1

declare dso_local i64 @DME1737_REG_TEMP_MIN(i32) #1

declare dso_local i64 @DME1737_REG_TEMP_MAX(i32) #1

declare dso_local i64 @DME1737_REG_TEMP_OFFSET(i32) #1

declare dso_local i64 @DME1737_REG_IN_TEMP_LSB(i32) #1

declare dso_local i32 @HAS_FAN(i32) #1

declare dso_local i64 @DME1737_REG_FAN(i32) #1

declare dso_local i64 @DME1737_REG_FAN_MIN(i32) #1

declare dso_local i64 @DME1737_REG_FAN_OPT(i32) #1

declare dso_local i64 @DME1737_REG_FAN_MAX(i32) #1

declare dso_local i32 @HAS_PWM(i32) #1

declare dso_local i64 @DME1737_REG_PWM(i32) #1

declare dso_local i64 @DME1737_REG_PWM_FREQ(i32) #1

declare dso_local i64 @DME1737_REG_PWM_CONFIG(i32) #1

declare dso_local i64 @DME1737_REG_PWM_MIN(i32) #1

declare dso_local i64 @DME1737_REG_PWM_RR(i32) #1

declare dso_local i64 @DME1737_REG_ZONE_LOW(i32) #1

declare dso_local i64 @DME1737_REG_ZONE_ABS(i32) #1

declare dso_local i64 @DME1737_REG_ZONE_HYST(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
