; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_dme1737_create_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_dme1737_create_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.dme1737_data = type { i32, i32, i32*, i32 }

@dev_attr_name = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@dme1737_group = common dso_local global i32 0, align 4
@HAS_TEMP_OFFSET = common dso_local global i32 0, align 4
@dme1737_temp_offset_group = common dso_local global i32 0, align 4
@HAS_VID = common dso_local global i32 0, align 4
@dme1737_vid_group = common dso_local global i32 0, align 4
@HAS_ZONE3 = common dso_local global i32 0, align 4
@dme1737_zone3_group = common dso_local global i32 0, align 4
@HAS_ZONE_HYST = common dso_local global i32 0, align 4
@dme1737_zone_hyst_group = common dso_local global i32 0, align 4
@HAS_IN7 = common dso_local global i32 0, align 4
@dme1737_in7_group = common dso_local global i32 0, align 4
@dme1737_fan_group = common dso_local global i32* null, align 8
@dme1737_pwm_group = common dso_local global i32* null, align 8
@HAS_PWM_MIN = common dso_local global i32 0, align 4
@dme1737_auto_pwm_min_attr = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [54 x i8] c"Device is locked. Some attributes will be read-only.\0A\00", align 1
@dme1737_zone_chmod_group = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@dme1737_zone3_chmod_group = common dso_local global i32 0, align 4
@dme1737_pwm_chmod_group = common dso_local global i32* null, align 8
@dme1737_pwm_chmod_attr = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @dme1737_create_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dme1737_create_files(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.dme1737_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.dme1737_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.dme1737_data* %8, %struct.dme1737_data** %4, align 8
  %9 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %10 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = call i32 @sysfs_create_file(i32* %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev_attr_name, i32 0, i32 0))
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %330

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = call i32 @sysfs_create_group(i32* %23, i32* @dme1737_group)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %327

28:                                               ; preds = %21
  %29 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %30 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @HAS_TEMP_OFFSET, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.device*, %struct.device** %3, align 8
  %37 = getelementptr inbounds %struct.device, %struct.device* %36, i32 0, i32 0
  %38 = call i32 @sysfs_create_group(i32* %37, i32* @dme1737_temp_offset_group)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %327

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %28
  %44 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %45 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @HAS_VID, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.device*, %struct.device** %3, align 8
  %52 = getelementptr inbounds %struct.device, %struct.device* %51, i32 0, i32 0
  %53 = call i32 @sysfs_create_group(i32* %52, i32* @dme1737_vid_group)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %327

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %43
  %59 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %60 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @HAS_ZONE3, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load %struct.device*, %struct.device** %3, align 8
  %67 = getelementptr inbounds %struct.device, %struct.device* %66, i32 0, i32 0
  %68 = call i32 @sysfs_create_group(i32* %67, i32* @dme1737_zone3_group)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %327

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %58
  %74 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %75 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @HAS_ZONE_HYST, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = load %struct.device*, %struct.device** %3, align 8
  %82 = getelementptr inbounds %struct.device, %struct.device* %81, i32 0, i32 0
  %83 = call i32 @sysfs_create_group(i32* %82, i32* @dme1737_zone_hyst_group)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %327

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %73
  %89 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %90 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @HAS_IN7, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %88
  %96 = load %struct.device*, %struct.device** %3, align 8
  %97 = getelementptr inbounds %struct.device, %struct.device* %96, i32 0, i32 0
  %98 = call i32 @sysfs_create_group(i32* %97, i32* @dme1737_in7_group)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %327

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102, %88
  store i32 0, i32* %6, align 4
  br label %104

104:                                              ; preds = %130, %103
  %105 = load i32, i32* %6, align 4
  %106 = load i32*, i32** @dme1737_fan_group, align 8
  %107 = call i32 @ARRAY_SIZE(i32* %106)
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %109, label %133

109:                                              ; preds = %104
  %110 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %111 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @HAS_FAN(i32 %113)
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %109
  %118 = load %struct.device*, %struct.device** %3, align 8
  %119 = getelementptr inbounds %struct.device, %struct.device* %118, i32 0, i32 0
  %120 = load i32*, i32** @dme1737_fan_group, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = call i32 @sysfs_create_group(i32* %119, i32* %123)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %117
  br label %327

