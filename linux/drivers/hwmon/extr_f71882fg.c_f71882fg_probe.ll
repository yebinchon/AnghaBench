; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_f71882fg_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_f71882fg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.f71882fg_data = type { i64, i32, i32, i32, i32*, i8*, i32, i32 }
%struct.f71882fg_sio_data = type { i64 }
%struct.TYPE_3__ = type { i32 }

@f71882fg_nr_fans = common dso_local global i32* null, align 8
@f71882fg_nr_temps = common dso_local global i32* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@F71882FG_REG_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Hardware monitor is powered down\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Hardware monitoring not activated\0A\00", align 1
@dev_attr_name = common dso_local global i32 0, align 4
@F71882FG_REG_TEMP_CONFIG = common dso_local global i32 0, align 4
@f8000_temp_attr = common dso_local global i32* null, align 8
@f71858fg_temp_attr = common dso_local global i32* null, align 8
@fxxxx_temp_attr = common dso_local global i32** null, align 8
@f71882fg_temp_has_beep = common dso_local global i64* null, align 8
@f81866_temp_beep_attr = common dso_local global i32** null, align 8
@fxxxx_temp_beep_attr = common dso_local global i32** null, align 8
@F71882FG_MAX_INS = common dso_local global i32 0, align 4
@f71882fg_has_in = common dso_local global i64** null, align 8
@fxxxx_in_attr = common dso_local global %struct.TYPE_4__* null, align 8
@f71882fg_has_in1_alarm = common dso_local global i64* null, align 8
@fxxxx_in1_alarm_attr = common dso_local global i32* null, align 8
@F71882FG_REG_FAN_FAULT_T = common dso_local global i32 0, align 4
@F71882FG_FAN_NEG_TEMP_EN = common dso_local global i32 0, align 4
@F71882FG_FAN_PROG_SEL = common dso_local global i32 0, align 4
@F71882FG_REG_PWM_ENABLE = common dso_local global i32 0, align 4
@f71808a_fan3_attr = common dso_local global i32* null, align 8
@f8000_fan_attr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @f71882fg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f71882fg_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.f71882fg_data*, align 8
  %5 = alloca %struct.f71882fg_sio_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call %struct.f71882fg_sio_data* @dev_get_platdata(i32* %14)
  store %struct.f71882fg_sio_data* %15, %struct.f71882fg_sio_data** %5, align 8
  %16 = load i32*, i32** @f71882fg_nr_fans, align 8
  %17 = load %struct.f71882fg_sio_data*, %struct.f71882fg_sio_data** %5, align 8
  %18 = getelementptr inbounds %struct.f71882fg_sio_data, %struct.f71882fg_sio_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32*, i32** @f71882fg_nr_temps, align 8
  %23 = load %struct.f71882fg_sio_data*, %struct.f71882fg_sio_data** %5, align 8
  %24 = getelementptr inbounds %struct.f71882fg_sio_data, %struct.f71882fg_sio_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.f71882fg_data* @devm_kzalloc(i32* %29, i32 48, i32 %30)
  store %struct.f71882fg_data* %31, %struct.f71882fg_data** %4, align 8
  %32 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %33 = icmp ne %struct.f71882fg_data* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %366

37:                                               ; preds = %1
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load i32, i32* @IORESOURCE_IO, align 4
  %40 = call %struct.TYPE_3__* @platform_get_resource(%struct.platform_device* %38, i32 %39, i32 0)
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %44 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 4
  %45 = load %struct.f71882fg_sio_data*, %struct.f71882fg_sio_data** %5, align 8
  %46 = getelementptr inbounds %struct.f71882fg_sio_data, %struct.f71882fg_sio_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %49 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %51 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 135
  br i1 %53, label %64, label %54

54:                                               ; preds = %37
  %55 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %56 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 129
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %61 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 128
  br label %64

