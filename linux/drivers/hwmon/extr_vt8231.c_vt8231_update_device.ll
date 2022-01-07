; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt8231.c_vt8231_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt8231.c_vt8231_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt8231_data = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i64, i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@regvolt = common dso_local global i32* null, align 8
@regvoltmin = common dso_local global i32* null, align 8
@regvoltmax = common dso_local global i32* null, align 8
@VT8231_REG_TEMP_LOW01 = common dso_local global i32 0, align 4
@VT8231_REG_TEMP_LOW25 = common dso_local global i32 0, align 4
@regtemp = common dso_local global i32* null, align 8
@regtempmax = common dso_local global i32* null, align 8
@regtempmin = common dso_local global i32* null, align 8
@VT8231_REG_FANDIV = common dso_local global i32 0, align 4
@VT8231_REG_ALARM1 = common dso_local global i32 0, align 4
@VT8231_REG_ALARM2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vt8231_data* (%struct.device*)* @vt8231_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vt8231_data* @vt8231_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.vt8231_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.vt8231_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.vt8231_data* %7, %struct.vt8231_data** %3, align 8
  %8 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %9 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %8, i32 0, i32 11
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load i64, i64* @jiffies, align 8
  %12 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %13 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %12, i32 0, i32 12
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @HZ, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = load i32, i32* @HZ, align 4
  %19 = sdiv i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = call i64 @time_after(i64 %11, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %26 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %298, label %29

29:                                               ; preds = %24, %1
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %81, %29
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 6
  br i1 %32, label %33, label %84

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %36 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %35, i32 0, i32 13
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @ISVOLT(i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %80

40:                                               ; preds = %33
  %41 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %42 = load i32*, i32** @regvolt, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @vt8231_read_value(%struct.vt8231_data* %41, i32 %46)
  %48 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %49 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %47, i32* %53, align 4
  %54 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %55 = load i32*, i32** @regvoltmin, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @vt8231_read_value(%struct.vt8231_data* %54, i32 %59)
  %61 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %62 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  %67 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %68 = load i32*, i32** @regvoltmax, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @vt8231_read_value(%struct.vt8231_data* %67, i32 %72)
  %74 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %75 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %73, i32* %79, align 4
  br label %80

80:                                               ; preds = %40, %33
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %30

84:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %109, %84
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %86, 2
  br i1 %87, label %88, label %112

88:                                               ; preds = %85
  %89 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @VT8231_REG_FAN(i32 %90)
  %92 = call i32 @vt8231_read_value(%struct.vt8231_data* %89, i32 %91)
  %93 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %94 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %92, i32* %98, align 4
  %99 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @VT8231_REG_FAN_MIN(i32 %100)
  %102 = call i32 @vt8231_read_value(%struct.vt8231_data* %99, i32 %101)
  %103 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %104 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %103, i32 0, i32 5
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %102, i32* %108, align 4
  br label %109

109:                                              ; preds = %88
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %4, align 4
  br label %85

112:                                              ; preds = %85
  %113 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %114 = load i32, i32* @VT8231_REG_TEMP_LOW01, align 4
  %115 = call i32 @vt8231_read_value(%struct.vt8231_data* %113, i32 %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = ashr i32 %116, 6
  %118 = load i32, i32* %5, align 4
  %119 = and i32 %118, 48
  %120 = ashr i32 %119, 2
  %121 = or i32 %117, %120
  %122 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %123 = load i32, i32* @VT8231_REG_TEMP_LOW25, align 4
  %124 = call i32 @vt8231_read_value(%struct.vt8231_data* %122, i32 %123)
  %125 = shl i32 %124, 4
  %126 = or i32 %121, %125
  store i32 %126, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %185, %112
  %128 = load i32, i32* %4, align 4
  %129 = icmp slt i32 %128, 6
  br i1 %129, label %130, label %188

130:                                              ; preds = %127
  %131 = load i32, i32* %4, align 4
  %132 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %133 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %132, i32 0, i32 13
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @ISTEMP(i32 %131, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %184

137:                                              ; preds = %130
  %138 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %139 = load i32*, i32** @regtemp, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @vt8231_read_value(%struct.vt8231_data* %138, i32 %143)
  %145 = shl i32 %144, 2
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %4, align 4
  %148 = mul nsw i32 2, %147
  %149 = ashr i32 %146, %148
  %150 = and i32 %149, 3
  %151 = or i32 %145, %150
  %152 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %153 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %152, i32 0, i32 6
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %4, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %151, i32* %157, align 4
  %158 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %159 = load i32*, i32** @regtempmax, align 8
  %160 = load i32, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @vt8231_read_value(%struct.vt8231_data* %158, i32 %163)
  %165 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %166 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %165, i32 0, i32 7
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 %164, i32* %170, align 4
  %171 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %172 = load i32*, i32** @regtempmin, align 8
  %173 = load i32, i32* %4, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @vt8231_read_value(%struct.vt8231_data* %171, i32 %176)
  %178 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %179 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %178, i32 0, i32 8
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %4, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 %177, i32* %183, align 4
  br label %184

184:                                              ; preds = %137, %130
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %4, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %4, align 4
  br label %127

188:                                              ; preds = %127
  %189 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %190 = load i32, i32* @VT8231_REG_FANDIV, align 4
  %191 = call i32 @vt8231_read_value(%struct.vt8231_data* %189, i32 %190)
  store i32 %191, i32* %4, align 4
  %192 = load i32, i32* %4, align 4
  %193 = ashr i32 %192, 4
  %194 = and i32 %193, 3
  %195 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %196 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %195, i32 0, i32 9
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  store i32 %194, i32* %198, align 4
  %199 = load i32, i32* %4, align 4
  %200 = ashr i32 %199, 6
  %201 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %202 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %201, i32 0, i32 9
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  store i32 %200, i32* %204, align 4
  %205 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %206 = load i32, i32* @VT8231_REG_ALARM1, align 4
  %207 = call i32 @vt8231_read_value(%struct.vt8231_data* %205, i32 %206)
  %208 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %209 = load i32, i32* @VT8231_REG_ALARM2, align 4
  %210 = call i32 @vt8231_read_value(%struct.vt8231_data* %208, i32 %209)
  %211 = shl i32 %210, 8
  %212 = or i32 %207, %211
  %213 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %214 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %213, i32 0, i32 10
  store i32 %212, i32* %214, align 8
  %215 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %216 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %215, i32 0, i32 4
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %233, label %221

221:                                              ; preds = %188
  %222 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %223 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %222, i32 0, i32 5
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %221
  %229 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %230 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %229, i32 0, i32 10
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, 64
  store i32 %232, i32* %230, align 8
  br label %253

233:                                              ; preds = %221, %188
  %234 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %235 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %234, i32 0, i32 4
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %252

240:                                              ; preds = %233
  %241 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %242 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %241, i32 0, i32 5
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %252, label %247

247:                                              ; preds = %240
  %248 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %249 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %248, i32 0, i32 10
  %250 = load i32, i32* %249, align 8
  %251 = and i32 %250, -65
  store i32 %251, i32* %249, align 8
  br label %252

252:                                              ; preds = %247, %240, %233
  br label %253

253:                                              ; preds = %252, %228
  %254 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %255 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %254, i32 0, i32 4
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 1
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %272, label %260

260:                                              ; preds = %253
  %261 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %262 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %261, i32 0, i32 5
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 1
  %265 = load i32, i32* %264, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %260
  %268 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %269 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %268, i32 0, i32 10
  %270 = load i32, i32* %269, align 8
  %271 = or i32 %270, 128
  store i32 %271, i32* %269, align 8
  br label %292

272:                                              ; preds = %260, %253
  %273 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %274 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %273, i32 0, i32 4
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 1
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %291

279:                                              ; preds = %272
  %280 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %281 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %280, i32 0, i32 5
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 1
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %291, label %286

286:                                              ; preds = %279
  %287 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %288 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %287, i32 0, i32 10
  %289 = load i32, i32* %288, align 8
  %290 = and i32 %289, -129
  store i32 %290, i32* %288, align 8
  br label %291

291:                                              ; preds = %286, %279, %272
  br label %292

292:                                              ; preds = %291, %267
  %293 = load i64, i64* @jiffies, align 8
  %294 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %295 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %294, i32 0, i32 12
  store i64 %293, i64* %295, align 8
  %296 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %297 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %296, i32 0, i32 0
  store i32 1, i32* %297, align 8
  br label %298

298:                                              ; preds = %292, %24
  %299 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %300 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %299, i32 0, i32 11
  %301 = call i32 @mutex_unlock(i32* %300)
  %302 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  ret %struct.vt8231_data* %302
}

declare dso_local %struct.vt8231_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @ISVOLT(i32, i32) #1

declare dso_local i32 @vt8231_read_value(%struct.vt8231_data*, i32) #1

declare dso_local i32 @VT8231_REG_FAN(i32) #1

declare dso_local i32 @VT8231_REG_FAN_MIN(i32) #1

declare dso_local i64 @ISTEMP(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