128:                                              ; preds = %117
  br label %129

129:                                              ; preds = %128, %109
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %104

133:                                              ; preds = %104
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %183, %133
  %135 = load i32, i32* %6, align 4
  %136 = load i32*, i32** @dme1737_pwm_group, align 8
  %137 = call i32 @ARRAY_SIZE(i32* %136)
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %139, label %186

139:                                              ; preds = %134
  %140 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %141 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @HAS_PWM(i32 %143)
  %145 = and i32 %142, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %182

147:                                              ; preds = %139
  %148 = load %struct.device*, %struct.device** %3, align 8
  %149 = getelementptr inbounds %struct.device, %struct.device* %148, i32 0, i32 0
  %150 = load i32*, i32** @dme1737_pwm_group, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = call i32 @sysfs_create_group(i32* %149, i32* %153)
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %147
  br label %327

158:                                              ; preds = %147
  %159 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %160 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @HAS_PWM_MIN, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %181

165:                                              ; preds = %158
  %166 = load i32, i32* %6, align 4
  %167 = icmp slt i32 %166, 3
  br i1 %167, label %168, label %181

168:                                              ; preds = %165
  %169 = load %struct.device*, %struct.device** %3, align 8
  %170 = getelementptr inbounds %struct.device, %struct.device* %169, i32 0, i32 0
  %171 = load i32**, i32*** @dme1737_auto_pwm_min_attr, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32*, i32** %171, i64 %173
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 @sysfs_create_file(i32* %170, i32* %175)
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %168
  br label %327

180:                                              ; preds = %168
  br label %181

181:                                              ; preds = %180, %165, %158
  br label %182

182:                                              ; preds = %181, %139
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %6, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %6, align 4
  br label %134

