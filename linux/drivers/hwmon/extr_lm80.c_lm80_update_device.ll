; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm80.c_lm80_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm80.c_lm80_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm80_data = type { i32, i32, i32**, i32**, i32*, i32*, i32, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Starting lm80 update\0A\00", align 1
@i_input = common dso_local global i64 0, align 8
@i_min = common dso_local global i64 0, align 8
@i_max = common dso_local global i64 0, align 8
@LM80_REG_FAN1 = common dso_local global i32 0, align 4
@f_input = common dso_local global i64 0, align 8
@f_min = common dso_local global i64 0, align 8
@LM80_REG_FAN2 = common dso_local global i32 0, align 4
@LM80_REG_TEMP = common dso_local global i32 0, align 4
@LM80_REG_RES = common dso_local global i32 0, align 4
@t_input = common dso_local global i64 0, align 8
@t_num_temp = common dso_local global i32 0, align 4
@temp_regs = common dso_local global i32* null, align 8
@LM80_REG_FANDIV = common dso_local global i32 0, align 4
@LM80_REG_ALARM1 = common dso_local global i32 0, align 4
@LM80_REG_ALARM2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lm80_data* (%struct.device*)* @lm80_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lm80_data* @lm80_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.lm80_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lm80_data*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.lm80_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.lm80_data* %10, %struct.lm80_data** %3, align 8
  %11 = load %struct.lm80_data*, %struct.lm80_data** %3, align 8
  %12 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %11, i32 0, i32 9
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %4, align 8
  %14 = load %struct.lm80_data*, %struct.lm80_data** %3, align 8
  store %struct.lm80_data* %14, %struct.lm80_data** %8, align 8
  %15 = load %struct.lm80_data*, %struct.lm80_data** %3, align 8
  %16 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %15, i32 0, i32 7
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.lm80_data*, %struct.lm80_data** %3, align 8
  %19 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = call i32 @lm80_init_client(%struct.i2c_client* %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load i64, i64* @jiffies, align 8
  %27 = load %struct.lm80_data*, %struct.lm80_data** %3, align 8
  %28 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %27, i32 0, i32 8
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @HZ, align 4
  %31 = mul nsw i32 2, %30
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %29, %32
  %34 = call i64 @time_after(i64 %26, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %25
  %37 = load %struct.lm80_data*, %struct.lm80_data** %3, align 8
  %38 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %269, label %41

41:                                               ; preds = %36, %25
  %42 = load %struct.device*, %struct.device** %2, align 8
  %43 = call i32 @dev_dbg(%struct.device* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %102, %41
  %45 = load i32, i32* %5, align 4
  %46 = icmp sle i32 %45, 6
  br i1 %46, label %47, label %105

47:                                               ; preds = %44
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @LM80_REG_IN(i32 %49)
  %51 = call i32 @lm80_read_value(%struct.i2c_client* %48, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %270

55:                                               ; preds = %47
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.lm80_data*, %struct.lm80_data** %3, align 8
  %58 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %57, i32 0, i32 2
  %59 = load i32**, i32*** %58, align 8
  %60 = load i64, i64* @i_input, align 8
  %61 = getelementptr inbounds i32*, i32** %59, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %56, i32* %65, align 4
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @LM80_REG_IN_MIN(i32 %67)
  %69 = call i32 @lm80_read_value(%struct.i2c_client* %66, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %55
  br label %270

73:                                               ; preds = %55
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.lm80_data*, %struct.lm80_data** %3, align 8
  %76 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %75, i32 0, i32 2
  %77 = load i32**, i32*** %76, align 8
  %78 = load i64, i64* @i_min, align 8
  %79 = getelementptr inbounds i32*, i32** %77, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %74, i32* %83, align 4
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @LM80_REG_IN_MAX(i32 %85)
  %87 = call i32 @lm80_read_value(%struct.i2c_client* %84, i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %73
  br label %270

91:                                               ; preds = %73
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.lm80_data*, %struct.lm80_data** %3, align 8
  %94 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %93, i32 0, i32 2
  %95 = load i32**, i32*** %94, align 8
  %96 = load i64, i64* @i_max, align 8
  %97 = getelementptr inbounds i32*, i32** %95, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %92, i32* %101, align 4
  br label %102

102:                                              ; preds = %91
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %44

105:                                              ; preds = %44
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = load i32, i32* @LM80_REG_FAN1, align 4
  %108 = call i32 @lm80_read_value(%struct.i2c_client* %106, i32 %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %270

112:                                              ; preds = %105
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.lm80_data*, %struct.lm80_data** %3, align 8
  %115 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %114, i32 0, i32 3
  %116 = load i32**, i32*** %115, align 8
  %117 = load i64, i64* @f_input, align 8
  %118 = getelementptr inbounds i32*, i32** %116, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  store i32 %113, i32* %120, align 4
  %121 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %122 = call i32 @LM80_REG_FAN_MIN(i32 1)
  %123 = call i32 @lm80_read_value(%struct.i2c_client* %121, i32 %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %112
  br label %270

127:                                              ; preds = %112
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.lm80_data*, %struct.lm80_data** %3, align 8
  %130 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %129, i32 0, i32 3
  %131 = load i32**, i32*** %130, align 8
  %132 = load i64, i64* @f_min, align 8
  %133 = getelementptr inbounds i32*, i32** %131, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  store i32 %128, i32* %135, align 4
  %136 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %137 = load i32, i32* @LM80_REG_FAN2, align 4
  %138 = call i32 @lm80_read_value(%struct.i2c_client* %136, i32 %137)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %127
  br label %270

142:                                              ; preds = %127
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.lm80_data*, %struct.lm80_data** %3, align 8
  %145 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %144, i32 0, i32 3
  %146 = load i32**, i32*** %145, align 8
  %147 = load i64, i64* @f_input, align 8
  %148 = getelementptr inbounds i32*, i32** %146, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  store i32 %143, i32* %150, align 4
  %151 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %152 = call i32 @LM80_REG_FAN_MIN(i32 2)
  %153 = call i32 @lm80_read_value(%struct.i2c_client* %151, i32 %152)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %142
  br label %270

157:                                              ; preds = %142
  %158 = load i32, i32* %6, align 4
  %159 = load %struct.lm80_data*, %struct.lm80_data** %3, align 8
  %160 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %159, i32 0, i32 3
  %161 = load i32**, i32*** %160, align 8
  %162 = load i64, i64* @f_min, align 8
  %163 = getelementptr inbounds i32*, i32** %161, i64 %162
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  store i32 %158, i32* %165, align 4
  %166 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %167 = load i32, i32* @LM80_REG_TEMP, align 4
  %168 = call i32 @lm80_read_value(%struct.i2c_client* %166, i32 %167)
  store i32 %168, i32* %6, align 4
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %157
  br label %270

172:                                              ; preds = %157
  %173 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %174 = load i32, i32* @LM80_REG_RES, align 4
  %175 = call i32 @lm80_read_value(%struct.i2c_client* %173, i32 %174)
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %172
  br label %270

179:                                              ; preds = %172
  %180 = load i32, i32* %7, align 4
  %181 = shl i32 %180, 8
  %182 = load i32, i32* %6, align 4
  %183 = and i32 %182, 240
  %184 = or i32 %181, %183
  %185 = load %struct.lm80_data*, %struct.lm80_data** %3, align 8
  %186 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %185, i32 0, i32 4
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* @t_input, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32 %184, i32* %189, align 4
  %190 = load i64, i64* @t_input, align 8
  %191 = add i64 %190, 1
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %5, align 4
  br label %193

193:                                              ; preds = %217, %179
  %194 = load i32, i32* %5, align 4
  %195 = load i32, i32* @t_num_temp, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %220

197:                                              ; preds = %193
  %198 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %199 = load i32*, i32** @temp_regs, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @lm80_read_value(%struct.i2c_client* %198, i32 %203)
  store i32 %204, i32* %6, align 4
  %205 = load i32, i32* %6, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %197
  br label %270

208:                                              ; preds = %197
  %209 = load i32, i32* %6, align 4
  %210 = shl i32 %209, 8
  %211 = load %struct.lm80_data*, %struct.lm80_data** %3, align 8
  %212 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %211, i32 0, i32 4
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %5, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %210, i32* %216, align 4
  br label %217

217:                                              ; preds = %208
  %218 = load i32, i32* %5, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %5, align 4
  br label %193

220:                                              ; preds = %193
  %221 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %222 = load i32, i32* @LM80_REG_FANDIV, align 4
  %223 = call i32 @lm80_read_value(%struct.i2c_client* %221, i32 %222)
  store i32 %223, i32* %6, align 4
  %224 = load i32, i32* %6, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %220
  br label %270

227:                                              ; preds = %220
  %228 = load i32, i32* %6, align 4
  %229 = ashr i32 %228, 2
  %230 = and i32 %229, 3
  %231 = load %struct.lm80_data*, %struct.lm80_data** %3, align 8
  %232 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %231, i32 0, i32 5
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 0
  store i32 %230, i32* %234, align 4
  %235 = load i32, i32* %6, align 4
  %236 = ashr i32 %235, 4
  %237 = and i32 %236, 3
  %238 = load %struct.lm80_data*, %struct.lm80_data** %3, align 8
  %239 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %238, i32 0, i32 5
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 1
  store i32 %237, i32* %241, align 4
  %242 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %243 = load i32, i32* @LM80_REG_ALARM1, align 4
  %244 = call i32 @lm80_read_value(%struct.i2c_client* %242, i32 %243)
  store i32 %244, i32* %6, align 4
  store i32 %244, i32* %7, align 4
  %245 = load i32, i32* %6, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %227
  br label %270

248:                                              ; preds = %227
  %249 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %250 = load i32, i32* @LM80_REG_ALARM2, align 4
  %251 = call i32 @lm80_read_value(%struct.i2c_client* %249, i32 %250)
  store i32 %251, i32* %6, align 4
  %252 = load i32, i32* %6, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %248
  br label %270

255:                                              ; preds = %248
  %256 = load i32, i32* %7, align 4
  %257 = load i32, i32* %6, align 4
  %258 = shl i32 %257, 8
  %259 = add nsw i32 %256, %258
  %260 = load %struct.lm80_data*, %struct.lm80_data** %3, align 8
  %261 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %260, i32 0, i32 6
  store i32 %259, i32* %261, align 8
  %262 = load i64, i64* @jiffies, align 8
  %263 = load %struct.lm80_data*, %struct.lm80_data** %3, align 8
  %264 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %263, i32 0, i32 8
  store i64 %262, i64* %264, align 8
  %265 = load %struct.lm80_data*, %struct.lm80_data** %3, align 8
  %266 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %265, i32 0, i32 1
  store i32 1, i32* %266, align 4
  %267 = load %struct.lm80_data*, %struct.lm80_data** %3, align 8
  %268 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %267, i32 0, i32 0
  store i32 0, i32* %268, align 8
  br label %269

269:                                              ; preds = %255, %36
  br label %277

270:                                              ; preds = %254, %247, %226, %207, %178, %171, %156, %141, %126, %111, %90, %72, %54
  %271 = load i32, i32* %6, align 4
  %272 = call %struct.lm80_data* @ERR_PTR(i32 %271)
  store %struct.lm80_data* %272, %struct.lm80_data** %8, align 8
  %273 = load %struct.lm80_data*, %struct.lm80_data** %3, align 8
  %274 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %273, i32 0, i32 1
  store i32 0, i32* %274, align 4
  %275 = load %struct.lm80_data*, %struct.lm80_data** %3, align 8
  %276 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %275, i32 0, i32 0
  store i32 1, i32* %276, align 8
  br label %277

277:                                              ; preds = %270, %269
  %278 = load %struct.lm80_data*, %struct.lm80_data** %3, align 8
  %279 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %278, i32 0, i32 7
  %280 = call i32 @mutex_unlock(i32* %279)
  %281 = load %struct.lm80_data*, %struct.lm80_data** %8, align 8
  ret %struct.lm80_data* %281
}

declare dso_local %struct.lm80_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lm80_init_client(%struct.i2c_client*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @lm80_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @LM80_REG_IN(i32) #1

declare dso_local i32 @LM80_REG_IN_MIN(i32) #1

declare dso_local i32 @LM80_REG_IN_MAX(i32) #1

declare dso_local i32 @LM80_REG_FAN_MIN(i32) #1

declare dso_local %struct.lm80_data* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
