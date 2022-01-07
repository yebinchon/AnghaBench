; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7904.c_nct7904_read_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7904.c_nct7904_read_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nct7904_data = type { i32, i32, i32, i32 }

@BANK_0 = common dso_local global i32 0, align 4
@LTD_HV_REG = common dso_local global i32 0, align 4
@TEMP_CH1_HV_REG = common dso_local global i32 0, align 4
@T_CPU1_HV_REG = common dso_local global i32 0, align 4
@SMI_STS3_REG = common dso_local global i32 0, align 4
@SMI_STS1_REG = common dso_local global i32 0, align 4
@SMI_STS7_REG = common dso_local global i32 0, align 4
@SMI_STS8_REG = common dso_local global i32 0, align 4
@ENABLE_TSI = common dso_local global i32 0, align 4
@LTD_HV_LL_REG = common dso_local global i32 0, align 4
@TEMP_CH1_W_REG = common dso_local global i32 0, align 4
@DTS_T_CPU1_W_REG = common dso_local global i32 0, align 4
@LTD_LV_LL_REG = common dso_local global i32 0, align 4
@TEMP_CH1_WH_REG = common dso_local global i32 0, align 4
@DTS_T_CPU1_WH_REG = common dso_local global i32 0, align 4
@LTD_HV_HL_REG = common dso_local global i32 0, align 4
@TEMP_CH1_C_REG = common dso_local global i32 0, align 4
@DTS_T_CPU1_C_REG = common dso_local global i32 0, align 4
@LTD_LV_HL_REG = common dso_local global i32 0, align 4
@TEMP_CH1_CH_REG = common dso_local global i32 0, align 4
@DTS_T_CPU1_CH_REG = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@BANK_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64*)* @nct7904_read_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nct7904_read_temp(%struct.device* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.nct7904_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.nct7904_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.nct7904_data* %17, %struct.nct7904_data** %10, align 8
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %225 [
    i32 131, label %19
    i32 134, label %65
    i32 128, label %157
    i32 130, label %209
    i32 129, label %213
    i32 133, label %217
    i32 132, label %221
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %24 = load i32, i32* @BANK_0, align 4
  %25 = load i32, i32* @LTD_HV_REG, align 4
  %26 = call i32 @nct7904_read_reg16(%struct.nct7904_data* %23, i32 %24, i32 %25)
  store i32 %26, i32* %11, align 4
  br label %48

27:                                               ; preds = %19
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 5
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %32 = load i32, i32* @BANK_0, align 4
  %33 = load i32, i32* @TEMP_CH1_HV_REG, align 4
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 %34, 4
  %36 = add nsw i32 %33, %35
  %37 = call i32 @nct7904_read_reg16(%struct.nct7904_data* %31, i32 %32, i32 %36)
  store i32 %37, i32* %11, align 4
  br label %47

38:                                               ; preds = %27
  %39 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %40 = load i32, i32* @BANK_0, align 4
  %41 = load i32, i32* @T_CPU1_HV_REG, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 5
  %44 = mul nsw i32 %43, 2
  %45 = add nsw i32 %41, %44
  %46 = call i32 @nct7904_read_reg16(%struct.nct7904_data* %39, i32 %40, i32 %45)
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %38, %30
  br label %48

48:                                               ; preds = %47, %22
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %267

53:                                               ; preds = %48
  %54 = load i32, i32* %11, align 4
  %55 = and i32 %54, 65280
  %56 = ashr i32 %55, 5
  %57 = load i32, i32* %11, align 4
  %58 = and i32 %57, 7
  %59 = or i32 %56, %58
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @sign_extend32(i32 %60, i32 10)
  %62 = mul nsw i32 %61, 125
  %63 = sext i32 %62 to i64
  %64 = load i64*, i64** %9, align 8
  store i64 %63, i64* %64, align 8
  store i32 0, i32* %5, align 4
  br label %267

65:                                               ; preds = %4
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 4
  br i1 %67, label %68, label %83

68:                                               ; preds = %65
  %69 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %70 = load i32, i32* @BANK_0, align 4
  %71 = load i32, i32* @SMI_STS3_REG, align 4
  %72 = call i32 @nct7904_read_reg(%struct.nct7904_data* %69, i32 %70, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %5, align 4
  br label %267

77:                                               ; preds = %68
  %78 = load i32, i32* %11, align 4
  %79 = ashr i32 %78, 1
  %80 = and i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = load i64*, i64** %9, align 8
  store i64 %81, i64* %82, align 8
  br label %156

83:                                               ; preds = %65
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 4
  br i1 %85, label %86, label %105

86:                                               ; preds = %83
  %87 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %88 = load i32, i32* @BANK_0, align 4
  %89 = load i32, i32* @SMI_STS1_REG, align 4
  %90 = call i32 @nct7904_read_reg(%struct.nct7904_data* %87, i32 %88, i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %5, align 4
  br label %267

95:                                               ; preds = %86
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %8, align 4
  %98 = mul nsw i32 %97, 2
  %99 = add nsw i32 %98, 1
  %100 = and i32 %99, 7
  %101 = ashr i32 %96, %100
  %102 = and i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = load i64*, i64** %9, align 8
  store i64 %103, i64* %104, align 8
  br label %155

105:                                              ; preds = %83
  %106 = load i32, i32* %8, align 4
  %107 = sub nsw i32 %106, 5
  %108 = icmp slt i32 %107, 4
  br i1 %108, label %109, label %131

109:                                              ; preds = %105
  %110 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %111 = load i32, i32* @BANK_0, align 4
  %112 = load i32, i32* @SMI_STS7_REG, align 4
  %113 = load i32, i32* %8, align 4
  %114 = sub nsw i32 %113, 5
  %115 = ashr i32 %114, 3
  %116 = add nsw i32 %112, %115
  %117 = call i32 @nct7904_read_reg(%struct.nct7904_data* %110, i32 %111, i32 %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %109
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %5, align 4
  br label %267

122:                                              ; preds = %109
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %8, align 4
  %125 = sub nsw i32 %124, 5
  %126 = and i32 %125, 7
  %127 = ashr i32 %123, %126
  %128 = and i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = load i64*, i64** %9, align 8
  store i64 %129, i64* %130, align 8
  br label %154

131:                                              ; preds = %105
  %132 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %133 = load i32, i32* @BANK_0, align 4
  %134 = load i32, i32* @SMI_STS8_REG, align 4
  %135 = load i32, i32* %8, align 4
  %136 = sub nsw i32 %135, 5
  %137 = ashr i32 %136, 3
  %138 = add nsw i32 %134, %137
  %139 = call i32 @nct7904_read_reg(%struct.nct7904_data* %132, i32 %133, i32 %138)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %131
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %5, align 4
  br label %267

144:                                              ; preds = %131
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %8, align 4
  %147 = sub nsw i32 %146, 5
  %148 = and i32 %147, 7
  %149 = sub nsw i32 %148, 4
  %150 = ashr i32 %145, %149
  %151 = and i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = load i64*, i64** %9, align 8
  store i64 %152, i64* %153, align 8
  br label %154

154:                                              ; preds = %144, %122
  br label %155

155:                                              ; preds = %154, %95
  br label %156

156:                                              ; preds = %155, %77
  store i32 0, i32* %5, align 4
  br label %267

157:                                              ; preds = %4
  %158 = load i32, i32* %8, align 4
  %159 = icmp slt i32 %158, 5
  br i1 %159, label %160, label %184

160:                                              ; preds = %157
  %161 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %162 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %8, align 4
  %165 = ashr i32 %163, %164
  %166 = and i32 %165, 1
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %160
  %169 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %170 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %8, align 4
  %173 = ashr i32 %171, %172
  %174 = and i32 %173, 1
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %168
  %177 = load i64*, i64** %9, align 8
  store i64 3, i64* %177, align 8
  br label %180

178:                                              ; preds = %168
  %179 = load i64*, i64** %9, align 8
  store i64 4, i64* %179, align 8
  br label %180

180:                                              ; preds = %178, %176
  br label %183

181:                                              ; preds = %160
  %182 = load i64*, i64** %9, align 8
  store i64 0, i64* %182, align 8
  br label %183

183:                                              ; preds = %181, %180
  br label %208

184:                                              ; preds = %157
  %185 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %186 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %8, align 4
  %189 = sub nsw i32 %188, 5
  %190 = ashr i32 %187, %189
  %191 = and i32 %190, 1
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %205

193:                                              ; preds = %184
  %194 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %195 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @ENABLE_TSI, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %193
  %201 = load i64*, i64** %9, align 8
  store i64 5, i64* %201, align 8
  br label %204

202:                                              ; preds = %193
  %203 = load i64*, i64** %9, align 8
  store i64 6, i64* %203, align 8
  br label %204

204:                                              ; preds = %202, %200
  br label %207

205:                                              ; preds = %184
  %206 = load i64*, i64** %9, align 8
  store i64 0, i64* %206, align 8
  br label %207

207:                                              ; preds = %205, %204
  br label %208

208:                                              ; preds = %207, %183
  store i32 0, i32* %5, align 4
  br label %267

209:                                              ; preds = %4
  %210 = load i32, i32* @LTD_HV_LL_REG, align 4
  store i32 %210, i32* %13, align 4
  %211 = load i32, i32* @TEMP_CH1_W_REG, align 4
  store i32 %211, i32* %14, align 4
  %212 = load i32, i32* @DTS_T_CPU1_W_REG, align 4
  store i32 %212, i32* %15, align 4
  br label %228

213:                                              ; preds = %4
  %214 = load i32, i32* @LTD_LV_LL_REG, align 4
  store i32 %214, i32* %13, align 4
  %215 = load i32, i32* @TEMP_CH1_WH_REG, align 4
  store i32 %215, i32* %14, align 4
  %216 = load i32, i32* @DTS_T_CPU1_WH_REG, align 4
  store i32 %216, i32* %15, align 4
  br label %228

217:                                              ; preds = %4
  %218 = load i32, i32* @LTD_HV_HL_REG, align 4
  store i32 %218, i32* %13, align 4
  %219 = load i32, i32* @TEMP_CH1_C_REG, align 4
  store i32 %219, i32* %14, align 4
  %220 = load i32, i32* @DTS_T_CPU1_C_REG, align 4
  store i32 %220, i32* %15, align 4
  br label %228

221:                                              ; preds = %4
  %222 = load i32, i32* @LTD_LV_HL_REG, align 4
  store i32 %222, i32* %13, align 4
  %223 = load i32, i32* @TEMP_CH1_CH_REG, align 4
  store i32 %223, i32* %14, align 4
  %224 = load i32, i32* @DTS_T_CPU1_CH_REG, align 4
  store i32 %224, i32* %15, align 4
  br label %228

225:                                              ; preds = %4
  %226 = load i32, i32* @EOPNOTSUPP, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %5, align 4
  br label %267

228:                                              ; preds = %221, %217, %213, %209
  %229 = load i32, i32* %8, align 4
  %230 = icmp eq i32 %229, 4
  br i1 %230, label %231, label %236

231:                                              ; preds = %228
  %232 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %233 = load i32, i32* @BANK_1, align 4
  %234 = load i32, i32* %13, align 4
  %235 = call i32 @nct7904_read_reg(%struct.nct7904_data* %232, i32 %233, i32 %234)
  store i32 %235, i32* %11, align 4
  br label %257

236:                                              ; preds = %228
  %237 = load i32, i32* %8, align 4
  %238 = icmp slt i32 %237, 5
  br i1 %238, label %239, label %247

239:                                              ; preds = %236
  %240 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %241 = load i32, i32* @BANK_1, align 4
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* %8, align 4
  %244 = mul nsw i32 %243, 8
  %245 = add i32 %242, %244
  %246 = call i32 @nct7904_read_reg(%struct.nct7904_data* %240, i32 %241, i32 %245)
  store i32 %246, i32* %11, align 4
  br label %256

247:                                              ; preds = %236
  %248 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %249 = load i32, i32* @BANK_1, align 4
  %250 = load i32, i32* %15, align 4
  %251 = load i32, i32* %8, align 4
  %252 = sub nsw i32 %251, 5
  %253 = mul nsw i32 %252, 4
  %254 = add i32 %250, %253
  %255 = call i32 @nct7904_read_reg(%struct.nct7904_data* %248, i32 %249, i32 %254)
  store i32 %255, i32* %11, align 4
  br label %256

256:                                              ; preds = %247, %239
  br label %257

257:                                              ; preds = %256, %231
  %258 = load i32, i32* %11, align 4
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %257
  %261 = load i32, i32* %11, align 4
  store i32 %261, i32* %5, align 4
  br label %267

262:                                              ; preds = %257
  %263 = load i32, i32* %11, align 4
  %264 = mul nsw i32 %263, 1000
  %265 = sext i32 %264 to i64
  %266 = load i64*, i64** %9, align 8
  store i64 %265, i64* %266, align 8
  store i32 0, i32* %5, align 4
  br label %267

267:                                              ; preds = %262, %260, %225, %208, %156, %142, %120, %93, %75, %53, %51
  %268 = load i32, i32* %5, align 4
  ret i32 %268
}

declare dso_local %struct.nct7904_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @nct7904_read_reg16(%struct.nct7904_data*, i32, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @nct7904_read_reg(%struct.nct7904_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