186:                                              ; preds = %134
  %187 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %188 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, 2
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %186
  %193 = load %struct.device*, %struct.device** %3, align 8
  %194 = call i32 @dev_info(%struct.device* %193, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %326

195:                                              ; preds = %186
  %196 = load %struct.device*, %struct.device** %3, align 8
  %197 = load i32, i32* @S_IRUGO, align 4
  %198 = load i32, i32* @S_IWUSR, align 4
  %199 = or i32 %197, %198
  %200 = call i32 @dme1737_chmod_group(%struct.device* %196, i32* @dme1737_zone_chmod_group, i32 %199)
  %201 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %202 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @HAS_TEMP_OFFSET, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %195
  %208 = load %struct.device*, %struct.device** %3, align 8
  %209 = load i32, i32* @S_IRUGO, align 4
  %210 = load i32, i32* @S_IWUSR, align 4
  %211 = or i32 %209, %210
  %212 = call i32 @dme1737_chmod_group(%struct.device* %208, i32* @dme1737_temp_offset_group, i32 %211)
  br label %213

213:                                              ; preds = %207, %195
  %214 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %215 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @HAS_ZONE3, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %213
  %221 = load %struct.device*, %struct.device** %3, align 8
  %222 = load i32, i32* @S_IRUGO, align 4
  %223 = load i32, i32* @S_IWUSR, align 4
  %224 = or i32 %222, %223
  %225 = call i32 @dme1737_chmod_group(%struct.device* %221, i32* @dme1737_zone3_chmod_group, i32 %224)
  br label %226

226:                                              ; preds = %220, %213
  %227 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %228 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @HAS_ZONE_HYST, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %226
  %234 = load %struct.device*, %struct.device** %3, align 8
  %235 = load i32, i32* @S_IRUGO, align 4
  %236 = load i32, i32* @S_IWUSR, align 4
  %237 = or i32 %235, %236
  %238 = call i32 @dme1737_chmod_group(%struct.device* %234, i32* @dme1737_zone_hyst_group, i32 %237)
  br label %239

239:                                              ; preds = %233, %226
  store i32 0, i32* %6, align 4
  br label %240

240:                                              ; preds = %285, %239
  %241 = load i32, i32* %6, align 4
  %242 = load i32*, i32** @dme1737_pwm_chmod_group, align 8
  %243 = call i32 @ARRAY_SIZE(i32* %242)
  %244 = icmp slt i32 %241, %243
  br i1 %244, label %245, label %288

245:                                              ; preds = %240
  %246 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %247 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* %6, align 4
  %250 = call i32 @HAS_PWM(i32 %249)
  %251 = and i32 %248, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %284

253:                                              ; preds = %245
  %254 = load %struct.device*, %struct.device** %3, align 8
  %255 = load i32*, i32** @dme1737_pwm_chmod_group, align 8
  %256 = load i32, i32* %6, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* @S_IRUGO, align 4
  %260 = load i32, i32* @S_IWUSR, align 4
  %261 = or i32 %259, %260
  %262 = call i32 @dme1737_chmod_group(%struct.device* %254, i32* %258, i32 %261)
  %263 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %264 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @HAS_PWM_MIN, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %283

269:                                              ; preds = %253
  %270 = load i32, i32* %6, align 4
  %271 = icmp slt i32 %270, 3
  br i1 %271, label %272, label %283

272:                                              ; preds = %269
  %273 = load %struct.device*, %struct.device** %3, align 8
  %274 = load i32**, i32*** @dme1737_auto_pwm_min_attr, align 8
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32*, i32** %274, i64 %276
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* @S_IRUGO, align 4
  %280 = load i32, i32* @S_IWUSR, align 4
  %281 = or i32 %279, %280
  %282 = call i32 @dme1737_chmod_file(%struct.device* %273, i32* %278, i32 %281)
  br label %283

283:                                              ; preds = %272, %269, %253
  br label %284

284:                                              ; preds = %283, %245
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %6, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %6, align 4
  br label %240

288:                                              ; preds = %240
  store i32 0, i32* %6, align 4
  br label %289

289:                                              ; preds = %322, %288
  %290 = load i32, i32* %6, align 4
  %291 = icmp slt i32 %290, 3
  br i1 %291, label %292, label %325

292:                                              ; preds = %289
  %293 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %294 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* %6, align 4
  %297 = call i32 @HAS_PWM(i32 %296)
  %298 = and i32 %295, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %321

300:                                              ; preds = %292
  %301 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %302 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %301, i32 0, i32 2
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %6, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @PWM_EN_FROM_REG(i32 %307)
  %309 = icmp eq i32 %308, 1
  br i1 %309, label %310, label %321

310:                                              ; preds = %300
  %311 = load %struct.device*, %struct.device** %3, align 8
  %312 = load i32**, i32*** @dme1737_pwm_chmod_attr, align 8
  %313 = load i32, i32* %6, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32*, i32** %312, i64 %314
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* @S_IRUGO, align 4
  %318 = load i32, i32* @S_IWUSR, align 4
  %319 = or i32 %317, %318
  %320 = call i32 @dme1737_chmod_file(%struct.device* %311, i32* %316, i32 %319)
  br label %321

321:                                              ; preds = %310, %300, %292
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %6, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %6, align 4
  br label %289

325:                                              ; preds = %289
  br label %326

326:                                              ; preds = %325, %192
  store i32 0, i32* %2, align 4
  br label %332

327:                                              ; preds = %179, %157, %127, %101, %86, %71, %56, %41, %27
  %328 = load %struct.device*, %struct.device** %3, align 8
  %329 = call i32 @dme1737_remove_files(%struct.device* %328)
  br label %330

330:                                              ; preds = %327, %19
  %331 = load i32, i32* %5, align 4
  store i32 %331, i32* %2, align 4
  br label %332

332:                                              ; preds = %330, %326
  %333 = load i32, i32* %2, align 4
  ret i32 %333
}

declare dso_local %struct.dme1737_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sysfs_create_file(i32*, i32*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @HAS_FAN(i32) #1

declare dso_local i32 @HAS_PWM(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @dme1737_chmod_group(%struct.device*, i32*, i32) #1

declare dso_local i32 @dme1737_chmod_file(%struct.device*, i32*, i32) #1

declare dso_local i32 @PWM_EN_FROM_REG(i32) #1

declare dso_local i32 @dme1737_remove_files(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
