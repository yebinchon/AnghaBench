; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_dme1737_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_dme1737_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dme1737_data = type { i32, i32, i32, i32, i32*, i32*, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@DME1737_REG_CONFIG = common dso_local global i32 0, align 4
@force_start = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Device is not monitoring. Use the force_start load parameter to override.\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Device is not ready.\0A\00", align 1
@DME1737_REG_CONFIG2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Failed to query Super-IO for optional features.\0A\00", align 1
@HAS_TEMP_OFFSET = common dso_local global i32 0, align 4
@HAS_VID = common dso_local global i32 0, align 4
@HAS_ZONE3 = common dso_local global i32 0, align 4
@HAS_ZONE_HYST = common dso_local global i32 0, align 4
@HAS_PWM_MIN = common dso_local global i32 0, align 4
@HAS_IN7 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [83 x i8] c"Optional features: pwm3=%s, pwm5=%s, pwm6=%s, fan3=%s, fan4=%s, fan5=%s, fan6=%s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@DME1737_REG_TACH_PWM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [89 x i8] c"Non-standard fan to pwm mapping: fan1->pwm%d, fan2->pwm%d, fan3->pwm%d, fan4->pwm%d. %s\0A\00", align 1
@DO_REPORT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [76 x i8] c"Non-standard fan to pwm mapping: fan1->pwm%d, fan2->pwm%d, fan3->pwm%d. %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Switching pwm%d to manual mode.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @dme1737_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dme1737_init_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.dme1737_data*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.dme1737_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.dme1737_data* %9, %struct.dme1737_data** %4, align 8
  %10 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %11 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %10, i32 0, i32 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %5, align 8
  %13 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %14 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @IN_NOMINAL(i32 %15)
  %17 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %18 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 4
  %19 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %20 = load i32, i32* @DME1737_REG_CONFIG, align 4
  %21 = call i8* @dme1737_read(%struct.dme1737_data* %19, i32 %20)
  %22 = ptrtoint i8* %21 to i32
  %23 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %24 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %26 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @force_start, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EFAULT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %379

38:                                               ; preds = %30
  %39 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %40 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %44 = load i32, i32* @DME1737_REG_CONFIG, align 4
  %45 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %46 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dme1737_write(%struct.dme1737_data* %43, i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %38, %1
  %50 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %51 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = load %struct.device*, %struct.device** %3, align 8
  %57 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EFAULT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %379

60:                                               ; preds = %49
  %61 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %62 = icmp ne %struct.i2c_client* %61, null
  br i1 %62, label %63, label %106

63:                                               ; preds = %60
  %64 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %65 = load i32, i32* @DME1737_REG_CONFIG2, align 4
  %66 = call i8* @dme1737_read(%struct.dme1737_data* %64, i32 %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %69 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %71 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %63
  %76 = call i32 @HAS_FAN(i32 2)
  %77 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %78 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %63
  %82 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 46
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = call i32 @HAS_FAN(i32 3)
  %88 = call i32 @HAS_PWM(i32 2)
  %89 = or i32 %87, %88
  %90 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %91 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %86, %81
  %95 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %96 = call i64 @dme1737_i2c_get_features(i32 46, %struct.dme1737_data* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %100 = call i64 @dme1737_i2c_get_features(i32 78, %struct.dme1737_data* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load %struct.device*, %struct.device** %3, align 8
  %104 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %103, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %98, %94
  br label %106

106:                                              ; preds = %105, %60
  %107 = call i32 @HAS_FAN(i32 0)
  %108 = call i32 @HAS_FAN(i32 1)
  %109 = or i32 %107, %108
  %110 = call i32 @HAS_PWM(i32 0)
  %111 = or i32 %109, %110
  %112 = call i32 @HAS_PWM(i32 1)
  %113 = or i32 %111, %112
  %114 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %115 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %119 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  switch i32 %120, label %167 [
    i32 131, label %121
    i32 130, label %135
    i32 129, label %151
    i32 128, label %157
  ]

121:                                              ; preds = %106
  %122 = load i32, i32* @HAS_TEMP_OFFSET, align 4
  %123 = load i32, i32* @HAS_VID, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @HAS_ZONE3, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @HAS_ZONE_HYST, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @HAS_PWM_MIN, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %132 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %168

135:                                              ; preds = %106
  %136 = load i32, i32* @HAS_TEMP_OFFSET, align 4
  %137 = load i32, i32* @HAS_ZONE3, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @HAS_ZONE_HYST, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @HAS_PWM_MIN, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @HAS_FAN(i32 2)
  %144 = or i32 %142, %143
  %145 = call i32 @HAS_PWM(i32 2)
  %146 = or i32 %144, %145
  %147 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %148 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %168

151:                                              ; preds = %106
  %152 = load i32, i32* @HAS_ZONE3, align 4
  %153 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %154 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %168

157:                                              ; preds = %106
  %158 = call i32 @HAS_FAN(i32 2)
  %159 = call i32 @HAS_PWM(i32 2)
  %160 = or i32 %158, %159
  %161 = load i32, i32* @HAS_IN7, align 4
  %162 = or i32 %160, %161
  %163 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %164 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 4
  br label %168

167:                                              ; preds = %106
  br label %168

168:                                              ; preds = %167, %157, %151, %135, %121
  %169 = load %struct.device*, %struct.device** %3, align 8
  %170 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %171 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @HAS_PWM(i32 2)
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %178 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %179 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @HAS_PWM(i32 4)
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %186 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %187 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @HAS_PWM(i32 5)
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %194 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %195 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @HAS_FAN(i32 2)
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %202 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %203 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @HAS_FAN(i32 3)
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %210 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %211 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @HAS_FAN(i32 4)
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %218 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %219 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @HAS_FAN(i32 5)
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %226 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %169, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i8* %177, i8* %185, i8* %193, i8* %201, i8* %209, i8* %217, i8* %225)
  %227 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %228 = load i32, i32* @DME1737_REG_TACH_PWM, align 4
  %229 = call i8* @dme1737_read(%struct.dme1737_data* %227, i32 %228)
  %230 = ptrtoint i8* %229 to i32
  store i32 %230, i32* %7, align 4
  %231 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %232 = icmp ne %struct.i2c_client* %231, null
  br i1 %232, label %233, label %255

233:                                              ; preds = %168
  %234 = load i32, i32* %7, align 4
  %235 = icmp ne i32 %234, 164
  br i1 %235, label %236, label %255

236:                                              ; preds = %233
  %237 = load %struct.device*, %struct.device** %3, align 8
  %238 = load i32, i32* %7, align 4
  %239 = and i32 %238, 3
  %240 = add nsw i32 %239, 1
  %241 = load i32, i32* %7, align 4
  %242 = ashr i32 %241, 2
  %243 = and i32 %242, 3
  %244 = add nsw i32 %243, 1
  %245 = load i32, i32* %7, align 4
  %246 = ashr i32 %245, 4
  %247 = and i32 %246, 3
  %248 = add nsw i32 %247, 1
  %249 = load i32, i32* %7, align 4
  %250 = ashr i32 %249, 6
  %251 = and i32 %250, 3
  %252 = add nsw i32 %251, 1
  %253 = load i32, i32* @DO_REPORT, align 4
  %254 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %237, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.6, i64 0, i64 0), i32 %240, i32 %244, i32 %248, i32 %252, i32 %253)
  br label %277

255:                                              ; preds = %233, %168
  %256 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %257 = icmp ne %struct.i2c_client* %256, null
  br i1 %257, label %276, label %258

258:                                              ; preds = %255
  %259 = load i32, i32* %7, align 4
  %260 = icmp ne i32 %259, 36
  br i1 %260, label %261, label %276

261:                                              ; preds = %258
  %262 = load %struct.device*, %struct.device** %3, align 8
  %263 = load i32, i32* %7, align 4
  %264 = and i32 %263, 3
  %265 = add nsw i32 %264, 1
  %266 = load i32, i32* %7, align 4
  %267 = ashr i32 %266, 2
  %268 = and i32 %267, 3
  %269 = add nsw i32 %268, 1
  %270 = load i32, i32* %7, align 4
  %271 = ashr i32 %270, 4
  %272 = and i32 %271, 3
  %273 = add nsw i32 %272, 1
  %274 = load i32, i32* @DO_REPORT, align 4
  %275 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %262, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.7, i64 0, i64 0), i32 %265, i32 %269, i32 %273, i32 %274)
  br label %276

