; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_f71882fg_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_f71882fg_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f71882fg_data = type { i64, i32, i32, i32*, i32, i8*, i8**, i8*, i8**, i8**, i8**, i8**, i8*, i32*, i8*, i8*, i8*, i8***, i8***, i8**, i8**, i8*, i8*, i8*, i8**, i8**, i8**, i8*, i8* }
%struct.device = type { i32 }

@f71882fg_nr_fans = common dso_local global i32* null, align 8
@f71882fg_nr_temps = common dso_local global i32* null, align 8
@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@f71882fg_has_in1_alarm = common dso_local global i64* null, align 8
@f81866a = common dso_local global i64 0, align 8
@F81866_REG_IN1_HIGH = common dso_local global i32 0, align 4
@F81866_REG_IN_BEEP = common dso_local global i32 0, align 4
@F71882FG_REG_IN1_HIGH = common dso_local global i32 0, align 4
@F71882FG_REG_IN_BEEP = common dso_local global i32 0, align 4
@f8000 = common dso_local global i64 0, align 8
@f71858fg = common dso_local global i64 0, align 8
@F71882FG_REG_TEMP_TYPE = common dso_local global i32 0, align 4
@f71882fg_fan_has_beep = common dso_local global i64* null, align 8
@F71882FG_REG_FAN_BEEP = common dso_local global i32 0, align 4
@f71882fg_temp_has_beep = common dso_local global i64* null, align 8
@F71882FG_REG_TEMP_BEEP = common dso_local global i32 0, align 4
@F71882FG_REG_PWM_ENABLE = common dso_local global i32 0, align 4
@F71882FG_REG_TEMP_STATUS = common dso_local global i32 0, align 4
@F71882FG_REG_TEMP_DIODE_OPEN = common dso_local global i32 0, align 4
@F71882FG_REG_FAN_STATUS = common dso_local global i32 0, align 4
@f71808a = common dso_local global i32 0, align 4
@F81866_REG_IN_STATUS = common dso_local global i32 0, align 4
@F71882FG_REG_IN_STATUS = common dso_local global i32 0, align 4
@F71882FG_MAX_INS = common dso_local global i32 0, align 4
@f71882fg_has_in = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.f71882fg_data* (%struct.device*)* @f71882fg_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.f71882fg_data* @f71882fg_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.f71882fg_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.f71882fg_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.f71882fg_data* %10, %struct.f71882fg_data** %3, align 8
  %11 = load i32*, i32** @f71882fg_nr_fans, align 8
  %12 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %13 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i32*, i32** @f71882fg_nr_temps, align 8
  %18 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %19 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %24 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %23, i32 0, i32 4
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i8*, i8** @jiffies, align 8
  %27 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %28 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %27, i32 0, i32 16
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* @HZ, align 4
  %31 = mul nsw i32 60, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr i8, i8* %29, i64 %32
  %34 = call i64 @time_after(i8* %26, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %1
  %37 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %38 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %362, label %41

41:                                               ; preds = %36, %1
  %42 = load i64*, i64** @f71882fg_has_in1_alarm, align 8
  %43 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %44 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i64, i64* %42, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %41
  %50 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %51 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @f81866a, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %57 = load i32, i32* @F81866_REG_IN1_HIGH, align 4
  %58 = call i8* @f71882fg_read8(%struct.f71882fg_data* %56, i32 %57)
  %59 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %60 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %59, i32 0, i32 28
  store i8* %58, i8** %60, align 8
  %61 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %62 = load i32, i32* @F81866_REG_IN_BEEP, align 4
  %63 = call i8* @f71882fg_read8(%struct.f71882fg_data* %61, i32 %62)
  %64 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %65 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %64, i32 0, i32 27
  store i8* %63, i8** %65, align 8
  br label %77

66:                                               ; preds = %49
  %67 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %68 = load i32, i32* @F71882FG_REG_IN1_HIGH, align 4
  %69 = call i8* @f71882fg_read8(%struct.f71882fg_data* %67, i32 %68)
  %70 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %71 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %70, i32 0, i32 28
  store i8* %69, i8** %71, align 8
  %72 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %73 = load i32, i32* @F71882FG_REG_IN_BEEP, align 4
  %74 = call i8* @f71882fg_read8(%struct.f71882fg_data* %72, i32 %73)
  %75 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %76 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %75, i32 0, i32 27
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %66, %55
  br label %78

78:                                               ; preds = %77, %41
  %79 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %80 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %111, %78
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %86 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %84, %87
  %89 = icmp slt i32 %83, %88
  br i1 %89, label %90, label %114

90:                                               ; preds = %82
  %91 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @F71882FG_REG_TEMP_OVT(i32 %92)
  %94 = call i8* @f71882fg_read8(%struct.f71882fg_data* %91, i32 %93)
  %95 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %96 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %95, i32 0, i32 26
  %97 = load i8**, i8*** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  store i8* %94, i8** %100, align 8
  %101 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @F71882FG_REG_TEMP_HIGH(i32 %102)
  %104 = call i8* @f71882fg_read8(%struct.f71882fg_data* %101, i32 %103)
  %105 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %106 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %105, i32 0, i32 25
  %107 = load i8**, i8*** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  store i8* %104, i8** %110, align 8
  br label %111

111:                                              ; preds = %90
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %82

114:                                              ; preds = %82
  %115 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %116 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @f8000, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %135

120:                                              ; preds = %114
  %121 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %122 = call i32 @F71882FG_REG_TEMP_HYST(i32 0)
  %123 = call i8* @f71882fg_read8(%struct.f71882fg_data* %121, i32 %122)
  %124 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %125 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %124, i32 0, i32 24
  %126 = load i8**, i8*** %125, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 0
  store i8* %123, i8** %127, align 8
  %128 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %129 = call i32 @F71882FG_REG_TEMP_HYST(i32 1)
  %130 = call i8* @f71882fg_read8(%struct.f71882fg_data* %128, i32 %129)
  %131 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %132 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %131, i32 0, i32 24
  %133 = load i8**, i8*** %132, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 1
  store i8* %130, i8** %134, align 8
  br label %135

135:                                              ; preds = %120, %114
  %136 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %137 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @f71858fg, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %179

141:                                              ; preds = %135
  %142 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %143 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @f8000, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %179

147:                                              ; preds = %141
  %148 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %149 = load i32, i32* @F71882FG_REG_TEMP_TYPE, align 4
  %150 = call i8* @f71882fg_read8(%struct.f71882fg_data* %148, i32 %149)
  %151 = ptrtoint i8* %150 to i32
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = and i32 %152, 2
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i32 2, i32 4
  %157 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %158 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  store i32 %156, i32* %160, align 4
  %161 = load i32, i32* %7, align 4
  %162 = and i32 %161, 4
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 2, i32 4
  %166 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %167 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 2
  store i32 %165, i32* %169, align 4
  %170 = load i32, i32* %7, align 4
  %171 = and i32 %170, 8
  %172 = icmp ne i32 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i32 2, i32 4
  %175 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %176 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %175, i32 0, i32 3
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 3
  store i32 %174, i32* %178, align 4
  br label %179

179:                                              ; preds = %147, %141, %135
  %180 = load i64*, i64** @f71882fg_fan_has_beep, align 8
  %181 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %182 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds i64, i64* %180, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %179
  %188 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %189 = load i32, i32* @F71882FG_REG_FAN_BEEP, align 4
  %190 = call i8* @f71882fg_read8(%struct.f71882fg_data* %188, i32 %189)
  %191 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %192 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %191, i32 0, i32 23
  store i8* %190, i8** %192, align 8
  br label %193

193:                                              ; preds = %187, %179
  %194 = load i64*, i64** @f71882fg_temp_has_beep, align 8
  %195 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %196 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds i64, i64* %194, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %193
  %202 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %203 = load i32, i32* @F71882FG_REG_TEMP_BEEP, align 4
  %204 = call i8* @f71882fg_read8(%struct.f71882fg_data* %202, i32 %203)
  %205 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %206 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %205, i32 0, i32 22
  store i8* %204, i8** %206, align 8
  br label %207

207:                                              ; preds = %201, %193
  %208 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %209 = load i32, i32* @F71882FG_REG_PWM_ENABLE, align 4
  %210 = call i8* @f71882fg_read8(%struct.f71882fg_data* %208, i32 %209)
  %211 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %212 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %211, i32 0, i32 21
  store i8* %210, i8** %212, align 8
  %213 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %214 = call i32 @F71882FG_REG_FAN_HYST(i32 0)
  %215 = call i8* @f71882fg_read8(%struct.f71882fg_data* %213, i32 %214)
  %216 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %217 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %216, i32 0, i32 20
  %218 = load i8**, i8*** %217, align 8
  %219 = getelementptr inbounds i8*, i8** %218, i64 0
  store i8* %215, i8** %219, align 8
  %220 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %221 = call i32 @F71882FG_REG_FAN_HYST(i32 1)
  %222 = call i8* @f71882fg_read8(%struct.f71882fg_data* %220, i32 %221)
  %223 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %224 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %223, i32 0, i32 20
  %225 = load i8**, i8*** %224, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i64 1
  store i8* %222, i8** %226, align 8
  store i32 0, i32* %6, align 4
  br label %227

227:                                              ; preds = %355, %207
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* %4, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %358

231:                                              ; preds = %227
  %232 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %233 = load i32, i32* %6, align 4
  %234 = call i32 @F71882FG_REG_POINT_MAPPING(i32 %233)
  %235 = call i8* @f71882fg_read8(%struct.f71882fg_data* %232, i32 %234)
  %236 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %237 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %236, i32 0, i32 19
  %238 = load i8**, i8*** %237, align 8
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8*, i8** %238, i64 %240
  store i8* %235, i8** %241, align 8
  %242 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %243 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  switch i64 %244, label %245 [
    i64 130, label %292
    i64 128, label %292
    i64 129, label %305
  ]

245:                                              ; preds = %231
  store i32 0, i32* %8, align 4
  br label %246

246:                                              ; preds = %265, %245
  %247 = load i32, i32* %8, align 4
  %248 = icmp slt i32 %247, 5
  br i1 %248, label %249, label %268

249:                                              ; preds = %246
  %250 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %251 = load i32, i32* %6, align 4
  %252 = load i32, i32* %8, align 4
  %253 = call i32 @F71882FG_REG_POINT_PWM(i32 %251, i32 %252)
  %254 = call i8* @f71882fg_read8(%struct.f71882fg_data* %250, i32 %253)
  %255 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %256 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %255, i32 0, i32 18
  %257 = load i8***, i8**** %256, align 8
  %258 = load i32, i32* %6, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8**, i8*** %257, i64 %259
  %261 = load i8**, i8*** %260, align 8
  %262 = load i32, i32* %8, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8*, i8** %261, i64 %263
  store i8* %254, i8** %264, align 8
  br label %265

265:                                              ; preds = %249
  %266 = load i32, i32* %8, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %8, align 4
  br label %246

268:                                              ; preds = %246
  store i32 0, i32* %8, align 4
  br label %269

269:                                              ; preds = %288, %268
  %270 = load i32, i32* %8, align 4
  %271 = icmp slt i32 %270, 4
  br i1 %271, label %272, label %291

272:                                              ; preds = %269
  %273 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %274 = load i32, i32* %6, align 4
  %275 = load i32, i32* %8, align 4
  %276 = call i32 @F71882FG_REG_POINT_TEMP(i32 %274, i32 %275)
  %277 = call i8* @f71882fg_read8(%struct.f71882fg_data* %273, i32 %276)
  %278 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %279 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %278, i32 0, i32 17
  %280 = load i8***, i8**** %279, align 8
  %281 = load i32, i32* %6, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8**, i8*** %280, i64 %282
  %284 = load i8**, i8*** %283, align 8
  %285 = load i32, i32* %8, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8*, i8** %284, i64 %286
  store i8* %277, i8** %287, align 8
  br label %288

288:                                              ; preds = %272
  %289 = load i32, i32* %8, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %8, align 4
  br label %269

291:                                              ; preds = %269
  br label %354

292:                                              ; preds = %231, %231
  %293 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %294 = load i32, i32* %6, align 4
  %295 = call i32 @F71882FG_REG_POINT_PWM(i32 %294, i32 0)
  %296 = call i8* @f71882fg_read8(%struct.f71882fg_data* %293, i32 %295)
  %297 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %298 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %297, i32 0, i32 18
  %299 = load i8***, i8**** %298, align 8
  %300 = load i32, i32* %6, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8**, i8*** %299, i64 %301
  %303 = load i8**, i8*** %302, align 8
  %304 = getelementptr inbounds i8*, i8** %303, i64 0
  store i8* %296, i8** %304, align 8
  br label %305

305:                                              ; preds = %231, %292
  %306 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %307 = load i32, i32* %6, align 4
  %308 = call i32 @F71882FG_REG_POINT_PWM(i32 %307, i32 1)
  %309 = call i8* @f71882fg_read8(%struct.f71882fg_data* %306, i32 %308)
  %310 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %311 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %310, i32 0, i32 18
  %312 = load i8***, i8**** %311, align 8
  %313 = load i32, i32* %6, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8**, i8*** %312, i64 %314
  %316 = load i8**, i8*** %315, align 8
  %317 = getelementptr inbounds i8*, i8** %316, i64 1
  store i8* %309, i8** %317, align 8
  %318 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %319 = load i32, i32* %6, align 4
  %320 = call i32 @F71882FG_REG_POINT_PWM(i32 %319, i32 4)
  %321 = call i8* @f71882fg_read8(%struct.f71882fg_data* %318, i32 %320)
  %322 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %323 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %322, i32 0, i32 18
  %324 = load i8***, i8**** %323, align 8
  %325 = load i32, i32* %6, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i8**, i8*** %324, i64 %326
  %328 = load i8**, i8*** %327, align 8
  %329 = getelementptr inbounds i8*, i8** %328, i64 4
  store i8* %321, i8** %329, align 8
  %330 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %331 = load i32, i32* %6, align 4
  %332 = call i32 @F71882FG_REG_POINT_TEMP(i32 %331, i32 0)
  %333 = call i8* @f71882fg_read8(%struct.f71882fg_data* %330, i32 %332)
  %334 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %335 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %334, i32 0, i32 17
  %336 = load i8***, i8**** %335, align 8
  %337 = load i32, i32* %6, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8**, i8*** %336, i64 %338
  %340 = load i8**, i8*** %339, align 8
  %341 = getelementptr inbounds i8*, i8** %340, i64 0
  store i8* %333, i8** %341, align 8
  %342 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %343 = load i32, i32* %6, align 4
  %344 = call i32 @F71882FG_REG_POINT_TEMP(i32 %343, i32 3)
  %345 = call i8* @f71882fg_read8(%struct.f71882fg_data* %342, i32 %344)
  %346 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %347 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %346, i32 0, i32 17
  %348 = load i8***, i8**** %347, align 8
  %349 = load i32, i32* %6, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8**, i8*** %348, i64 %350
  %352 = load i8**, i8*** %351, align 8
  %353 = getelementptr inbounds i8*, i8** %352, i64 3
  store i8* %345, i8** %353, align 8
  br label %354

354:                                              ; preds = %305, %291
  br label %355

355:                                              ; preds = %354
  %356 = load i32, i32* %6, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %6, align 4
  br label %227

358:                                              ; preds = %227
  %359 = load i8*, i8** @jiffies, align 8
  %360 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %361 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %360, i32 0, i32 16
  store i8* %359, i8** %361, align 8
  br label %362

362:                                              ; preds = %358, %36
  %363 = load i8*, i8** @jiffies, align 8
  %364 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %365 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %364, i32 0, i32 5
  %366 = load i8*, i8** %365, align 8
  %367 = load i32, i32* @HZ, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr i8, i8* %366, i64 %368
  %370 = call i64 @time_after(i8* %363, i8* %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %377, label %372

372:                                              ; preds = %362
  %373 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %374 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 8
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %567, label %377

377:                                              ; preds = %372, %362
  %378 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %379 = load i32, i32* @F71882FG_REG_TEMP_STATUS, align 4
  %380 = call i8* @f71882fg_read8(%struct.f71882fg_data* %378, i32 %379)
  %381 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %382 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %381, i32 0, i32 15
  store i8* %380, i8** %382, align 8
  %383 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %384 = load i32, i32* @F71882FG_REG_TEMP_DIODE_OPEN, align 4
  %385 = call i8* @f71882fg_read8(%struct.f71882fg_data* %383, i32 %384)
  %386 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %387 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %386, i32 0, i32 14
  store i8* %385, i8** %387, align 8
  %388 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %389 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 4
  store i32 %390, i32* %6, align 4
  br label %391

391:                                              ; preds = %409, %377
  %392 = load i32, i32* %6, align 4
  %393 = load i32, i32* %5, align 4
  %394 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %395 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 4
  %397 = add nsw i32 %393, %396
  %398 = icmp slt i32 %392, %397
  br i1 %398, label %399, label %412

399:                                              ; preds = %391
  %400 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %401 = load i32, i32* %6, align 4
  %402 = call i32 @f71882fg_read_temp(%struct.f71882fg_data* %400, i32 %401)
  %403 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %404 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %403, i32 0, i32 13
  %405 = load i32*, i32** %404, align 8
  %406 = load i32, i32* %6, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %405, i64 %407
  store i32 %402, i32* %408, align 4
  br label %409

409:                                              ; preds = %399
  %410 = load i32, i32* %6, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %6, align 4
  br label %391

412:                                              ; preds = %391
  %413 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %414 = load i32, i32* @F71882FG_REG_FAN_STATUS, align 4
  %415 = call i8* @f71882fg_read8(%struct.f71882fg_data* %413, i32 %414)
  %416 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %417 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %416, i32 0, i32 12
  store i8* %415, i8** %417, align 8
  store i32 0, i32* %6, align 4
  br label %418

418:                                              ; preds = %463, %412
  %419 = load i32, i32* %6, align 4
  %420 = load i32, i32* %4, align 4
  %421 = icmp slt i32 %419, %420
  br i1 %421, label %422, label %466

422:                                              ; preds = %418
  %423 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %424 = load i32, i32* %6, align 4
  %425 = call i32 @F71882FG_REG_FAN(i32 %424)
  %426 = call i8* @f71882fg_read16(%struct.f71882fg_data* %423, i32 %425)
  %427 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %428 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %427, i32 0, i32 8
  %429 = load i8**, i8*** %428, align 8
  %430 = load i32, i32* %6, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i8*, i8** %429, i64 %431
  store i8* %426, i8** %432, align 8
  %433 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %434 = load i32, i32* %6, align 4
  %435 = call i32 @F71882FG_REG_FAN_TARGET(i32 %434)
  %436 = call i8* @f71882fg_read16(%struct.f71882fg_data* %433, i32 %435)
  %437 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %438 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %437, i32 0, i32 11
  %439 = load i8**, i8*** %438, align 8
  %440 = load i32, i32* %6, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i8*, i8** %439, i64 %441
  store i8* %436, i8** %442, align 8
  %443 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %444 = load i32, i32* %6, align 4
  %445 = call i32 @F71882FG_REG_FAN_FULL_SPEED(i32 %444)
  %446 = call i8* @f71882fg_read16(%struct.f71882fg_data* %443, i32 %445)
  %447 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %448 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %447, i32 0, i32 10
  %449 = load i8**, i8*** %448, align 8
  %450 = load i32, i32* %6, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i8*, i8** %449, i64 %451
  store i8* %446, i8** %452, align 8
  %453 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %454 = load i32, i32* %6, align 4
  %455 = call i32 @F71882FG_REG_PWM(i32 %454)
  %456 = call i8* @f71882fg_read8(%struct.f71882fg_data* %453, i32 %455)
  %457 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %458 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %457, i32 0, i32 9
  %459 = load i8**, i8*** %458, align 8
  %460 = load i32, i32* %6, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i8*, i8** %459, i64 %461
  store i8* %456, i8** %462, align 8
  br label %463

463:                                              ; preds = %422
  %464 = load i32, i32* %6, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %6, align 4
  br label %418

466:                                              ; preds = %418
  %467 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %468 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %467, i32 0, i32 0
  %469 = load i64, i64* %468, align 8
  %470 = load i32, i32* @f71808a, align 4
  %471 = sext i32 %470 to i64
  %472 = icmp eq i64 %469, %471
  br i1 %472, label %473, label %488

473:                                              ; preds = %466
  %474 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %475 = call i32 @F71882FG_REG_FAN(i32 2)
  %476 = call i8* @f71882fg_read16(%struct.f71882fg_data* %474, i32 %475)
  %477 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %478 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %477, i32 0, i32 8
  %479 = load i8**, i8*** %478, align 8
  %480 = getelementptr inbounds i8*, i8** %479, i64 2
  store i8* %476, i8** %480, align 8
  %481 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %482 = call i32 @F71882FG_REG_PWM(i32 2)
  %483 = call i8* @f71882fg_read8(%struct.f71882fg_data* %481, i32 %482)
  %484 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %485 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %484, i32 0, i32 9
  %486 = load i8**, i8*** %485, align 8
  %487 = getelementptr inbounds i8*, i8** %486, i64 2
  store i8* %483, i8** %487, align 8
  br label %488

488:                                              ; preds = %473, %466
  %489 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %490 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %489, i32 0, i32 0
  %491 = load i64, i64* %490, align 8
  %492 = load i64, i64* @f8000, align 8
  %493 = icmp eq i64 %491, %492
  br i1 %493, label %494, label %502

494:                                              ; preds = %488
  %495 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %496 = call i32 @F71882FG_REG_FAN(i32 3)
  %497 = call i8* @f71882fg_read16(%struct.f71882fg_data* %495, i32 %496)
  %498 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %499 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %498, i32 0, i32 8
  %500 = load i8**, i8*** %499, align 8
  %501 = getelementptr inbounds i8*, i8** %500, i64 3
  store i8* %497, i8** %501, align 8
  br label %502

502:                                              ; preds = %494, %488
  %503 = load i64*, i64** @f71882fg_has_in1_alarm, align 8
  %504 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %505 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %504, i32 0, i32 0
  %506 = load i64, i64* %505, align 8
  %507 = getelementptr inbounds i64, i64* %503, i64 %506
  %508 = load i64, i64* %507, align 8
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %510, label %529

510:                                              ; preds = %502
  %511 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %512 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %511, i32 0, i32 0
  %513 = load i64, i64* %512, align 8
  %514 = load i64, i64* @f81866a, align 8
  %515 = icmp eq i64 %513, %514
  br i1 %515, label %516, label %522

516:                                              ; preds = %510
  %517 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %518 = load i32, i32* @F81866_REG_IN_STATUS, align 4
  %519 = call i8* @f71882fg_read8(%struct.f71882fg_data* %517, i32 %518)
  %520 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %521 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %520, i32 0, i32 7
  store i8* %519, i8** %521, align 8
  br label %528

522:                                              ; preds = %510
  %523 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %524 = load i32, i32* @F71882FG_REG_IN_STATUS, align 4
  %525 = call i8* @f71882fg_read8(%struct.f71882fg_data* %523, i32 %524)
  %526 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %527 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %526, i32 0, i32 7
  store i8* %525, i8** %527, align 8
  br label %528

528:                                              ; preds = %522, %516
  br label %529

529:                                              ; preds = %528, %502
  store i32 0, i32* %6, align 4
  br label %530

530:                                              ; preds = %558, %529
  %531 = load i32, i32* %6, align 4
  %532 = load i32, i32* @F71882FG_MAX_INS, align 4
  %533 = icmp slt i32 %531, %532
  br i1 %533, label %534, label %561

534:                                              ; preds = %530
  %535 = load i64**, i64*** @f71882fg_has_in, align 8
  %536 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %537 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %536, i32 0, i32 0
  %538 = load i64, i64* %537, align 8
  %539 = getelementptr inbounds i64*, i64** %535, i64 %538
  %540 = load i64*, i64** %539, align 8
  %541 = load i32, i32* %6, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i64, i64* %540, i64 %542
  %544 = load i64, i64* %543, align 8
  %545 = icmp ne i64 %544, 0
  br i1 %545, label %546, label %557

546:                                              ; preds = %534
  %547 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %548 = load i32, i32* %6, align 4
  %549 = call i32 @F71882FG_REG_IN(i32 %548)
  %550 = call i8* @f71882fg_read8(%struct.f71882fg_data* %547, i32 %549)
  %551 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %552 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %551, i32 0, i32 6
  %553 = load i8**, i8*** %552, align 8
  %554 = load i32, i32* %6, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds i8*, i8** %553, i64 %555
  store i8* %550, i8** %556, align 8
  br label %557

557:                                              ; preds = %546, %534
  br label %558

558:                                              ; preds = %557
  %559 = load i32, i32* %6, align 4
  %560 = add nsw i32 %559, 1
  store i32 %560, i32* %6, align 4
  br label %530

561:                                              ; preds = %530
  %562 = load i8*, i8** @jiffies, align 8
  %563 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %564 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %563, i32 0, i32 5
  store i8* %562, i8** %564, align 8
  %565 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %566 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %565, i32 0, i32 1
  store i32 1, i32* %566, align 8
  br label %567

567:                                              ; preds = %561, %372
  %568 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %569 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %568, i32 0, i32 4
  %570 = call i32 @mutex_unlock(i32* %569)
  %571 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  ret %struct.f71882fg_data* %571
}

declare dso_local %struct.f71882fg_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i8*, i8*) #1

