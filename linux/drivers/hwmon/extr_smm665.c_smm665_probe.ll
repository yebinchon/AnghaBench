; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_smm665.c_smm665_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_smm665.c_smm665_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.smm665_data = type { i32, %struct.i2c_client*, i8**, i8**, i8**, i8**, i32, %struct.i2c_client*, i32 }
%struct.device = type { i32, i32, i32, %struct.i2c_adapter* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SMM665_ADOC_ENABLE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SMM665_REGMASK = common dso_local global i32 0, align 4
@SMM665_CMDREG_BASE = common dso_local global i32 0, align 4
@SMM665_ADC_WAIT_SMM665 = common dso_local global i32 0, align 4
@SMM665_ADC_WAIT_SMM766 = common dso_local global i32 0, align 4
@SMM665_MISC8_CMD_STS = common dso_local global i32 0, align 4
@SMM665_NUM_ADC = common dso_local global i32 0, align 4
@SMM665_LIMIT_BASE = common dso_local global i64 0, align 8
@smm665_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @smm665_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smm665_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.smm665_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 3
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %6, align 8
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %16 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %17 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %272

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load i32, i32* @SMM665_ADOC_ENABLE, align 4
  %27 = call i64 @i2c_smbus_read_byte_data(%struct.i2c_client* %25, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %272

32:                                               ; preds = %24
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 2
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.smm665_data* @devm_kzalloc(i32* %34, i32 72, i32 %35)
  store %struct.smm665_data* %36, %struct.smm665_data** %7, align 8
  %37 = load %struct.smm665_data*, %struct.smm665_data** %7, align 8
  %38 = icmp ne %struct.smm665_data* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %272

42:                                               ; preds = %32
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = load %struct.smm665_data*, %struct.smm665_data** %7, align 8
  %45 = call i32 @i2c_set_clientdata(%struct.i2c_client* %43, %struct.smm665_data* %44)
  %46 = load %struct.smm665_data*, %struct.smm665_data** %7, align 8
  %47 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %46, i32 0, i32 8
  %48 = call i32 @mutex_init(i32* %47)
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = load %struct.smm665_data*, %struct.smm665_data** %7, align 8
  %51 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %50, i32 0, i32 7
  store %struct.i2c_client* %49, %struct.i2c_client** %51, align 8
  %52 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %53 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.smm665_data*, %struct.smm665_data** %7, align 8
  %56 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SMM665_REGMASK, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = load i32, i32* @SMM665_CMDREG_BASE, align 4
  %65 = or i32 %63, %64
  %66 = call %struct.i2c_client* @i2c_new_dummy_device(%struct.i2c_adapter* %57, i32 %65)
  %67 = load %struct.smm665_data*, %struct.smm665_data** %7, align 8
  %68 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %67, i32 0, i32 1
  store %struct.i2c_client* %66, %struct.i2c_client** %68, align 8
  %69 = load %struct.smm665_data*, %struct.smm665_data** %7, align 8
  %70 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %69, i32 0, i32 1
  %71 = load %struct.i2c_client*, %struct.i2c_client** %70, align 8
  %72 = call i64 @IS_ERR(%struct.i2c_client* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %42
  %75 = load %struct.smm665_data*, %struct.smm665_data** %7, align 8
  %76 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %75, i32 0, i32 1
  %77 = load %struct.i2c_client*, %struct.i2c_client** %76, align 8
  %78 = call i32 @PTR_ERR(%struct.i2c_client* %77)
  store i32 %78, i32* %3, align 4
  br label %272

79:                                               ; preds = %42
  %80 = load %struct.smm665_data*, %struct.smm665_data** %7, align 8
  %81 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %91 [
    i32 132, label %83
    i32 131, label %83
    i32 130, label %87
    i32 129, label %87
    i32 128, label %87
  ]

83:                                               ; preds = %79, %79
  %84 = load i32, i32* @SMM665_ADC_WAIT_SMM665, align 4
  %85 = load %struct.smm665_data*, %struct.smm665_data** %7, align 8
  %86 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 8
  br label %91

87:                                               ; preds = %79, %79, %79
  %88 = load i32, i32* @SMM665_ADC_WAIT_SMM766, align 4
  %89 = load %struct.smm665_data*, %struct.smm665_data** %7, align 8
  %90 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %79, %87, %83
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %10, align 4
  %94 = load %struct.smm665_data*, %struct.smm665_data** %7, align 8
  %95 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %94, i32 0, i32 1
  %96 = load %struct.i2c_client*, %struct.i2c_client** %95, align 8
  %97 = load i32, i32* @SMM665_MISC8_CMD_STS, align 4
  %98 = call i64 @i2c_smbus_read_byte_data(%struct.i2c_client* %96, i32 %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %266

101:                                              ; preds = %91
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %244, %101
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @SMM665_NUM_ADC, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %247

106:                                              ; preds = %102
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = load i64, i64* @SMM665_LIMIT_BASE, align 8
  %109 = load i32, i32* %9, align 4
  %110 = mul nsw i32 %109, 8
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %108, %111
  %113 = call i32 @smm665_read16(%struct.i2c_client* %107, i64 %112)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp slt i32 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i64 @unlikely(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %106
  br label %266

120:                                              ; preds = %106
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i8* @smm665_convert(i32 %121, i32 %122)
  %124 = load %struct.smm665_data*, %struct.smm665_data** %7, align 8
  %125 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %124, i32 0, i32 4
  %126 = load i8**, i8*** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  store i8* %123, i8** %129, align 8
  %130 = load %struct.smm665_data*, %struct.smm665_data** %7, align 8
  %131 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %130, i32 0, i32 5
  %132 = load i8**, i8*** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  store i8* %123, i8** %135, align 8
  %136 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %137 = load i64, i64* @SMM665_LIMIT_BASE, align 8
  %138 = load i32, i32* %9, align 4
  %139 = mul nsw i32 %138, 8
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %137, %140
  %142 = add nsw i64 %141, 2
  %143 = call i32 @smm665_read16(%struct.i2c_client* %136, i64 %142)
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp slt i32 %144, 0
  %146 = zext i1 %145 to i32
  %147 = call i64 @unlikely(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %120
  br label %266

150:                                              ; preds = %120
  %151 = load i32, i32* %11, align 4
  %152 = call i64 @smm665_is_critical(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %150
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %9, align 4
  %157 = call i8* @smm665_convert(i32 %155, i32 %156)
  %158 = load %struct.smm665_data*, %struct.smm665_data** %7, align 8
  %159 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %158, i32 0, i32 5
  %160 = load i8**, i8*** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  store i8* %157, i8** %163, align 8
  br label %174

164:                                              ; preds = %150
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %9, align 4
  %167 = call i8* @smm665_convert(i32 %165, i32 %166)
  %168 = load %struct.smm665_data*, %struct.smm665_data** %7, align 8
  %169 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %168, i32 0, i32 4
  %170 = load i8**, i8*** %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %170, i64 %172
  store i8* %167, i8** %173, align 8
  br label %174

174:                                              ; preds = %164, %154
  %175 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %176 = load i64, i64* @SMM665_LIMIT_BASE, align 8
  %177 = load i32, i32* %9, align 4
  %178 = mul nsw i32 %177, 8
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %176, %179
  %181 = add nsw i64 %180, 4
  %182 = call i32 @smm665_read16(%struct.i2c_client* %175, i64 %181)
  store i32 %182, i32* %11, align 4
  %183 = load i32, i32* %11, align 4
  %184 = icmp slt i32 %183, 0
  %185 = zext i1 %184 to i32
  %186 = call i64 @unlikely(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %174
  br label %266

189:                                              ; preds = %174
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* %9, align 4
  %192 = call i8* @smm665_convert(i32 %190, i32 %191)
  %193 = load %struct.smm665_data*, %struct.smm665_data** %7, align 8
  %194 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %193, i32 0, i32 2
  %195 = load i8**, i8*** %194, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8*, i8** %195, i64 %197
  store i8* %192, i8** %198, align 8
  %199 = load %struct.smm665_data*, %struct.smm665_data** %7, align 8
  %200 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %199, i32 0, i32 3
  %201 = load i8**, i8*** %200, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %201, i64 %203
  store i8* %192, i8** %204, align 8
  %205 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %206 = load i64, i64* @SMM665_LIMIT_BASE, align 8
  %207 = load i32, i32* %9, align 4
  %208 = mul nsw i32 %207, 8
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %206, %209
  %211 = add nsw i64 %210, 6
  %212 = call i32 @smm665_read16(%struct.i2c_client* %205, i64 %211)
  store i32 %212, i32* %11, align 4
  %213 = load i32, i32* %11, align 4
  %214 = icmp slt i32 %213, 0
  %215 = zext i1 %214 to i32
  %216 = call i64 @unlikely(i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %189
  br label %266

219:                                              ; preds = %189
  %220 = load i32, i32* %11, align 4
  %221 = call i64 @smm665_is_critical(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %233

223:                                              ; preds = %219
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* %9, align 4
  %226 = call i8* @smm665_convert(i32 %224, i32 %225)
  %227 = load %struct.smm665_data*, %struct.smm665_data** %7, align 8
  %228 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %227, i32 0, i32 3
  %229 = load i8**, i8*** %228, align 8
  %230 = load i32, i32* %9, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8*, i8** %229, i64 %231
  store i8* %226, i8** %232, align 8
  br label %243

233:                                              ; preds = %219
  %234 = load i32, i32* %11, align 4
  %235 = load i32, i32* %9, align 4
  %236 = call i8* @smm665_convert(i32 %234, i32 %235)
  %237 = load %struct.smm665_data*, %struct.smm665_data** %7, align 8
  %238 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %237, i32 0, i32 2
  %239 = load i8**, i8*** %238, align 8
  %240 = load i32, i32* %9, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8*, i8** %239, i64 %241
  store i8* %236, i8** %242, align 8
  br label %243

243:                                              ; preds = %233, %223
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %9, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %9, align 4
  br label %102

247:                                              ; preds = %102
  %248 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %249 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %248, i32 0, i32 2
  %250 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %251 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.smm665_data*, %struct.smm665_data** %7, align 8
  %254 = load i32, i32* @smm665_groups, align 4
  %255 = call %struct.i2c_client* @devm_hwmon_device_register_with_groups(i32* %249, i32 %252, %struct.smm665_data* %253, i32 %254)
  %256 = bitcast %struct.i2c_client* %255 to %struct.device*
  store %struct.device* %256, %struct.device** %8, align 8
  %257 = load %struct.device*, %struct.device** %8, align 8
  %258 = bitcast %struct.device* %257 to %struct.i2c_client*
  %259 = call i64 @IS_ERR(%struct.i2c_client* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %247
  %262 = load %struct.device*, %struct.device** %8, align 8
  %263 = bitcast %struct.device* %262 to %struct.i2c_client*
  %264 = call i32 @PTR_ERR(%struct.i2c_client* %263)
  store i32 %264, i32* %10, align 4
  br label %266

265:                                              ; preds = %247
  store i32 0, i32* %3, align 4
  br label %272

266:                                              ; preds = %261, %218, %188, %149, %119, %100
  %267 = load %struct.smm665_data*, %struct.smm665_data** %7, align 8
  %268 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %267, i32 0, i32 1
  %269 = load %struct.i2c_client*, %struct.i2c_client** %268, align 8
  %270 = call i32 @i2c_unregister_device(%struct.i2c_client* %269)
  %271 = load i32, i32* %10, align 4
  store i32 %271, i32* %3, align 4
  br label %272

272:                                              ; preds = %266, %265, %74, %39, %29, %21
  %273 = load i32, i32* %3, align 4
  ret i32 %273
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i64 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local %struct.smm665_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.smm665_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.i2c_client* @i2c_new_dummy_device(%struct.i2c_adapter*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i2c_client*) #1

declare dso_local i32 @PTR_ERR(%struct.i2c_client*) #1

declare dso_local i32 @smm665_read16(%struct.i2c_client*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @smm665_convert(i32, i32) #1

declare dso_local i64 @smm665_is_critical(i32) #1

declare dso_local %struct.i2c_client* @devm_hwmon_device_register_with_groups(i32*, i32, %struct.smm665_data*, i32) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