276:                                              ; preds = %261, %258, %255
  br label %277

277:                                              ; preds = %276, %236
  %278 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %279 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = and i32 %280, 2
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %355, label %283

283:                                              ; preds = %277
  store i32 0, i32* %6, align 4
  br label %284

284:                                              ; preds = %351, %283
  %285 = load i32, i32* %6, align 4
  %286 = icmp slt i32 %285, 3
  br i1 %286, label %287, label %354

287:                                              ; preds = %284
  %288 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %289 = load i32, i32* %6, align 4
  %290 = call i32 @DME1737_REG_PWM_CONFIG(i32 %289)
  %291 = call i8* @dme1737_read(%struct.dme1737_data* %288, i32 %290)
  %292 = ptrtoint i8* %291 to i32
  %293 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %294 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %293, i32 0, i32 4
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* %6, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  store i32 %292, i32* %298, align 4
  %299 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %300 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* %6, align 4
  %303 = call i32 @HAS_PWM(i32 %302)
  %304 = and i32 %301, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %350

306:                                              ; preds = %287
  %307 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %308 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %307, i32 0, i32 4
  %309 = load i32*, i32** %308, align 8
  %310 = load i32, i32* %6, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @PWM_EN_FROM_REG(i32 %313)
  %315 = icmp eq i32 %314, -1
  br i1 %315, label %316, label %350

