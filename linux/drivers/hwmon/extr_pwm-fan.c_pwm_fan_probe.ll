; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_pwm-fan.c_pwm_fan_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_pwm-fan.c_pwm_fan_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.thermal_cooling_device }
%struct.thermal_cooling_device = type { i32, i32, %struct.thermal_cooling_device*, i32, i32, i32, i32, i32, %struct.thermal_cooling_device*, %struct.TYPE_2__, i32, %struct.thermal_cooling_device*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.device = type { i32, i32, %struct.device*, i32, i32, i32, i32, i32, %struct.device*, %struct.TYPE_2__, i32, %struct.device*, i32 }
%struct.pwm_fan_ctx = type { i32, i32, %struct.pwm_fan_ctx*, i32, i32, i32, i32, i32, %struct.pwm_fan_ctx*, %struct.TYPE_2__, i32, %struct.pwm_fan_ctx*, i32 }
%struct.pwm_state = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Could not get PWM: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"fan\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to enable fan supply: %d\0A\00", align 1
@pwm_fan_regulator_disable = common dso_local global i32 0, align 4
@MAX_PWM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to configure PWM: %d\0A\00", align 1
@sample_timer = common dso_local global i32 0, align 4
@pwm_fan_pwm_disable = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"pulses-per-revolution\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"pulses-per-revolution can't be zero.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@pulse_handler = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to request interrupt: %d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"pwmfan\00", align 1
@pwm_fan_groups = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"Failed to register hwmon device\0A\00", align 1
@CONFIG_THERMAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"pwm-fan\00", align 1
@pwm_fan_cooling_ops = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [50 x i8] c"Failed to register pwm-fan as cooling device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pwm_fan_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_fan_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.thermal_cooling_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.pwm_fan_ctx*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pwm_state, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  %13 = bitcast %struct.thermal_cooling_device* %12 to %struct.device*
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = bitcast %struct.pwm_state* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  store i32 2, i32* %10, align 4
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = bitcast %struct.device* %15 to %struct.thermal_cooling_device*
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.thermal_cooling_device* @devm_kzalloc(%struct.thermal_cooling_device* %16, i32 80, i32 %17)
  %19 = bitcast %struct.thermal_cooling_device* %18 to %struct.pwm_fan_ctx*
  store %struct.pwm_fan_ctx* %19, %struct.pwm_fan_ctx** %6, align 8
  %20 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %21 = icmp ne %struct.pwm_fan_ctx* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %305

25:                                               ; preds = %1
  %26 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %26, i32 0, i32 12
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = bitcast %struct.device* %29 to %struct.thermal_cooling_device*
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.thermal_cooling_device* @devm_of_pwm_get(%struct.thermal_cooling_device* %30, i32 %33, i32* null)
  %35 = bitcast %struct.thermal_cooling_device* %34 to %struct.pwm_fan_ctx*
  %36 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %37 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %36, i32 0, i32 8
  store %struct.pwm_fan_ctx* %35, %struct.pwm_fan_ctx** %37, align 8
  %38 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %39 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %38, i32 0, i32 8
  %40 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %39, align 8
  %41 = bitcast %struct.pwm_fan_ctx* %40 to %struct.thermal_cooling_device*
  %42 = call i64 @IS_ERR(%struct.thermal_cooling_device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %25
  %45 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %46 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %45, i32 0, i32 8
  %47 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %46, align 8
  %48 = bitcast %struct.pwm_fan_ctx* %47 to %struct.thermal_cooling_device*
  %49 = call i32 @PTR_ERR(%struct.thermal_cooling_device* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @EPROBE_DEFER, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = bitcast %struct.device* %55 to %struct.thermal_cooling_device*
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (%struct.thermal_cooling_device*, i8*, ...) @dev_err(%struct.thermal_cooling_device* %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %54, %44
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %2, align 4
  br label %305

61:                                               ; preds = %25
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %64 = bitcast %struct.pwm_fan_ctx* %63 to %struct.thermal_cooling_device*
  %65 = call i32 @platform_set_drvdata(%struct.platform_device* %62, %struct.thermal_cooling_device* %64)
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = call i32 @platform_get_irq_optional(%struct.platform_device* %66, i32 0)
  %68 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %69 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %71 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @EPROBE_DEFER, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %61
  %77 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %78 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %2, align 4
  br label %305

80:                                               ; preds = %61
  %81 = load %struct.device*, %struct.device** %5, align 8
  %82 = bitcast %struct.device* %81 to %struct.thermal_cooling_device*
  %83 = call %struct.thermal_cooling_device* @devm_regulator_get_optional(%struct.thermal_cooling_device* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %84 = bitcast %struct.thermal_cooling_device* %83 to %struct.pwm_fan_ctx*
  %85 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %86 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %85, i32 0, i32 11
  store %struct.pwm_fan_ctx* %84, %struct.pwm_fan_ctx** %86, align 8
  %87 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %88 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %87, i32 0, i32 11
  %89 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %88, align 8
  %90 = bitcast %struct.pwm_fan_ctx* %89 to %struct.thermal_cooling_device*
  %91 = call i64 @IS_ERR(%struct.thermal_cooling_device* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %111

93:                                               ; preds = %80
  %94 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %95 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %94, i32 0, i32 11
  %96 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %95, align 8
  %97 = bitcast %struct.pwm_fan_ctx* %96 to %struct.thermal_cooling_device*
  %98 = call i32 @PTR_ERR(%struct.thermal_cooling_device* %97)
  %99 = load i32, i32* @ENODEV, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %93
  %103 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %104 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %103, i32 0, i32 11
  %105 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %104, align 8
  %106 = bitcast %struct.pwm_fan_ctx* %105 to %struct.thermal_cooling_device*
  %107 = call i32 @PTR_ERR(%struct.thermal_cooling_device* %106)
  store i32 %107, i32* %2, align 4
  br label %305

108:                                              ; preds = %93
  %109 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %110 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %109, i32 0, i32 11
  store %struct.pwm_fan_ctx* null, %struct.pwm_fan_ctx** %110, align 8
  br label %139

111:                                              ; preds = %80
  %112 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %113 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %112, i32 0, i32 11
  %114 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %113, align 8
  %115 = bitcast %struct.pwm_fan_ctx* %114 to %struct.thermal_cooling_device*
  %116 = call i32 @regulator_enable(%struct.thermal_cooling_device* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %111
  %120 = load %struct.device*, %struct.device** %5, align 8
  %121 = bitcast %struct.device* %120 to %struct.thermal_cooling_device*
  %122 = load i32, i32* %8, align 4
  %123 = call i32 (%struct.thermal_cooling_device*, i8*, ...) @dev_err(%struct.thermal_cooling_device* %121, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %2, align 4
  br label %305

125:                                              ; preds = %111
  %126 = load %struct.device*, %struct.device** %5, align 8
  %127 = bitcast %struct.device* %126 to %struct.thermal_cooling_device*
  %128 = load i32, i32* @pwm_fan_regulator_disable, align 4
  %129 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %130 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %129, i32 0, i32 11
  %131 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %130, align 8
  %132 = bitcast %struct.pwm_fan_ctx* %131 to %struct.thermal_cooling_device*
  %133 = call i32 @devm_add_action_or_reset(%struct.thermal_cooling_device* %127, i32 %128, %struct.thermal_cooling_device* %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %125
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %2, align 4
  br label %305

138:                                              ; preds = %125
  br label %139

139:                                              ; preds = %138, %108
  %140 = load i32, i32* @MAX_PWM, align 4
  %141 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %142 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %141, i32 0, i32 10
  store i32 %140, i32* %142, align 8
  %143 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %144 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %143, i32 0, i32 8
  %145 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %144, align 8
  %146 = bitcast %struct.pwm_fan_ctx* %145 to %struct.thermal_cooling_device*
  %147 = call i32 @pwm_init_state(%struct.thermal_cooling_device* %146, %struct.pwm_state* %9)
  %148 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %149 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %148, i32 0, i32 8
  %150 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %149, align 8
  %151 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %150, i32 0, i32 9
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = sub nsw i64 %153, 1
  %155 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %9, i32 0, i32 1
  store i64 %154, i64* %155, align 8
  %156 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %9, i32 0, i32 0
  store i32 1, i32* %156, align 8
  %157 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %158 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %157, i32 0, i32 8
  %159 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %158, align 8
  %160 = bitcast %struct.pwm_fan_ctx* %159 to %struct.thermal_cooling_device*
  %161 = call i32 @pwm_apply_state(%struct.thermal_cooling_device* %160, %struct.pwm_state* %9)
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %139
  %165 = load %struct.device*, %struct.device** %5, align 8
  %166 = bitcast %struct.device* %165 to %struct.thermal_cooling_device*
  %167 = load i32, i32* %8, align 4
  %168 = call i32 (%struct.thermal_cooling_device*, i8*, ...) @dev_err(%struct.thermal_cooling_device* %166, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %2, align 4
  br label %305

170:                                              ; preds = %139
  %171 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %172 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %171, i32 0, i32 6
  %173 = load i32, i32* @sample_timer, align 4
  %174 = call i32 @timer_setup(i32* %172, i32 %173, i32 0)
  %175 = load %struct.device*, %struct.device** %5, align 8
  %176 = bitcast %struct.device* %175 to %struct.thermal_cooling_device*
  %177 = load i32, i32* @pwm_fan_pwm_disable, align 4
  %178 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %179 = bitcast %struct.pwm_fan_ctx* %178 to %struct.thermal_cooling_device*
  %180 = call i32 @devm_add_action_or_reset(%struct.thermal_cooling_device* %176, i32 %177, %struct.thermal_cooling_device* %179)
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %170
  %184 = load i32, i32* %8, align 4
  store i32 %184, i32* %2, align 4
  br label %305

185:                                              ; preds = %170
  %186 = load %struct.device*, %struct.device** %5, align 8
  %187 = getelementptr inbounds %struct.device, %struct.device* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @of_property_read_u32(i32 %188, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32* %10)
  %190 = load i32, i32* %10, align 4
  %191 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %192 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  %193 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %194 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %203, label %197

197:                                              ; preds = %185
  %198 = load %struct.device*, %struct.device** %5, align 8
  %199 = bitcast %struct.device* %198 to %struct.thermal_cooling_device*
  %200 = call i32 (%struct.thermal_cooling_device*, i8*, ...) @dev_err(%struct.thermal_cooling_device* %199, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %201 = load i32, i32* @EINVAL, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %2, align 4
  br label %305

203:                                              ; preds = %185
  %204 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %205 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %239

208:                                              ; preds = %203
  %209 = load %struct.device*, %struct.device** %5, align 8
  %210 = bitcast %struct.device* %209 to %struct.thermal_cooling_device*
  %211 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %212 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @pulse_handler, align 4
  %215 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %216 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %219 = bitcast %struct.pwm_fan_ctx* %218 to %struct.thermal_cooling_device*
  %220 = call i32 @devm_request_irq(%struct.thermal_cooling_device* %210, i32 %213, i32 %214, i32 0, i32 %217, %struct.thermal_cooling_device* %219)
  store i32 %220, i32* %8, align 4
  %221 = load i32, i32* %8, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %208
  %224 = load %struct.device*, %struct.device** %5, align 8
  %225 = bitcast %struct.device* %224 to %struct.thermal_cooling_device*
  %226 = load i32, i32* %8, align 4
  %227 = call i32 (%struct.thermal_cooling_device*, i8*, ...) @dev_err(%struct.thermal_cooling_device* %225, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %226)
  %228 = load i32, i32* %8, align 4
  store i32 %228, i32* %2, align 4
  br label %305

229:                                              ; preds = %208
  %230 = call i32 (...) @ktime_get()
  %231 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %232 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %231, i32 0, i32 7
  store i32 %230, i32* %232, align 8
  %233 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %234 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %233, i32 0, i32 6
  %235 = load i64, i64* @jiffies, align 8
  %236 = load i64, i64* @HZ, align 8
  %237 = add nsw i64 %235, %236
  %238 = call i32 @mod_timer(i32* %234, i64 %237)
  br label %239

239:                                              ; preds = %229, %203
  %240 = load %struct.device*, %struct.device** %5, align 8
  %241 = bitcast %struct.device* %240 to %struct.thermal_cooling_device*
  %242 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %243 = bitcast %struct.pwm_fan_ctx* %242 to %struct.thermal_cooling_device*
  %244 = load i32, i32* @pwm_fan_groups, align 4
  %245 = call %struct.thermal_cooling_device* @devm_hwmon_device_register_with_groups(%struct.thermal_cooling_device* %241, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), %struct.thermal_cooling_device* %243, i32 %244)
  %246 = bitcast %struct.thermal_cooling_device* %245 to %struct.device*
  store %struct.device* %246, %struct.device** %7, align 8
  %247 = load %struct.device*, %struct.device** %7, align 8
  %248 = bitcast %struct.device* %247 to %struct.thermal_cooling_device*
  %249 = call i64 @IS_ERR(%struct.thermal_cooling_device* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %239
  %252 = load %struct.device*, %struct.device** %5, align 8
  %253 = bitcast %struct.device* %252 to %struct.thermal_cooling_device*
  %254 = call i32 (%struct.thermal_cooling_device*, i8*, ...) @dev_err(%struct.thermal_cooling_device* %253, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %255 = load %struct.device*, %struct.device** %7, align 8
  %256 = bitcast %struct.device* %255 to %struct.thermal_cooling_device*
  %257 = call i32 @PTR_ERR(%struct.thermal_cooling_device* %256)
  store i32 %257, i32* %2, align 4
  br label %305

258:                                              ; preds = %239
  %259 = load %struct.device*, %struct.device** %5, align 8
  %260 = bitcast %struct.device* %259 to %struct.thermal_cooling_device*
  %261 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %262 = bitcast %struct.pwm_fan_ctx* %261 to %struct.thermal_cooling_device*
  %263 = call i32 @pwm_fan_of_get_cooling_data(%struct.thermal_cooling_device* %260, %struct.thermal_cooling_device* %262)
  store i32 %263, i32* %8, align 4
  %264 = load i32, i32* %8, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %258
  %267 = load i32, i32* %8, align 4
  store i32 %267, i32* %2, align 4
  br label %305

268:                                              ; preds = %258
  %269 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %270 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %273 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %272, i32 0, i32 5
  store i32 %271, i32* %273, align 8
  %274 = load i32, i32* @CONFIG_THERMAL, align 4
  %275 = call i64 @IS_ENABLED(i32 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %304

277:                                              ; preds = %268
  %278 = load %struct.device*, %struct.device** %5, align 8
  %279 = bitcast %struct.device* %278 to %struct.thermal_cooling_device*
  %280 = load %struct.device*, %struct.device** %5, align 8
  %281 = getelementptr inbounds %struct.device, %struct.device* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %284 = bitcast %struct.pwm_fan_ctx* %283 to %struct.thermal_cooling_device*
  %285 = call %struct.thermal_cooling_device* @devm_thermal_of_cooling_device_register(%struct.thermal_cooling_device* %279, i32 %282, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), %struct.thermal_cooling_device* %284, i32* @pwm_fan_cooling_ops)
  store %struct.thermal_cooling_device* %285, %struct.thermal_cooling_device** %4, align 8
  %286 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %287 = call i64 @IS_ERR(%struct.thermal_cooling_device* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %297

289:                                              ; preds = %277
  %290 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %291 = call i32 @PTR_ERR(%struct.thermal_cooling_device* %290)
  store i32 %291, i32* %8, align 4
  %292 = load %struct.device*, %struct.device** %5, align 8
  %293 = bitcast %struct.device* %292 to %struct.thermal_cooling_device*
  %294 = load i32, i32* %8, align 4
  %295 = call i32 (%struct.thermal_cooling_device*, i8*, ...) @dev_err(%struct.thermal_cooling_device* %293, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0), i32 %294)
  %296 = load i32, i32* %8, align 4
  store i32 %296, i32* %2, align 4
  br label %305

297:                                              ; preds = %277
  %298 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %299 = bitcast %struct.thermal_cooling_device* %298 to %struct.pwm_fan_ctx*
  %300 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %6, align 8
  %301 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %300, i32 0, i32 2
  store %struct.pwm_fan_ctx* %299, %struct.pwm_fan_ctx** %301, align 8
  %302 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %303 = call i32 @thermal_cdev_update(%struct.thermal_cooling_device* %302)
  br label %304

304:                                              ; preds = %297, %268
  store i32 0, i32* %2, align 4
  br label %305

305:                                              ; preds = %304, %289, %266, %251, %223, %197, %183, %164, %136, %119, %102, %76, %59, %22
  %306 = load i32, i32* %2, align 4
  ret i32 %306
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.thermal_cooling_device* @devm_kzalloc(%struct.thermal_cooling_device*, i32, i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local %struct.thermal_cooling_device* @devm_of_pwm_get(%struct.thermal_cooling_device*, i32, i32*) #2

declare dso_local i64 @IS_ERR(%struct.thermal_cooling_device*) #2

declare dso_local i32 @PTR_ERR(%struct.thermal_cooling_device*) #2

declare dso_local i32 @dev_err(%struct.thermal_cooling_device*, i8*, ...) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.thermal_cooling_device*) #2

declare dso_local i32 @platform_get_irq_optional(%struct.platform_device*, i32) #2

declare dso_local %struct.thermal_cooling_device* @devm_regulator_get_optional(%struct.thermal_cooling_device*, i8*) #2

declare dso_local i32 @regulator_enable(%struct.thermal_cooling_device*) #2

declare dso_local i32 @devm_add_action_or_reset(%struct.thermal_cooling_device*, i32, %struct.thermal_cooling_device*) #2

declare dso_local i32 @pwm_init_state(%struct.thermal_cooling_device*, %struct.pwm_state*) #2

declare dso_local i32 @pwm_apply_state(%struct.thermal_cooling_device*, %struct.pwm_state*) #2

declare dso_local i32 @timer_setup(i32*, i32, i32) #2

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #2

declare dso_local i32 @devm_request_irq(%struct.thermal_cooling_device*, i32, i32, i32, i32, %struct.thermal_cooling_device*) #2

declare dso_local i32 @ktime_get(...) #2

declare dso_local i32 @mod_timer(i32*, i64) #2

declare dso_local %struct.thermal_cooling_device* @devm_hwmon_device_register_with_groups(%struct.thermal_cooling_device*, i8*, %struct.thermal_cooling_device*, i32) #2

declare dso_local i32 @pwm_fan_of_get_cooling_data(%struct.thermal_cooling_device*, %struct.thermal_cooling_device*) #2

declare dso_local i64 @IS_ENABLED(i32) #2

declare dso_local %struct.thermal_cooling_device* @devm_thermal_of_cooling_device_register(%struct.thermal_cooling_device*, i32, i8*, %struct.thermal_cooling_device*, i32*) #2

declare dso_local i32 @thermal_cdev_update(%struct.thermal_cooling_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
