; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7904.c_nct7904_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7904.c_nct7904_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.nct7904_data = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BANK_0 = common dso_local global i32 0, align 4
@FANIN_CTRL0_REG = common dso_local global i64 0, align 8
@VT_ADC_CTRL0_REG = common dso_local global i64 0, align 8
@VT_ADC_CTRL2_REG = common dso_local global i64 0, align 8
@VT_ADC_MD_REG = common dso_local global i64 0, align 8
@VOLT_MONITOR_MODE = common dso_local global i32 0, align 4
@THERMAL_DIODE_MODE = common dso_local global i32 0, align 4
@THERMISTOR_MODE = common dso_local global i32 0, align 4
@BANK_2 = common dso_local global i32 0, align 4
@PFE_REG = common dso_local global i64 0, align 8
@TSI_CTRL_REG = common dso_local global i64 0, align 8
@DTS_T_CTRL0_REG = common dso_local global i64 0, align 8
@ENABLE_TSI = common dso_local global i32 0, align 4
@DTS_T_CTRL1_REG = common dso_local global i64 0, align 8
@FANCTL_MAX = common dso_local global i32 0, align 4
@BANK_3 = common dso_local global i32 0, align 4
@FANCTL1_FMR_REG = common dso_local global i64 0, align 8
@nct7904_chip_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @nct7904_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nct7904_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.nct7904_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.device*, %struct.device** %8, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.nct7904_data* @devm_kzalloc(%struct.device* %16, i32 56, i32 %17)
  store %struct.nct7904_data* %18, %struct.nct7904_data** %6, align 8
  %19 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %20 = icmp ne %struct.nct7904_data* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %342

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %27 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %26, i32 0, i32 9
  store %struct.i2c_client* %25, %struct.i2c_client** %27, align 8
  %28 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %29 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %28, i32 0, i32 8
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %32 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %34 = load i32, i32* @BANK_0, align 4
  %35 = load i64, i64* @FANIN_CTRL0_REG, align 8
  %36 = call i32 @nct7904_read_reg16(%struct.nct7904_data* %33, i32 %34, i64 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %342

41:                                               ; preds = %24
  %42 = load i32, i32* %9, align 4
  %43 = ashr i32 %42, 8
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, 255
  %46 = shl i32 %45, 8
  %47 = or i32 %43, %46
  %48 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %49 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %11, align 4
  %50 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %51 = load i32, i32* @BANK_0, align 4
  %52 = load i64, i64* @VT_ADC_CTRL0_REG, align 8
  %53 = call i32 @nct7904_read_reg16(%struct.nct7904_data* %50, i32 %51, i64 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %41
  %57 = load i32, i32* %9, align 4
  %58 = ashr i32 %57, 8
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, 255
  %61 = shl i32 %60, 8
  %62 = or i32 %58, %61
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %56, %41
  %64 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %65 = load i32, i32* @BANK_0, align 4
  %66 = load i64, i64* @VT_ADC_CTRL2_REG, align 8
  %67 = call i32 @nct7904_read_reg(%struct.nct7904_data* %64, i32 %65, i64 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load i32, i32* %9, align 4
  %72 = shl i32 %71, 16
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %70, %63
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %78 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %80 = load i32, i32* @BANK_0, align 4
  %81 = load i64, i64* @VT_ADC_CTRL0_REG, align 8
  %82 = call i32 @nct7904_read_reg(%struct.nct7904_data* %79, i32 %80, i64 %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %3, align 4
  br label %342

87:                                               ; preds = %75
  %88 = load i32, i32* %9, align 4
  %89 = and i32 %88, 6
  %90 = icmp eq i32 %89, 6
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %93 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %91, %87
  %97 = load i32, i32* %9, align 4
  %98 = and i32 %97, 24
  %99 = icmp eq i32 %98, 24
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %102 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, 2
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %100, %96
  %106 = load i32, i32* %9, align 4
  %107 = and i32 %106, 32
  %108 = icmp eq i32 %107, 32
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %111 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, 4
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %109, %105
  %115 = load i32, i32* %9, align 4
  %116 = and i32 %115, 128
  %117 = icmp eq i32 %116, 128
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %120 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, 8
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %118, %114
  %124 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %125 = load i32, i32* @BANK_0, align 4
  %126 = load i64, i64* @VT_ADC_CTRL2_REG, align 8
  %127 = call i32 @nct7904_read_reg(%struct.nct7904_data* %124, i32 %125, i64 %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %3, align 4
  br label %342

132:                                              ; preds = %123
  %133 = load i32, i32* %9, align 4
  %134 = and i32 %133, 2
  %135 = icmp eq i32 %134, 2
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %138 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, 16
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %136, %132
  %142 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %143 = load i32, i32* @BANK_0, align 4
  %144 = load i64, i64* @VT_ADC_MD_REG, align 8
  %145 = call i32 @nct7904_read_reg(%struct.nct7904_data* %142, i32 %143, i64 %144)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %3, align 4
  br label %342

150:                                              ; preds = %141
  %151 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %152 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %151, i32 0, i32 4
  store i32 0, i32* %152, align 8
  store i32 0, i32* %10, align 4
  br label %153

153:                                              ; preds = %226, %150
  %154 = load i32, i32* %10, align 4
  %155 = icmp slt i32 %154, 4
  br i1 %155, label %156, label %229

156:                                              ; preds = %153
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %10, align 4
  %159 = mul nsw i32 %158, 2
  %160 = ashr i32 %157, %159
  %161 = and i32 %160, 3
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %10, align 4
  %163 = shl i32 1, %162
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @VOLT_MONITOR_MODE, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %156
  %168 = load i32, i32* %13, align 4
  %169 = xor i32 %168, -1
  %170 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %171 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, %169
  store i32 %173, i32* %171, align 4
  br label %225

174:                                              ; preds = %156
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* @THERMAL_DIODE_MODE, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %195

178:                                              ; preds = %174
  %179 = load i32, i32* %10, align 4
  %180 = icmp slt i32 %179, 2
  br i1 %180, label %181, label %195

181:                                              ; preds = %178
  %182 = load i32, i32* %13, align 4
  %183 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %184 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 8
  %187 = load i32, i32* %10, align 4
  %188 = mul nsw i32 %187, 2
  %189 = shl i32 6, %188
  %190 = xor i32 %189, -1
  %191 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %192 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = and i32 %193, %190
  store i32 %194, i32* %192, align 8
  br label %224

195:                                              ; preds = %178, %174
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* @THERMISTOR_MODE, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %208

199:                                              ; preds = %195
  %200 = load i32, i32* %10, align 4
  %201 = mul nsw i32 %200, 2
  %202 = shl i32 2, %201
  %203 = xor i32 %202, -1
  %204 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %205 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = and i32 %206, %203
  store i32 %207, i32* %205, align 8
  br label %223

208:                                              ; preds = %195
  %209 = load i32, i32* %13, align 4
  %210 = xor i32 %209, -1
  %211 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %212 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = and i32 %213, %210
  store i32 %214, i32* %212, align 4
  %215 = load i32, i32* %10, align 4
  %216 = mul nsw i32 %215, 2
  %217 = shl i32 6, %216
  %218 = xor i32 %217, -1
  %219 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %220 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = and i32 %221, %218
  store i32 %222, i32* %220, align 8
  br label %223

223:                                              ; preds = %208, %199
  br label %224

224:                                              ; preds = %223, %181
  br label %225

225:                                              ; preds = %224, %167
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %10, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %10, align 4
  br label %153

229:                                              ; preds = %153
  %230 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %231 = load i32, i32* @BANK_2, align 4
  %232 = load i64, i64* @PFE_REG, align 8
  %233 = call i32 @nct7904_read_reg(%struct.nct7904_data* %230, i32 %231, i64 %232)
  store i32 %233, i32* %9, align 4
  %234 = load i32, i32* %9, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %229
  %237 = load i32, i32* %9, align 4
  store i32 %237, i32* %3, align 4
  br label %342

238:                                              ; preds = %229
  %239 = load i32, i32* %9, align 4
  %240 = and i32 %239, 128
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %244 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %243, i32 0, i32 5
  store i32 1, i32* %244, align 4
  br label %262

245:                                              ; preds = %238
  %246 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %247 = load i32, i32* @BANK_2, align 4
  %248 = load i64, i64* @TSI_CTRL_REG, align 8
  %249 = call i32 @nct7904_read_reg(%struct.nct7904_data* %246, i32 %247, i64 %248)
  store i32 %249, i32* %9, align 4
  %250 = load i32, i32* %9, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %245
  %253 = load i32, i32* %9, align 4
  store i32 %253, i32* %3, align 4
  br label %342

254:                                              ; preds = %245
  %255 = load i32, i32* %9, align 4
  %256 = and i32 %255, 128
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %254
  %259 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %260 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %259, i32 0, i32 5
  store i32 3, i32* %260, align 4
  br label %261

261:                                              ; preds = %258, %254
  br label %262

262:                                              ; preds = %261, %242
  %263 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %264 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %305

267:                                              ; preds = %262
  %268 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %269 = load i32, i32* @BANK_0, align 4
  %270 = load i64, i64* @DTS_T_CTRL0_REG, align 8
  %271 = call i32 @nct7904_read_reg(%struct.nct7904_data* %268, i32 %269, i64 %270)
  store i32 %271, i32* %9, align 4
  %272 = load i32, i32* %9, align 4
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %267
  %275 = load i32, i32* %9, align 4
  store i32 %275, i32* %3, align 4
  br label %342

276:                                              ; preds = %267
  %277 = load i32, i32* %9, align 4
  %278 = and i32 %277, 15
  %279 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %280 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %279, i32 0, i32 6
  store i32 %278, i32* %280, align 8
  %281 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %282 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %281, i32 0, i32 5
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @ENABLE_TSI, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %304

287:                                              ; preds = %276
  %288 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %289 = load i32, i32* @BANK_0, align 4
  %290 = load i64, i64* @DTS_T_CTRL1_REG, align 8
  %291 = call i32 @nct7904_read_reg(%struct.nct7904_data* %288, i32 %289, i64 %290)
  store i32 %291, i32* %9, align 4
  %292 = load i32, i32* %9, align 4
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %287
  %295 = load i32, i32* %9, align 4
  store i32 %295, i32* %3, align 4
  br label %342

296:                                              ; preds = %287
  %297 = load i32, i32* %9, align 4
  %298 = and i32 %297, 15
  %299 = shl i32 %298, 4
  %300 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %301 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %300, i32 0, i32 6
  %302 = load i32, i32* %301, align 8
  %303 = or i32 %302, %299
  store i32 %303, i32* %301, align 8
  br label %304

304:                                              ; preds = %296, %276
  br label %305

305:                                              ; preds = %304, %262
  store i32 0, i32* %10, align 4
  br label %306

306:                                              ; preds = %330, %305
  %307 = load i32, i32* %10, align 4
  %308 = load i32, i32* @FANCTL_MAX, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %333

310:                                              ; preds = %306
  %311 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %312 = load i32, i32* @BANK_3, align 4
  %313 = load i64, i64* @FANCTL1_FMR_REG, align 8
  %314 = load i32, i32* %10, align 4
  %315 = sext i32 %314 to i64
  %316 = add nsw i64 %313, %315
  %317 = call i32 @nct7904_read_reg(%struct.nct7904_data* %311, i32 %312, i64 %316)
  store i32 %317, i32* %9, align 4
  %318 = load i32, i32* %9, align 4
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %310
  %321 = load i32, i32* %9, align 4
  store i32 %321, i32* %3, align 4
  br label %342

322:                                              ; preds = %310
  %323 = load i32, i32* %9, align 4
  %324 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %325 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %324, i32 0, i32 7
  %326 = load i32*, i32** %325, align 8
  %327 = load i32, i32* %10, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  store i32 %323, i32* %329, align 4
  br label %330

330:                                              ; preds = %322
  %331 = load i32, i32* %10, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %10, align 4
  br label %306

333:                                              ; preds = %306
  %334 = load %struct.device*, %struct.device** %8, align 8
  %335 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %336 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.nct7904_data*, %struct.nct7904_data** %6, align 8
  %339 = call %struct.device* @devm_hwmon_device_register_with_info(%struct.device* %334, i32 %337, %struct.nct7904_data* %338, i32* @nct7904_chip_info, i32* null)
  store %struct.device* %339, %struct.device** %7, align 8
  %340 = load %struct.device*, %struct.device** %7, align 8
  %341 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %340)
  store i32 %341, i32* %3, align 4
  br label %342

342:                                              ; preds = %333, %320, %294, %274, %252, %236, %148, %130, %85, %39, %21
  %343 = load i32, i32* %3, align 4
  ret i32 %343
}

declare dso_local %struct.nct7904_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @nct7904_read_reg16(%struct.nct7904_data*, i32, i64) #1

declare dso_local i32 @nct7904_read_reg(%struct.nct7904_data*, i32, i64) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_info(%struct.device*, i32, %struct.nct7904_data*, i32*, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
