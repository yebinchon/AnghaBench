; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_update_pwm_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_update_pwm_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nct6775_data = type { i32, i32, i32**, i32*, i64*, i32, i32*, i32, i32**, i32**, i32, i32, i32*, i32*, i32*, i32*, i32*, i32** }

@thermal_cruise = common dso_local global i64 0, align 8
@speed_cruise = common dso_local global i64 0, align 8
@NCT6775_REG_CRITICAL_ENAB = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @nct6775_update_pwm_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nct6775_update_pwm_limits(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.nct6775_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.nct6775_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.nct6775_data* %9, %struct.nct6775_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %294, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %13 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %297

16:                                               ; preds = %10
  %17 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %18 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %294

25:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %57, %25
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %29 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %28, i32 0, i32 2
  %30 = load i32**, i32*** %29, align 8
  %31 = call i32 @ARRAY_SIZE(i32** %30)
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %26
  %34 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %35 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %36 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %35, i32 0, i32 17
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @nct6775_read_value(%struct.nct6775_data* %34, i32 %45)
  %47 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %48 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %47, i32 0, i32 2
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %46, i32* %56, align 4
  br label %57

57:                                               ; preds = %33
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %26

60:                                               ; preds = %26
  %61 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %62 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %63 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %62, i32 0, i32 16
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @nct6775_read_value(%struct.nct6775_data* %61, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %71 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %60
  %79 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %80 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %79, i32 0, i32 4
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @thermal_cruise, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %78, %60
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %91 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %89, %92
  %94 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %95 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  br label %100

100:                                              ; preds = %88, %78
  %101 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %102 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %101, i32 0, i32 6
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %100
  %110 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %111 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %110, i32 0, i32 4
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @speed_cruise, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %146

119:                                              ; preds = %109, %100
  %120 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %121 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %120, i32 0, i32 15
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %138

124:                                              ; preds = %119
  %125 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %126 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %127 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %126, i32 0, i32 15
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @nct6775_read_value(%struct.nct6775_data* %125, i32 %132)
  %134 = and i32 %133, 15
  %135 = shl i32 %134, 8
  %136 = load i32, i32* %7, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %124, %119
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %141 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %140, i32 0, i32 6
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %139, i32* %145, align 4
  br label %146

146:                                              ; preds = %138, %109
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %186, %146
  %148 = load i32, i32* %5, align 4
  %149 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %150 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 8
  %152 = icmp slt i32 %148, %151
  br i1 %152, label %153, label %189

153:                                              ; preds = %147
  %154 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %155 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @NCT6775_AUTO_PWM(%struct.nct6775_data* %155, i32 %156, i32 %157)
  %159 = call i32 @nct6775_read_value(%struct.nct6775_data* %154, i32 %158)
  %160 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %161 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %160, i32 0, i32 8
  %162 = load i32**, i32*** %161, align 8
  %163 = load i32, i32* %4, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32*, i32** %162, i64 %164
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  store i32 %159, i32* %169, align 4
  %170 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %171 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %172 = load i32, i32* %4, align 4
  %173 = load i32, i32* %5, align 4
  %174 = call i32 @NCT6775_AUTO_TEMP(%struct.nct6775_data* %171, i32 %172, i32 %173)
  %175 = call i32 @nct6775_read_value(%struct.nct6775_data* %170, i32 %174)
  %176 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %177 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %176, i32 0, i32 9
  %178 = load i32**, i32*** %177, align 8
  %179 = load i32, i32* %4, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32*, i32** %178, i64 %180
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %175, i32* %185, align 4
  br label %186

186:                                              ; preds = %153
  %187 = load i32, i32* %5, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %5, align 4
  br label %147

189:                                              ; preds = %147
  %190 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %191 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %192 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %191, i32 0, i32 14
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %4, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @nct6775_read_value(%struct.nct6775_data* %190, i32 %197)
  %199 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %200 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %199, i32 0, i32 9
  %201 = load i32**, i32*** %200, align 8
  %202 = load i32, i32* %4, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %201, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %207 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %206, i32 0, i32 7
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %205, i64 %209
  store i32 %198, i32* %210, align 4
  %211 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %212 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %211, i32 0, i32 10
  %213 = load i32, i32* %212, align 8
  switch i32 %213, label %293 [
    i32 137, label %214
    i32 136, label %239
    i32 139, label %252
    i32 138, label %252
    i32 135, label %252
    i32 134, label %252
    i32 133, label %252
    i32 132, label %252
    i32 131, label %252
    i32 130, label %252
    i32 129, label %252
    i32 128, label %252
  ]

214:                                              ; preds = %189
  %215 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %216 = load i32*, i32** @NCT6775_REG_CRITICAL_ENAB, align 8
  %217 = load i32, i32* %4, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @nct6775_read_value(%struct.nct6775_data* %215, i32 %220)
  store i32 %221, i32* %6, align 4
  %222 = load i32, i32* %6, align 4
  %223 = and i32 %222, 2
  %224 = icmp ne i32 %223, 0
  %225 = zext i1 %224 to i64
  %226 = select i1 %224, i32 255, i32 0
  %227 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %228 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %227, i32 0, i32 8
  %229 = load i32**, i32*** %228, align 8
  %230 = load i32, i32* %4, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32*, i32** %229, i64 %231
  %233 = load i32*, i32** %232, align 8
  %234 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %235 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %234, i32 0, i32 7
  %236 = load i32, i32* %235, align 8
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %233, i64 %237
  store i32 %226, i32* %238, align 4
  br label %293

239:                                              ; preds = %189
  %240 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %241 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %240, i32 0, i32 8
  %242 = load i32**, i32*** %241, align 8
  %243 = load i32, i32* %4, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32*, i32** %242, i64 %244
  %246 = load i32*, i32** %245, align 8
  %247 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %248 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %247, i32 0, i32 7
  %249 = load i32, i32* %248, align 8
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %246, i64 %250
  store i32 255, i32* %251, align 4
  br label %293

252:                                              ; preds = %189, %189, %189, %189, %189, %189, %189, %189, %189, %189
  %253 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %254 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %255 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %254, i32 0, i32 13
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %4, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @nct6775_read_value(%struct.nct6775_data* %253, i32 %260)
  store i32 %261, i32* %6, align 4
  %262 = load i32, i32* %6, align 4
  %263 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %264 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %263, i32 0, i32 11
  %265 = load i32, i32* %264, align 4
  %266 = and i32 %262, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %278

268:                                              ; preds = %252
  %269 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %270 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %271 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %270, i32 0, i32 12
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %4, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @nct6775_read_value(%struct.nct6775_data* %269, i32 %276)
  store i32 %277, i32* %6, align 4
  br label %279

278:                                              ; preds = %252
  store i32 255, i32* %6, align 4
  br label %279

279:                                              ; preds = %278, %268
  %280 = load i32, i32* %6, align 4
  %281 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %282 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %281, i32 0, i32 8
  %283 = load i32**, i32*** %282, align 8
  %284 = load i32, i32* %4, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32*, i32** %283, i64 %285
  %287 = load i32*, i32** %286, align 8
  %288 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %289 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %288, i32 0, i32 7
  %290 = load i32, i32* %289, align 8
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %287, i64 %291
  store i32 %280, i32* %292, align 4
  br label %293

293:                                              ; preds = %189, %279, %239, %214
  br label %294

294:                                              ; preds = %293, %24
  %295 = load i32, i32* %4, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %4, align 4
  br label %10

297:                                              ; preds = %10
  ret void
}

declare dso_local %struct.nct6775_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @nct6775_read_value(%struct.nct6775_data*, i32) #1

declare dso_local i32 @NCT6775_AUTO_PWM(%struct.nct6775_data*, i32, i32) #1

declare dso_local i32 @NCT6775_AUTO_TEMP(%struct.nct6775_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