declare dso_local i8* @f71882fg_read8(%struct.f71882fg_data*, i32) #1

declare dso_local i32 @F71882FG_REG_TEMP_OVT(i32) #1

declare dso_local i32 @F71882FG_REG_TEMP_HIGH(i32) #1

declare dso_local i32 @F71882FG_REG_TEMP_HYST(i32) #1

declare dso_local i32 @F71882FG_REG_FAN_HYST(i32) #1

declare dso_local i32 @F71882FG_REG_POINT_MAPPING(i32) #1

declare dso_local i32 @F71882FG_REG_POINT_PWM(i32, i32) #1

declare dso_local i32 @F71882FG_REG_POINT_TEMP(i32, i32) #1

declare dso_local i32 @f71882fg_read_temp(%struct.f71882fg_data*, i32) #1

declare dso_local i8* @f71882fg_read16(%struct.f71882fg_data*, i32) #1

declare dso_local i32 @F71882FG_REG_FAN(i32) #1

declare dso_local i32 @F71882FG_REG_FAN_TARGET(i32) #1

declare dso_local i32 @F71882FG_REG_FAN_FULL_SPEED(i32) #1

declare dso_local i32 @F71882FG_REG_PWM(i32) #1

declare dso_local i32 @F71882FG_REG_IN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