316:                                              ; preds = %306
  %317 = load %struct.device*, %struct.device** %3, align 8
  %318 = load i32, i32* %6, align 4
  %319 = add nsw i32 %318, 1
  %320 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %317, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %319)
  %321 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %322 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %321, i32 0, i32 4
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %6, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @PWM_EN_TO_REG(i32 1, i32 %327)
  %329 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %330 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %329, i32 0, i32 4
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %6, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  store i32 %328, i32* %334, align 4
  %335 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %336 = load i32, i32* %6, align 4
  %337 = call i32 @DME1737_REG_PWM(i32 %336)
  %338 = call i32 @dme1737_write(%struct.dme1737_data* %335, i32 %337, i32 0)
  %339 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %340 = load i32, i32* %6, align 4
  %341 = call i32 @DME1737_REG_PWM_CONFIG(i32 %340)
  %342 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %343 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %342, i32 0, i32 4
  %344 = load i32*, i32** %343, align 8
  %345 = load i32, i32* %6, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %344, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @dme1737_write(%struct.dme1737_data* %339, i32 %341, i32 %348)
  br label %350

350:                                              ; preds = %316, %306, %287
  br label %351

351:                                              ; preds = %350
  %352 = load i32, i32* %6, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %6, align 4
  br label %284

354:                                              ; preds = %284
  br label %355

355:                                              ; preds = %354, %277
  %356 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %357 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %356, i32 0, i32 5
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 0
  store i32 1, i32* %359, align 4
  %360 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %361 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %360, i32 0, i32 5
  %362 = load i32*, i32** %361, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 1
  store i32 2, i32* %363, align 4
  %364 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %365 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %364, i32 0, i32 5
  %366 = load i32*, i32** %365, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 2
  store i32 4, i32* %367, align 4
  %368 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %369 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* @HAS_VID, align 4
  %372 = and i32 %370, %371
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %378

374:                                              ; preds = %355
  %375 = call i32 (...) @vid_which_vrm()
  %376 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %377 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %376, i32 0, i32 6
  store i32 %375, i32* %377, align 8
  br label %378

378:                                              ; preds = %374, %355
  store i32 0, i32* %2, align 4
  br label %379

379:                                              ; preds = %378, %55, %33
  %380 = load i32, i32* %2, align 4
  ret i32 %380
}

declare dso_local %struct.dme1737_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @IN_NOMINAL(i32) #1

declare dso_local i8* @dme1737_read(%struct.dme1737_data*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dme1737_write(%struct.dme1737_data*, i32, i32) #1

declare dso_local i32 @HAS_FAN(i32) #1

declare dso_local i32 @HAS_PWM(i32) #1

declare dso_local i64 @dme1737_i2c_get_features(i32, %struct.dme1737_data*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @DME1737_REG_PWM_CONFIG(i32) #1

declare dso_local i32 @PWM_EN_FROM_REG(i32) #1

declare dso_local i32 @PWM_EN_TO_REG(i32, i32) #1

declare dso_local i32 @DME1737_REG_PWM(i32) #1

declare dso_local i32 @vid_which_vrm(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
