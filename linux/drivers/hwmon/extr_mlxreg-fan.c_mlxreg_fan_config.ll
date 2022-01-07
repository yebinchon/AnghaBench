; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_mlxreg-fan.c_mlxreg_fan_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_mlxreg-fan.c_mlxreg_fan_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxreg_fan = type { i32*, i32, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.mlxreg_core_platform_data = type { i32, %struct.mlxreg_core_data* }
%struct.mlxreg_core_data = type { i32, i64, i64, i64, i32 }

@MLXREG_FAN_TACHO_SAMPLES_PER_PULSE_DEF = common dso_local global i64 0, align 8
@MLXREG_FAN_TACHO_DIV_DEF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"tacho\00", align 1
@MLXREG_FAN_MAX_TACHO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"too many tacho entries: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"duplicate pwm entry: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"conf\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"duplicate conf entry: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"invalid conf entry params: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"invalid label: %s\0A\00", align 1
@MLXREG_FAN_SPEED_MIN_LEVEL = common dso_local global i32 0, align 4
@MLXREG_FAN_MAX_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxreg_fan*, %struct.mlxreg_core_platform_data*)* @mlxreg_fan_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxreg_fan_config(%struct.mlxreg_fan* %0, %struct.mlxreg_core_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxreg_fan*, align 8
  %5 = alloca %struct.mlxreg_core_platform_data*, align 8
  %6 = alloca %struct.mlxreg_core_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlxreg_fan* %0, %struct.mlxreg_fan** %4, align 8
  store %struct.mlxreg_core_platform_data* %1, %struct.mlxreg_core_platform_data** %5, align 8
  %11 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %5, align 8
  %12 = getelementptr inbounds %struct.mlxreg_core_platform_data, %struct.mlxreg_core_platform_data* %11, i32 0, i32 1
  %13 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %12, align 8
  store %struct.mlxreg_core_data* %13, %struct.mlxreg_core_data** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load i64, i64* @MLXREG_FAN_TACHO_SAMPLES_PER_PULSE_DEF, align 8
  %15 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %4, align 8
  %16 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %15, i32 0, i32 3
  store i64 %14, i64* %16, align 8
  %17 = load i64, i64* @MLXREG_FAN_TACHO_DIV_DEF, align 8
  %18 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %4, align 8
  %19 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %223, %2
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %5, align 8
  %23 = getelementptr inbounds %struct.mlxreg_core_platform_data, %struct.mlxreg_core_platform_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %228

26:                                               ; preds = %20
  %27 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %28 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @strnstr(i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %96

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @MLXREG_FAN_MAX_TACHO, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %4, align 8
  %38 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %41 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %262

46:                                               ; preds = %32
  %47 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %48 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %4, align 8
  %53 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %54 = call i32 @mlxreg_fan_connect_verify(%struct.mlxreg_fan* %52, %struct.mlxreg_core_data* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %3, align 4
  br label %262

59:                                               ; preds = %51
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %223

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66, %46
  %68 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %69 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %4, align 8
  %72 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %71, i32 0, i32 5
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  store i32 %70, i32* %77, align 8
  %78 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %79 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %4, align 8
  %82 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %81, i32 0, i32 5
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  store i64 %80, i64* %87, align 8
  %88 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %4, align 8
  %89 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %88, i32 0, i32 5
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  br label %222

96:                                               ; preds = %26
  %97 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %98 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @strnstr(i32 %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %128

102:                                              ; preds = %96
  %103 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %4, align 8
  %104 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %102
  %109 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %4, align 8
  %110 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %113 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @dev_err(i32 %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %262

118:                                              ; preds = %102
  %119 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %120 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %4, align 8
  %123 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 4
  %125 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %4, align 8
  %126 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  br label %221

128:                                              ; preds = %96
  %129 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %130 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @strnstr(i32 %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %210

134:                                              ; preds = %128
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %134
  %138 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %4, align 8
  %139 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %142 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @dev_err(i32 %140, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %3, align 4
  br label %262

147:                                              ; preds = %134
  %148 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %149 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %172, label %152

152:                                              ; preds = %147
  %153 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %154 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %172, label %157

157:                                              ; preds = %152
  %158 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %159 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %172, label %162

162:                                              ; preds = %157
  %163 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %4, align 8
  %164 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %167 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @dev_err(i32 %165, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %3, align 4
  br label %262

172:                                              ; preds = %157, %152, %147
  %173 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %174 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %172
  %178 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %4, align 8
  %179 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %180 = call i32 @mlxreg_fan_speed_divider_get(%struct.mlxreg_fan* %178, %struct.mlxreg_core_data* %179)
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %10, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %177
  %184 = load i32, i32* %10, align 4
  store i32 %184, i32* %3, align 4
  br label %262

185:                                              ; preds = %177
  br label %209

186:                                              ; preds = %172
  %187 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %188 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %186
  %192 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %193 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %4, align 8
  %196 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %195, i32 0, i32 3
  store i64 %194, i64* %196, align 8
  br label %197

197:                                              ; preds = %191, %186
  %198 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %199 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %197
  %203 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %204 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %4, align 8
  %207 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %206, i32 0, i32 2
  store i64 %205, i64* %207, align 8
  br label %208

208:                                              ; preds = %202, %197
  br label %209

209:                                              ; preds = %208, %185
  store i32 1, i32* %7, align 4
  br label %220

210:                                              ; preds = %128
  %211 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %4, align 8
  %212 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %215 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @dev_err(i32 %213, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %216)
  %218 = load i32, i32* @EINVAL, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %3, align 4
  br label %262

220:                                              ; preds = %209
  br label %221

221:                                              ; preds = %220, %118
  br label %222

222:                                              ; preds = %221, %67
  br label %223

223:                                              ; preds = %222, %62
  %224 = load i32, i32* %9, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %9, align 4
  %226 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %227 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %226, i32 1
  store %struct.mlxreg_core_data* %227, %struct.mlxreg_core_data** %6, align 8
  br label %20

228:                                              ; preds = %20
  store i32 0, i32* %9, align 4
  br label %229

229:                                              ; preds = %241, %228
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* @MLXREG_FAN_SPEED_MIN_LEVEL, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %244

233:                                              ; preds = %229
  %234 = load i32, i32* @MLXREG_FAN_SPEED_MIN_LEVEL, align 4
  %235 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %4, align 8
  %236 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %9, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store i32 %234, i32* %240, align 4
  br label %241

241:                                              ; preds = %233
  %242 = load i32, i32* %9, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %9, align 4
  br label %229

244:                                              ; preds = %229
  %245 = load i32, i32* @MLXREG_FAN_SPEED_MIN_LEVEL, align 4
  store i32 %245, i32* %9, align 4
  br label %246

246:                                              ; preds = %258, %244
  %247 = load i32, i32* %9, align 4
  %248 = load i32, i32* @MLXREG_FAN_MAX_STATE, align 4
  %249 = icmp sle i32 %247, %248
  br i1 %249, label %250, label %261

250:                                              ; preds = %246
  %251 = load i32, i32* %9, align 4
  %252 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %4, align 8
  %253 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %9, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  store i32 %251, i32* %257, align 4
  br label %258

258:                                              ; preds = %250
  %259 = load i32, i32* %9, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %9, align 4
  br label %246

261:                                              ; preds = %246
  store i32 0, i32* %3, align 4
  br label %262

262:                                              ; preds = %261, %210, %183, %162, %137, %108, %57, %36
  %263 = load i32, i32* %3, align 4
  ret i32 %263
}

declare dso_local i64 @strnstr(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mlxreg_fan_connect_verify(%struct.mlxreg_fan*, %struct.mlxreg_core_data*) #1

declare dso_local i32 @mlxreg_fan_speed_divider_get(%struct.mlxreg_fan*, %struct.mlxreg_core_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
