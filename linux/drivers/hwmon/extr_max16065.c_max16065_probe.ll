; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max16065.c_max16065_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max16065.c_max16065_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device, %struct.i2c_adapter* }
%struct.device = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.max16065_data = type { i32, i32, i32, i32**, i32*, i32**, i32, %struct.i2c_client* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_WORD_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max16065_num_adc = common dso_local global i32* null, align 8
@max16065_have_current = common dso_local global i32* null, align 8
@max16065_have_secondary = common dso_local global i32* null, align 8
@MAX16065_SW_ENABLE = common dso_local global i32 0, align 4
@MAX16065_WARNING_OV = common dso_local global i32 0, align 4
@max16065_adc_range = common dso_local global i32* null, align 8
@MAX16065_NUM_LIMIT = common dso_local global i32 0, align 4
@max16065_basic_group = common dso_local global i32 0, align 4
@max16065_max_group = common dso_local global i32 0, align 4
@max16065_min_group = common dso_local global i32 0, align 4
@MAX16065_CURR_CONTROL = common dso_local global i32 0, align 4
@MAX16065_CURR_ENABLE = common dso_local global i32 0, align 4
@max16065_csp_adc_range = common dso_local global i32* null, align 8
@MAX16065_NUM_ADC = common dso_local global i64 0, align 8
@max16065_current_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max16065_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max16065_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.max16065_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 2
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %17, align 8
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %6, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 1
  store %struct.device* %20, %struct.device** %8, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %22 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %23 = load i32, i32* @I2C_FUNC_SMBUS_READ_WORD_DATA, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %294

30:                                               ; preds = %2
  %31 = load %struct.device*, %struct.device** %8, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.max16065_data* @devm_kzalloc(%struct.device* %31, i32 56, i32 %32)
  store %struct.max16065_data* %33, %struct.max16065_data** %7, align 8
  %34 = load %struct.max16065_data*, %struct.max16065_data** %7, align 8
  %35 = icmp ne %struct.max16065_data* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %294

43:                                               ; preds = %30
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = load %struct.max16065_data*, %struct.max16065_data** %7, align 8
  %46 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %45, i32 0, i32 7
  store %struct.i2c_client* %44, %struct.i2c_client** %46, align 8
  %47 = load %struct.max16065_data*, %struct.max16065_data** %7, align 8
  %48 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %47, i32 0, i32 6
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load i32*, i32** @max16065_num_adc, align 8
  %51 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %52 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.max16065_data*, %struct.max16065_data** %7, align 8
  %57 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32*, i32** @max16065_have_current, align 8
  %59 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %60 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.max16065_data*, %struct.max16065_data** %7, align 8
  %65 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** @max16065_have_secondary, align 8
  %67 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %68 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %43
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = load i32, i32* @MAX16065_SW_ENABLE, align 4
  %77 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %75, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %3, align 4
  br label %294

85:                                               ; preds = %74
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @MAX16065_WARNING_OV, align 4
  %88 = and i32 %86, %87
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %85, %43
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %147, %89
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.max16065_data*, %struct.max16065_data** %7, align 8
  %93 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @DIV_ROUND_UP(i32 %94, i32 4)
  %96 = icmp slt i32 %91, %95
  br i1 %96, label %97, label %150

97:                                               ; preds = %90
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @MAX16065_SCALE(i32 %99)
  %101 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %98, i32 %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp slt i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i64 @unlikely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %97
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %3, align 4
  br label %294

109:                                              ; preds = %97
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %143, %109
  %111 = load i32, i32* %11, align 4
  %112 = icmp slt i32 %111, 4
  br i1 %112, label %113, label %122

113:                                              ; preds = %110
  %114 = load i32, i32* %10, align 4
  %115 = mul nsw i32 %114, 4
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %115, %116
  %118 = load %struct.max16065_data*, %struct.max16065_data** %7, align 8
  %119 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br label %122

122:                                              ; preds = %113, %110
  %123 = phi i1 [ false, %110 ], [ %121, %113 ]
  br i1 %123, label %124, label %146

124:                                              ; preds = %122
  %125 = load i32*, i32** @max16065_adc_range, align 8
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %11, align 4
  %128 = mul nsw i32 %127, 2
  %129 = ashr i32 %126, %128
  %130 = and i32 %129, 3
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %125, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.max16065_data*, %struct.max16065_data** %7, align 8
  %135 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = mul nsw i32 %137, 4
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %136, i64 %141
  store i32 %133, i32* %142, align 4
  br label %143

143:                                              ; preds = %124
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %110

146:                                              ; preds = %122
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %10, align 4
  br label %90

150:                                              ; preds = %90
  store i32 0, i32* %10, align 4
  br label %151

151:                                              ; preds = %206, %150
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* @MAX16065_NUM_LIMIT, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %209

155:                                              ; preds = %151
  %156 = load i32, i32* %10, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %158
  br label %206

162:                                              ; preds = %158, %155
  store i32 0, i32* %11, align 4
  br label %163

163:                                              ; preds = %202, %162
  %164 = load i32, i32* %11, align 4
  %165 = load %struct.max16065_data*, %struct.max16065_data** %7, align 8
  %166 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %205

169:                                              ; preds = %163
  %170 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %11, align 4
  %173 = call i32 @MAX16065_LIMIT(i32 %171, i32 %172)
  %174 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %170, i32 %173)
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %12, align 4
  %176 = icmp slt i32 %175, 0
  %177 = zext i1 %176 to i32
  %178 = call i64 @unlikely(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %169
  %181 = load i32, i32* %12, align 4
  store i32 %181, i32* %3, align 4
  br label %294

182:                                              ; preds = %169
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.max16065_data*, %struct.max16065_data** %7, align 8
  %185 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %184, i32 0, i32 4
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @LIMIT_TO_MV(i32 %183, i32 %190)
  %192 = load %struct.max16065_data*, %struct.max16065_data** %7, align 8
  %193 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %192, i32 0, i32 5
  %194 = load i32**, i32*** %193, align 8
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32*, i32** %194, i64 %196
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  store i32 %191, i32* %201, align 4
  br label %202

202:                                              ; preds = %182
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %11, align 4
  br label %163

205:                                              ; preds = %163
  br label %206

206:                                              ; preds = %205, %161
  %207 = load i32, i32* %10, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %10, align 4
  br label %151

209:                                              ; preds = %151
  %210 = load %struct.max16065_data*, %struct.max16065_data** %7, align 8
  %211 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %210, i32 0, i32 3
  %212 = load i32**, i32*** %211, align 8
  %213 = load i32, i32* %15, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %15, align 4
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i32*, i32** %212, i64 %215
  store i32* @max16065_basic_group, i32** %216, align 8
  %217 = load i32, i32* %13, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %231

219:                                              ; preds = %209
  %220 = load i32, i32* %14, align 4
  %221 = icmp ne i32 %220, 0
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i32* @max16065_max_group, i32* @max16065_min_group
  %224 = load %struct.max16065_data*, %struct.max16065_data** %7, align 8
  %225 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %224, i32 0, i32 3
  %226 = load i32**, i32*** %225, align 8
  %227 = load i32, i32* %15, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %15, align 4
  %229 = sext i32 %227 to i64
  %230 = getelementptr inbounds i32*, i32** %226, i64 %229
  store i32* %223, i32** %230, align 8
  br label %231

231:                                              ; preds = %219, %209
  %232 = load %struct.max16065_data*, %struct.max16065_data** %7, align 8
  %233 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %282

236:                                              ; preds = %231
  %237 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %238 = load i32, i32* @MAX16065_CURR_CONTROL, align 4
  %239 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %237, i32 %238)
  store i32 %239, i32* %12, align 4
  %240 = load i32, i32* %12, align 4
  %241 = icmp slt i32 %240, 0
  %242 = zext i1 %241 to i32
  %243 = call i64 @unlikely(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %236
  %246 = load i32, i32* %12, align 4
  store i32 %246, i32* %3, align 4
  br label %294

247:                                              ; preds = %236
  %248 = load i32, i32* %12, align 4
  %249 = load i32, i32* @MAX16065_CURR_ENABLE, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %278

252:                                              ; preds = %247
  %253 = load i32, i32* %12, align 4
  %254 = ashr i32 %253, 2
  %255 = and i32 %254, 3
  %256 = shl i32 6, %255
  %257 = load %struct.max16065_data*, %struct.max16065_data** %7, align 8
  %258 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 8
  %259 = load i32*, i32** @max16065_csp_adc_range, align 8
  %260 = load i32, i32* %12, align 4
  %261 = ashr i32 %260, 1
  %262 = and i32 %261, 1
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %259, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.max16065_data*, %struct.max16065_data** %7, align 8
  %267 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %266, i32 0, i32 4
  %268 = load i32*, i32** %267, align 8
  %269 = load i64, i64* @MAX16065_NUM_ADC, align 8
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  store i32 %265, i32* %270, align 4
  %271 = load %struct.max16065_data*, %struct.max16065_data** %7, align 8
  %272 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %271, i32 0, i32 3
  %273 = load i32**, i32*** %272, align 8
  %274 = load i32, i32* %15, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %15, align 4
  %276 = sext i32 %274 to i64
  %277 = getelementptr inbounds i32*, i32** %273, i64 %276
  store i32* @max16065_current_group, i32** %277, align 8
  br label %281

278:                                              ; preds = %247
  %279 = load %struct.max16065_data*, %struct.max16065_data** %7, align 8
  %280 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %279, i32 0, i32 1
  store i32 0, i32* %280, align 4
  br label %281

281:                                              ; preds = %278, %252
  br label %282

282:                                              ; preds = %281, %231
  %283 = load %struct.device*, %struct.device** %8, align 8
  %284 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %285 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.max16065_data*, %struct.max16065_data** %7, align 8
  %288 = load %struct.max16065_data*, %struct.max16065_data** %7, align 8
  %289 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %288, i32 0, i32 3
  %290 = load i32**, i32*** %289, align 8
  %291 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %283, i32 %286, %struct.max16065_data* %287, i32** %290)
  store %struct.device* %291, %struct.device** %9, align 8
  %292 = load %struct.device*, %struct.device** %9, align 8
  %293 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %292)
  store i32 %293, i32* %3, align 4
  br label %294

294:                                              ; preds = %282, %245, %180, %107, %83, %40, %27
  %295 = load i32, i32* %3, align 4
  ret i32 %295
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.max16065_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @MAX16065_SCALE(i32) #1

declare dso_local i32 @MAX16065_LIMIT(i32, i32) #1

declare dso_local i32 @LIMIT_TO_MV(i32, i32) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.max16065_data*, i32**) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
