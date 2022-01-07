; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95245.c_lm95245_read_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95245.c_lm95245_read_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.lm95245_data = type { %struct.regmap* }
%struct.regmap = type { i32 }

@LM95245_REG_R_REMOTE_TEMPL_S = common dso_local global i32 0, align 4
@LM95245_REG_R_LOCAL_TEMPL_S = common dso_local global i32 0, align 4
@LM95245_REG_R_REMOTE_TEMPH_S = common dso_local global i32 0, align 4
@LM95245_REG_R_LOCAL_TEMPH_S = common dso_local global i32 0, align 4
@LM95245_REG_R_REMOTE_TEMPL_U = common dso_local global i32 0, align 4
@LM95245_REG_R_REMOTE_TEMPH_U = common dso_local global i32 0, align 4
@LM95245_REG_RW_REMOTE_OS_LIMIT = common dso_local global i32 0, align 4
@LM95245_REG_RW_REMOTE_TCRIT_LIMIT = common dso_local global i32 0, align 4
@LM95245_REG_RW_LOCAL_OS_TCRIT_LIMIT = common dso_local global i32 0, align 4
@LM95245_REG_RW_COMMON_HYSTERESIS = common dso_local global i32 0, align 4
@LM95245_REG_RW_CONFIG2 = common dso_local global i32 0, align 4
@CFG2_REMOTE_TT = common dso_local global i32 0, align 4
@LM95245_REG_RW_REMOTE_OFFL = common dso_local global i32 0, align 4
@LM95245_REG_RW_REMOTE_OFFH = common dso_local global i32 0, align 4
@LM95245_REG_R_STATUS1 = common dso_local global i32 0, align 4
@STATUS1_ROS = common dso_local global i32 0, align 4
@STATUS1_RTCRIT = common dso_local global i32 0, align 4
@STATUS1_LOC = common dso_local global i32 0, align 4
@STATUS1_DIODE_FAULT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64*)* @lm95245_read_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm95245_read_temp(%struct.device* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.lm95245_data*, align 8
  %11 = alloca %struct.regmap*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.lm95245_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.lm95245_data* %18, %struct.lm95245_data** %10, align 8
  %19 = load %struct.lm95245_data*, %struct.lm95245_data** %10, align 8
  %20 = getelementptr inbounds %struct.lm95245_data, %struct.lm95245_data* %19, i32 0, i32 0
  %21 = load %struct.regmap*, %struct.regmap** %20, align 8
  store %struct.regmap* %21, %struct.regmap** %11, align 8
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %278 [
    i32 133, label %23
    i32 132, label %91
    i32 137, label %104
    i32 130, label %125
    i32 135, label %148
    i32 128, label %179
    i32 129, label %196
    i32 131, label %217
    i32 136, label %235
    i32 134, label %260
  ]

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @LM95245_REG_R_REMOTE_TEMPL_S, align 4
  br label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @LM95245_REG_R_LOCAL_TEMPL_S, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @LM95245_REG_R_REMOTE_TEMPH_S, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @LM95245_REG_R_LOCAL_TEMPH_S, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %14, align 4
  %40 = load %struct.regmap*, %struct.regmap** %11, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @regmap_read(%struct.regmap* %40, i32 %41, i32* %15)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %281

47:                                               ; preds = %38
  %48 = load %struct.regmap*, %struct.regmap** %11, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @regmap_read(%struct.regmap* %48, i32 %49, i32* %16)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %5, align 4
  br label %281

55:                                               ; preds = %47
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32, i32* %16, align 4
  %60 = and i32 %59, 128
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %16, align 4
  %64 = icmp slt i32 %63, 127
  br i1 %64, label %65, label %70

65:                                               ; preds = %62, %58, %55
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %15, align 4
  %68 = call i64 @temp_from_reg_signed(i32 %66, i32 %67)
  %69 = load i64*, i64** %9, align 8
  store i64 %68, i64* %69, align 8
  store i32 0, i32* %5, align 4
  br label %281

70:                                               ; preds = %62
  %71 = load %struct.regmap*, %struct.regmap** %11, align 8
  %72 = load i32, i32* @LM95245_REG_R_REMOTE_TEMPL_U, align 4
  %73 = call i32 @regmap_read(%struct.regmap* %71, i32 %72, i32* %15)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %5, align 4
  br label %281

78:                                               ; preds = %70
  %79 = load %struct.regmap*, %struct.regmap** %11, align 8
  %80 = load i32, i32* @LM95245_REG_R_REMOTE_TEMPH_U, align 4
  %81 = call i32 @regmap_read(%struct.regmap* %79, i32 %80, i32* %16)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %5, align 4
  br label %281

86:                                               ; preds = %78
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %15, align 4
  %89 = call i64 @temp_from_reg_unsigned(i32 %87, i32 %88)
  %90 = load i64*, i64** %9, align 8
  store i64 %89, i64* %90, align 8
  store i32 0, i32* %5, align 4
  br label %281

91:                                               ; preds = %4
  %92 = load %struct.regmap*, %struct.regmap** %11, align 8
  %93 = load i32, i32* @LM95245_REG_RW_REMOTE_OS_LIMIT, align 4
  %94 = call i32 @regmap_read(%struct.regmap* %92, i32 %93, i32* %16)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %5, align 4
  br label %281

99:                                               ; preds = %91
  %100 = load i32, i32* %16, align 4
  %101 = mul nsw i32 %100, 1000
  %102 = sext i32 %101 to i64
  %103 = load i64*, i64** %9, align 8
  store i64 %102, i64* %103, align 8
  store i32 0, i32* %5, align 4
  br label %281

104:                                              ; preds = %4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32, i32* @LM95245_REG_RW_REMOTE_TCRIT_LIMIT, align 4
  br label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @LM95245_REG_RW_LOCAL_OS_TCRIT_LIMIT, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  store i32 %112, i32* %14, align 4
  %113 = load %struct.regmap*, %struct.regmap** %11, align 8
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @regmap_read(%struct.regmap* %113, i32 %114, i32* %16)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %5, align 4
  br label %281

120:                                              ; preds = %111
  %121 = load i32, i32* %16, align 4
  %122 = mul nsw i32 %121, 1000
  %123 = sext i32 %122 to i64
  %124 = load i64*, i64** %9, align 8
  store i64 %123, i64* %124, align 8
  store i32 0, i32* %5, align 4
  br label %281

125:                                              ; preds = %4
  %126 = load %struct.regmap*, %struct.regmap** %11, align 8
  %127 = load i32, i32* @LM95245_REG_RW_REMOTE_OS_LIMIT, align 4
  %128 = call i32 @regmap_read(%struct.regmap* %126, i32 %127, i32* %16)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = load i32, i32* %12, align 4
  store i32 %132, i32* %5, align 4
  br label %281

133:                                              ; preds = %125
  %134 = load %struct.regmap*, %struct.regmap** %11, align 8
  %135 = load i32, i32* @LM95245_REG_RW_COMMON_HYSTERESIS, align 4
  %136 = call i32 @regmap_read(%struct.regmap* %134, i32 %135, i32* %15)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = load i32, i32* %12, align 4
  store i32 %140, i32* %5, align 4
  br label %281

141:                                              ; preds = %133
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* %15, align 4
  %144 = sub nsw i32 %142, %143
  %145 = mul nsw i32 %144, 1000
  %146 = sext i32 %145 to i64
  %147 = load i64*, i64** %9, align 8
  store i64 %146, i64* %147, align 8
  store i32 0, i32* %5, align 4
  br label %281

148:                                              ; preds = %4
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = load i32, i32* @LM95245_REG_RW_REMOTE_TCRIT_LIMIT, align 4
  br label %155

153:                                              ; preds = %148
  %154 = load i32, i32* @LM95245_REG_RW_LOCAL_OS_TCRIT_LIMIT, align 4
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i32 [ %152, %151 ], [ %154, %153 ]
  store i32 %156, i32* %14, align 4
  %157 = load %struct.regmap*, %struct.regmap** %11, align 8
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @regmap_read(%struct.regmap* %157, i32 %158, i32* %16)
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %155
  %163 = load i32, i32* %12, align 4
  store i32 %163, i32* %5, align 4
  br label %281

164:                                              ; preds = %155
  %165 = load %struct.regmap*, %struct.regmap** %11, align 8
  %166 = load i32, i32* @LM95245_REG_RW_COMMON_HYSTERESIS, align 4
  %167 = call i32 @regmap_read(%struct.regmap* %165, i32 %166, i32* %15)
  store i32 %167, i32* %12, align 4
  %168 = load i32, i32* %12, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  %171 = load i32, i32* %12, align 4
  store i32 %171, i32* %5, align 4
  br label %281

172:                                              ; preds = %164
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* %15, align 4
  %175 = sub nsw i32 %173, %174
  %176 = mul nsw i32 %175, 1000
  %177 = sext i32 %176 to i64
  %178 = load i64*, i64** %9, align 8
  store i64 %177, i64* %178, align 8
  store i32 0, i32* %5, align 4
  br label %281

179:                                              ; preds = %4
  %180 = load %struct.regmap*, %struct.regmap** %11, align 8
  %181 = load i32, i32* @LM95245_REG_RW_CONFIG2, align 4
  %182 = call i32 @regmap_read(%struct.regmap* %180, i32 %181, i32* %16)
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* %12, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %179
  %186 = load i32, i32* %12, align 4
  store i32 %186, i32* %5, align 4
  br label %281

187:                                              ; preds = %179
  %188 = load i32, i32* %16, align 4
  %189 = load i32, i32* @CFG2_REMOTE_TT, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i32 1, i32 2
  %194 = sext i32 %193 to i64
  %195 = load i64*, i64** %9, align 8
  store i64 %194, i64* %195, align 8
  store i32 0, i32* %5, align 4
  br label %281

196:                                              ; preds = %4
  %197 = load %struct.regmap*, %struct.regmap** %11, align 8
  %198 = load i32, i32* @LM95245_REG_RW_REMOTE_OFFL, align 4
  %199 = call i32 @regmap_read(%struct.regmap* %197, i32 %198, i32* %15)
  store i32 %199, i32* %12, align 4
  %200 = load i32, i32* %12, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %196
  %203 = load i32, i32* %12, align 4
  store i32 %203, i32* %5, align 4
  br label %281

204:                                              ; preds = %196
  %205 = load %struct.regmap*, %struct.regmap** %11, align 8
  %206 = load i32, i32* @LM95245_REG_RW_REMOTE_OFFH, align 4
  %207 = call i32 @regmap_read(%struct.regmap* %205, i32 %206, i32* %16)
  store i32 %207, i32* %12, align 4
  %208 = load i32, i32* %12, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %204
  %211 = load i32, i32* %12, align 4
  store i32 %211, i32* %5, align 4
  br label %281

212:                                              ; preds = %204
  %213 = load i32, i32* %16, align 4
  %214 = load i32, i32* %15, align 4
  %215 = call i64 @temp_from_reg_signed(i32 %213, i32 %214)
  %216 = load i64*, i64** %9, align 8
  store i64 %215, i64* %216, align 8
  store i32 0, i32* %5, align 4
  br label %281

217:                                              ; preds = %4
  %218 = load %struct.regmap*, %struct.regmap** %11, align 8
  %219 = load i32, i32* @LM95245_REG_R_STATUS1, align 4
  %220 = call i32 @regmap_read(%struct.regmap* %218, i32 %219, i32* %16)
  store i32 %220, i32* %12, align 4
  %221 = load i32, i32* %12, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %217
  %224 = load i32, i32* %12, align 4
  store i32 %224, i32* %5, align 4
  br label %281

225:                                              ; preds = %217
  %226 = load i32, i32* %16, align 4
  %227 = load i32, i32* @STATUS1_ROS, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  %230 = xor i1 %229, true
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i32
  %233 = sext i32 %232 to i64
  %234 = load i64*, i64** %9, align 8
  store i64 %233, i64* %234, align 8
  store i32 0, i32* %5, align 4
  br label %281

235:                                              ; preds = %4
  %236 = load %struct.regmap*, %struct.regmap** %11, align 8
  %237 = load i32, i32* @LM95245_REG_R_STATUS1, align 4
  %238 = call i32 @regmap_read(%struct.regmap* %236, i32 %237, i32* %16)
  store i32 %238, i32* %12, align 4
  %239 = load i32, i32* %12, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %235
  %242 = load i32, i32* %12, align 4
  store i32 %242, i32* %5, align 4
  br label %281

243:                                              ; preds = %235
  %244 = load i32, i32* %16, align 4
  %245 = load i32, i32* %8, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %243
  %248 = load i32, i32* @STATUS1_RTCRIT, align 4
  br label %251

249:                                              ; preds = %243
  %250 = load i32, i32* @STATUS1_LOC, align 4
  br label %251

251:                                              ; preds = %249, %247
  %252 = phi i32 [ %248, %247 ], [ %250, %249 ]
  %253 = and i32 %244, %252
  %254 = icmp ne i32 %253, 0
  %255 = xor i1 %254, true
  %256 = xor i1 %255, true
  %257 = zext i1 %256 to i32
  %258 = sext i32 %257 to i64
  %259 = load i64*, i64** %9, align 8
  store i64 %258, i64* %259, align 8
  store i32 0, i32* %5, align 4
  br label %281

260:                                              ; preds = %4
  %261 = load %struct.regmap*, %struct.regmap** %11, align 8
  %262 = load i32, i32* @LM95245_REG_R_STATUS1, align 4
  %263 = call i32 @regmap_read(%struct.regmap* %261, i32 %262, i32* %16)
  store i32 %263, i32* %12, align 4
  %264 = load i32, i32* %12, align 4
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %260
  %267 = load i32, i32* %12, align 4
  store i32 %267, i32* %5, align 4
  br label %281

268:                                              ; preds = %260
  %269 = load i32, i32* %16, align 4
  %270 = load i32, i32* @STATUS1_DIODE_FAULT, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  %273 = xor i1 %272, true
  %274 = xor i1 %273, true
  %275 = zext i1 %274 to i32
  %276 = sext i32 %275 to i64
  %277 = load i64*, i64** %9, align 8
  store i64 %276, i64* %277, align 8
  store i32 0, i32* %5, align 4
  br label %281

278:                                              ; preds = %4
  %279 = load i32, i32* @EOPNOTSUPP, align 4
  %280 = sub nsw i32 0, %279
  store i32 %280, i32* %5, align 4
  br label %281

281:                                              ; preds = %278, %268, %266, %251, %241, %225, %223, %212, %210, %202, %187, %185, %172, %170, %162, %141, %139, %131, %120, %118, %99, %97, %86, %84, %76, %65, %53, %45
  %282 = load i32, i32* %5, align 4
  ret i32 %282
}

declare dso_local %struct.lm95245_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i64 @temp_from_reg_signed(i32, i32) #1

declare dso_local i64 @temp_from_reg_unsigned(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