64:                                               ; preds = %59, %54, %37
  %65 = phi i1 [ true, %54 ], [ true, %37 ], [ %63, %59 ]
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 0, i32 1
  %68 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %69 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %71 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %70, i32 0, i32 6
  %72 = call i32 @mutex_init(i32* %71)
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %75 = call i32 @platform_set_drvdata(%struct.platform_device* %73, %struct.f71882fg_data* %74)
  %76 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %77 = load i32, i32* @F71882FG_REG_START, align 4
  %78 = call i8* @f71882fg_read8(%struct.f71882fg_data* %76, i32 %77)
  %79 = ptrtoint i8* %78 to i32
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = and i32 %80, 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %64
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @dev_warn(i32* %85, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* @ENODEV, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %366

89:                                               ; preds = %64
  %90 = load i32, i32* %11, align 4
  %91 = and i32 %90, 3
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call i32 @dev_warn(i32* %95, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i32, i32* @ENODEV, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %366

99:                                               ; preds = %89
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = call i32 @device_create_file(i32* %101, i32* @dev_attr_name)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %362

106:                                              ; preds = %99
  %107 = load i32, i32* %11, align 4
  %108 = and i32 %107, 1
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %267

110:                                              ; preds = %106
  %111 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %112 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  switch i64 %113, label %151 [
    i64 135, label %114
    i64 129, label %139
    i64 128, label %145
  ]

114:                                              ; preds = %110
  %115 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %116 = load i32, i32* @F71882FG_REG_TEMP_CONFIG, align 4
  %117 = call i8* @f71882fg_read8(%struct.f71882fg_data* %115, i32 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %120 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %122 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 16
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %114
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = load i32*, i32** @f8000_temp_attr, align 8
  %129 = load i32*, i32** @f8000_temp_attr, align 8
  %130 = call i32 @ARRAY_SIZE(i32* %129)
  %131 = call i32 @f71882fg_create_sysfs_files(%struct.platform_device* %127, i32* %128, i32 %130)
  store i32 %131, i32* %8, align 4
  br label %138

132:                                              ; preds = %114
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = load i32*, i32** @f71858fg_temp_attr, align 8
  %135 = load i32*, i32** @f71858fg_temp_attr, align 8
  %136 = call i32 @ARRAY_SIZE(i32* %135)
  %137 = call i32 @f71882fg_create_sysfs_files(%struct.platform_device* %133, i32* %134, i32 %136)
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %132, %126
  br label %164

139:                                              ; preds = %110
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = load i32*, i32** @f8000_temp_attr, align 8
  %142 = load i32*, i32** @f8000_temp_attr, align 8
  %143 = call i32 @ARRAY_SIZE(i32* %142)
  %144 = call i32 @f71882fg_create_sysfs_files(%struct.platform_device* %140, i32* %141, i32 %143)
  store i32 %144, i32* %8, align 4
  br label %164

145:                                              ; preds = %110
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = load i32*, i32** @f71858fg_temp_attr, align 8
  %148 = load i32*, i32** @f71858fg_temp_attr, align 8
  %149 = call i32 @ARRAY_SIZE(i32* %148)
  %150 = call i32 @f71882fg_create_sysfs_files(%struct.platform_device* %146, i32* %147, i32 %149)
  store i32 %150, i32* %8, align 4
  br label %164

151:                                              ; preds = %110
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = load i32**, i32*** @fxxxx_temp_attr, align 8
  %154 = getelementptr inbounds i32*, i32** %153, i64 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32**, i32*** @fxxxx_temp_attr, align 8
  %158 = getelementptr inbounds i32*, i32** %157, i64 0
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @ARRAY_SIZE(i32* %159)
  %161 = load i32, i32* %7, align 4
  %162 = mul nsw i32 %160, %161
  %163 = call i32 @f71882fg_create_sysfs_files(%struct.platform_device* %152, i32* %156, i32 %162)
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %151, %145, %139, %138
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  br label %362

168:                                              ; preds = %164
  %169 = load i64*, i64** @f71882fg_temp_has_beep, align 8
  %170 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %171 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds i64, i64* %169, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %214

176:                                              ; preds = %168
  %177 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %178 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %179, 128
  br i1 %180, label %181, label %195

181:                                              ; preds = %176
  %182 = load i32**, i32*** @f81866_temp_beep_attr, align 8
  %183 = getelementptr inbounds i32*, i32** %182, i64 0
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @ARRAY_SIZE(i32* %184)
  store i32 %185, i32* %10, align 4
  %186 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %187 = load i32**, i32*** @f81866_temp_beep_attr, align 8
  %188 = getelementptr inbounds i32*, i32** %187, i64 0
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* %7, align 4
  %193 = mul nsw i32 %191, %192
  %194 = call i32 @f71882fg_create_sysfs_files(%struct.platform_device* %186, i32* %190, i32 %193)
  store i32 %194, i32* %8, align 4
  br label %209

195:                                              ; preds = %176
  %196 = load i32**, i32*** @fxxxx_temp_beep_attr, align 8
  %197 = getelementptr inbounds i32*, i32** %196, i64 0
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @ARRAY_SIZE(i32* %198)
  store i32 %199, i32* %10, align 4
  %200 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %201 = load i32**, i32*** @fxxxx_temp_beep_attr, align 8
  %202 = getelementptr inbounds i32*, i32** %201, i64 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* %7, align 4
  %207 = mul nsw i32 %205, %206
  %208 = call i32 @f71882fg_create_sysfs_files(%struct.platform_device* %200, i32* %204, i32 %207)
  store i32 %208, i32* %8, align 4
  br label %209

209:                                              ; preds = %195, %181
  %210 = load i32, i32* %8, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  br label %362

213:                                              ; preds = %209
  br label %214

214:                                              ; preds = %213, %168
  store i32 0, i32* %9, align 4
  br label %215

215:                                              ; preds = %245, %214
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* @F71882FG_MAX_INS, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %248

219:                                              ; preds = %215
  %220 = load i64**, i64*** @f71882fg_has_in, align 8
  %221 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %222 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds i64*, i64** %220, i64 %223
  %225 = load i64*, i64** %224, align 8
  %226 = load i32, i32* %9, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i64, i64* %225, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %244

231:                                              ; preds = %219
  %232 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %233 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %232, i32 0, i32 0
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fxxxx_in_attr, align 8
  %235 = load i32, i32* %9, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = call i32 @device_create_file(i32* %233, i32* %238)
  store i32 %239, i32* %8, align 4
  %240 = load i32, i32* %8, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %231
  br label %362

243:                                              ; preds = %231
  br label %244

244:                                              ; preds = %243, %219
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %9, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %9, align 4
  br label %215

248:                                              ; preds = %215
  %249 = load i64*, i64** @f71882fg_has_in1_alarm, align 8
  %250 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %251 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = getelementptr inbounds i64, i64* %249, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %266

256:                                              ; preds = %248
  %257 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %258 = load i32*, i32** @fxxxx_in1_alarm_attr, align 8
  %259 = load i32*, i32** @fxxxx_in1_alarm_attr, align 8
  %260 = call i32 @ARRAY_SIZE(i32* %259)
  %261 = call i32 @f71882fg_create_sysfs_files(%struct.platform_device* %257, i32* %258, i32 %260)
  store i32 %261, i32* %8, align 4
  %262 = load i32, i32* %8, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %256
  br label %362

265:                                              ; preds = %256
  br label %266

266:                                              ; preds = %265, %248
  br label %267

267:                                              ; preds = %266, %106
  %268 = load i32, i32* %11, align 4
  %269 = and i32 %268, 2
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %343

271:                                              ; preds = %267
  %272 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %273 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  switch i64 %274, label %299 [
    i64 136, label %275
    i64 137, label %275
    i64 134, label %275
    i64 133, label %275
    i64 130, label %278
    i64 131, label %278
    i64 132, label %278
  ]

275:                                              ; preds = %271, %271, %271, %271
  %276 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %277 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %276, i32 0, i32 3
  store i32 1, i32* %277, align 8
  br label %278

278:                                              ; preds = %271, %271, %271, %275
  %279 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %280 = load i32, i32* @F71882FG_REG_FAN_FAULT_T, align 4
  %281 = call i8* @f71882fg_read8(%struct.f71882fg_data* %279, i32 %280)
  %282 = ptrtoint i8* %281 to i32
  store i32 %282, i32* %12, align 4
  %283 = load i32, i32* %12, align 4
  %284 = load i32, i32* @F71882FG_FAN_NEG_TEMP_EN, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %278
  %288 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %289 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %288, i32 0, i32 3
  store i32 1, i32* %289, align 8
  br label %290

290:                                              ; preds = %287, %278
  %291 = load i32, i32* @F71882FG_FAN_PROG_SEL, align 4
  %292 = xor i32 %291, -1
  %293 = load i32, i32* %12, align 4
  %294 = and i32 %293, %292
  store i32 %294, i32* %12, align 4
  %295 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %296 = load i32, i32* @F71882FG_REG_FAN_FAULT_T, align 4
  %297 = load i32, i32* %12, align 4
  %298 = call i32 @f71882fg_write8(%struct.f71882fg_data* %295, i32 %296, i32 %297)
  br label %300

299:                                              ; preds = %271
  br label %300

300:                                              ; preds = %299, %290
  %301 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %302 = load i32, i32* @F71882FG_REG_PWM_ENABLE, align 4
  %303 = call i8* @f71882fg_read8(%struct.f71882fg_data* %301, i32 %302)
  %304 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %305 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %304, i32 0, i32 5
  store i8* %303, i8** %305, align 8
  store i32 0, i32* %9, align 4
  br label %306

306:                                              ; preds = %318, %300
  %307 = load i32, i32* %9, align 4
  %308 = load i32, i32* %6, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %321

310:                                              ; preds = %306
  %311 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %312 = load i32, i32* %9, align 4
  %313 = call i32 @f71882fg_create_fan_sysfs_files(%struct.platform_device* %311, i32 %312)
  store i32 %313, i32* %8, align 4
  %314 = load i32, i32* %8, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %310
  br label %362

317:                                              ; preds = %310
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* %9, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %9, align 4
  br label %306

321:                                              ; preds = %306
  %322 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %323 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  switch i64 %324, label %337 [
    i64 137, label %325
    i64 129, label %331
  ]

325:                                              ; preds = %321
  %326 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %327 = load i32*, i32** @f71808a_fan3_attr, align 8
  %328 = load i32*, i32** @f71808a_fan3_attr, align 8
  %329 = call i32 @ARRAY_SIZE(i32* %328)
  %330 = call i32 @f71882fg_create_sysfs_files(%struct.platform_device* %326, i32* %327, i32 %329)
  store i32 %330, i32* %8, align 4
  br label %338

331:                                              ; preds = %321
  %332 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %333 = load i32*, i32** @f8000_fan_attr, align 8
  %334 = load i32*, i32** @f8000_fan_attr, align 8
  %335 = call i32 @ARRAY_SIZE(i32* %334)
  %336 = call i32 @f71882fg_create_sysfs_files(%struct.platform_device* %332, i32* %333, i32 %335)
  store i32 %336, i32* %8, align 4
  br label %338

337:                                              ; preds = %321
  br label %338

338:                                              ; preds = %337, %331, %325
  %339 = load i32, i32* %8, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %338
  br label %362

342:                                              ; preds = %338
  br label %343

343:                                              ; preds = %342, %267
  %344 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %345 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %344, i32 0, i32 0
  %346 = call i32* @hwmon_device_register(i32* %345)
  %347 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %348 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %347, i32 0, i32 4
  store i32* %346, i32** %348, align 8
  %349 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %350 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %349, i32 0, i32 4
  %351 = load i32*, i32** %350, align 8
  %352 = call i64 @IS_ERR(i32* %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %361

354:                                              ; preds = %343
  %355 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %356 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %355, i32 0, i32 4
  %357 = load i32*, i32** %356, align 8
  %358 = call i32 @PTR_ERR(i32* %357)
  store i32 %358, i32* %8, align 4
  %359 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %360 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %359, i32 0, i32 4
  store i32* null, i32** %360, align 8
  br label %362

361:                                              ; preds = %343
  store i32 0, i32* %2, align 4
  br label %366

362:                                              ; preds = %354, %341, %316, %264, %242, %212, %167, %105
  %363 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %364 = call i32 @f71882fg_remove(%struct.platform_device* %363)
  %365 = load i32, i32* %8, align 4
  store i32 %365, i32* %2, align 4
  br label %366

366:                                              ; preds = %362, %361, %93, %83, %34
  %367 = load i32, i32* %2, align 4
  ret i32 %367
}

declare dso_local %struct.f71882fg_sio_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.f71882fg_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.f71882fg_data*) #1

declare dso_local i8* @f71882fg_read8(%struct.f71882fg_data*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @f71882fg_create_sysfs_files(%struct.platform_device*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @f71882fg_write8(%struct.f71882fg_data*, i32, i32) #1

declare dso_local i32 @f71882fg_create_fan_sysfs_files(%struct.platform_device*, i32) #1

declare dso_local i32* @hwmon_device_register(i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @f71882fg_remove(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
