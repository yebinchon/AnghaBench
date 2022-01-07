; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3530.c_lm3530_init_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3530.c_lm3530_init_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3530_data = type { i32, i32, %struct.TYPE_2__, %struct.i2c_client*, %struct.lm3530_platform_data* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i32 }
%struct.lm3530_platform_data = type { i32, i32, i32, i32, i32, i32, %struct.lm3530_pwm_data }
%struct.lm3530_pwm_data = type { i32 (i32, i32)* }
%struct.lm3530_als_data = type { i32, i32, i32* }

@LM3530_REG_MAX = common dso_local global i32 0, align 4
@LM3530_RAMP_LAW_SHIFT = common dso_local global i32 0, align 4
@LM3530_MAX_CURR_SHIFT = common dso_local global i32 0, align 4
@LM3530_ENABLE_I2C = common dso_local global i32 0, align 4
@LM3530_ENABLE_PWM = common dso_local global i32 0, align 4
@LM3530_ENABLE_PWM_SIMPLE = common dso_local global i32 0, align 4
@LM3530_PWM_POL_SHIFT = common dso_local global i32 0, align 4
@LM3530_BRT_RAMP_FALL_SHIFT = common dso_local global i32 0, align 4
@LM3530_BRT_RAMP_RISE_SHIFT = common dso_local global i32 0, align 4
@LM3530_DEF_ZT_0 = common dso_local global i32 0, align 4
@LM3530_DEF_ZT_1 = common dso_local global i32 0, align 4
@LM3530_DEF_ZT_2 = common dso_local global i32 0, align 4
@LM3530_DEF_ZT_3 = common dso_local global i32 0, align 4
@LM3530_DEF_ZT_4 = common dso_local global i32 0, align 4
@lm3530_reg = common dso_local global i64* null, align 8
@LM3530_BRT_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3530_data*)* @lm3530_init_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3530_init_registers(%struct.lm3530_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lm3530_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.lm3530_platform_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca %struct.lm3530_pwm_data*, align 8
  %14 = alloca %struct.lm3530_als_data, align 8
  %15 = alloca i32, align 4
  store %struct.lm3530_data* %0, %struct.lm3530_data** %3, align 8
  store i32 0, i32* %4, align 4
  %16 = load i32, i32* @LM3530_REG_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load %struct.lm3530_data*, %struct.lm3530_data** %3, align 8
  %21 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %20, i32 0, i32 4
  %22 = load %struct.lm3530_platform_data*, %struct.lm3530_platform_data** %21, align 8
  store %struct.lm3530_platform_data* %22, %struct.lm3530_platform_data** %11, align 8
  %23 = load %struct.lm3530_data*, %struct.lm3530_data** %3, align 8
  %24 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %23, i32 0, i32 3
  %25 = load %struct.i2c_client*, %struct.i2c_client** %24, align 8
  store %struct.i2c_client* %25, %struct.i2c_client** %12, align 8
  %26 = load %struct.lm3530_platform_data*, %struct.lm3530_platform_data** %11, align 8
  %27 = getelementptr inbounds %struct.lm3530_platform_data, %struct.lm3530_platform_data* %26, i32 0, i32 6
  store %struct.lm3530_pwm_data* %27, %struct.lm3530_pwm_data** %13, align 8
  %28 = call i32 @memset(%struct.lm3530_als_data* %14, i32 0, i32 16)
  %29 = load %struct.lm3530_platform_data*, %struct.lm3530_platform_data** %11, align 8
  %30 = getelementptr inbounds %struct.lm3530_platform_data, %struct.lm3530_platform_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @LM3530_RAMP_LAW_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load %struct.lm3530_platform_data*, %struct.lm3530_platform_data** %11, align 8
  %35 = getelementptr inbounds %struct.lm3530_platform_data, %struct.lm3530_platform_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 7
  %38 = load i32, i32* @LM3530_MAX_CURR_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %33, %39
  store i32 %40, i32* %6, align 4
  %41 = load %struct.lm3530_data*, %struct.lm3530_data** %3, align 8
  %42 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %66 [
    i32 129, label %44
    i32 130, label %48
    i32 128, label %54
  ]

44:                                               ; preds = %1
  %45 = load i32, i32* @LM3530_ENABLE_I2C, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %66

48:                                               ; preds = %1
  %49 = load i32, i32* @LM3530_ENABLE_I2C, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load %struct.lm3530_platform_data*, %struct.lm3530_platform_data** %11, align 8
  %53 = call i32 @lm3530_als_configure(%struct.lm3530_platform_data* %52, %struct.lm3530_als_data* %14)
  br label %66

54:                                               ; preds = %1
  %55 = load i32, i32* @LM3530_ENABLE_PWM, align 4
  %56 = load i32, i32* @LM3530_ENABLE_PWM_SIMPLE, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.lm3530_platform_data*, %struct.lm3530_platform_data** %11, align 8
  %59 = getelementptr inbounds %struct.lm3530_platform_data, %struct.lm3530_platform_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @LM3530_PWM_POL_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = or i32 %57, %62
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %1, %54, %48, %44
  %67 = load %struct.lm3530_platform_data*, %struct.lm3530_platform_data** %11, align 8
  %68 = getelementptr inbounds %struct.lm3530_platform_data, %struct.lm3530_platform_data* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @LM3530_BRT_RAMP_FALL_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = load %struct.lm3530_platform_data*, %struct.lm3530_platform_data** %11, align 8
  %73 = getelementptr inbounds %struct.lm3530_platform_data, %struct.lm3530_platform_data* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @LM3530_BRT_RAMP_RISE_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = or i32 %71, %76
  store i32 %77, i32* %7, align 4
  %78 = load %struct.lm3530_data*, %struct.lm3530_data** %3, align 8
  %79 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %66
  %83 = load %struct.lm3530_data*, %struct.lm3530_data** %3, align 8
  %84 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %8, align 4
  br label %92

86:                                               ; preds = %66
  %87 = load %struct.lm3530_platform_data*, %struct.lm3530_platform_data** %11, align 8
  %88 = getelementptr inbounds %struct.lm3530_platform_data, %struct.lm3530_platform_data* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.lm3530_data*, %struct.lm3530_data** %3, align 8
  %91 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  store i32 %89, i32* %8, align 4
  br label %92

92:                                               ; preds = %86, %82
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.lm3530_data*, %struct.lm3530_data** %3, align 8
  %95 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp sgt i32 %93, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load %struct.lm3530_data*, %struct.lm3530_data** %3, align 8
  %101 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %99, %92
  %105 = load i32, i32* %6, align 4
  %106 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %105, i32* %106, align 16
  %107 = getelementptr inbounds %struct.lm3530_als_data, %struct.lm3530_als_data* %14, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* %7, align 4
  %111 = getelementptr inbounds i32, i32* %19, i64 2
  store i32 %110, i32* %111, align 8
  %112 = getelementptr inbounds %struct.lm3530_als_data, %struct.lm3530_als_data* %14, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds i32, i32* %19, i64 3
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* %8, align 4
  %116 = getelementptr inbounds i32, i32* %19, i64 4
  store i32 %115, i32* %116, align 16
  %117 = getelementptr inbounds %struct.lm3530_als_data, %struct.lm3530_als_data* %14, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds i32, i32* %19, i64 5
  store i32 %120, i32* %121, align 4
  %122 = getelementptr inbounds %struct.lm3530_als_data, %struct.lm3530_als_data* %14, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds i32, i32* %19, i64 6
  store i32 %125, i32* %126, align 8
  %127 = getelementptr inbounds %struct.lm3530_als_data, %struct.lm3530_als_data* %14, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds i32, i32* %19, i64 7
  store i32 %130, i32* %131, align 4
  %132 = getelementptr inbounds %struct.lm3530_als_data, %struct.lm3530_als_data* %14, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 3
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds i32, i32* %19, i64 8
  store i32 %135, i32* %136, align 16
  %137 = load i32, i32* @LM3530_DEF_ZT_0, align 4
  %138 = getelementptr inbounds i32, i32* %19, i64 9
  store i32 %137, i32* %138, align 4
  %139 = load i32, i32* @LM3530_DEF_ZT_1, align 4
  %140 = getelementptr inbounds i32, i32* %19, i64 10
  store i32 %139, i32* %140, align 8
  %141 = load i32, i32* @LM3530_DEF_ZT_2, align 4
  %142 = getelementptr inbounds i32, i32* %19, i64 11
  store i32 %141, i32* %142, align 4
  %143 = load i32, i32* @LM3530_DEF_ZT_3, align 4
  %144 = getelementptr inbounds i32, i32* %19, i64 12
  store i32 %143, i32* %144, align 16
  %145 = load i32, i32* @LM3530_DEF_ZT_4, align 4
  %146 = getelementptr inbounds i32, i32* %19, i64 13
  store i32 %145, i32* %146, align 4
  %147 = load %struct.lm3530_data*, %struct.lm3530_data** %3, align 8
  %148 = call i32 @lm3530_led_enable(%struct.lm3530_data* %147)
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* %4, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %104
  %152 = load i32, i32* %4, align 4
  store i32 %152, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %211

153:                                              ; preds = %104
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %206, %153
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* @LM3530_REG_MAX, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %209

158:                                              ; preds = %154
  %159 = load i64*, i64** @lm3530_reg, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @LM3530_BRT_CTRL_REG, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %190

166:                                              ; preds = %158
  %167 = load %struct.lm3530_data*, %struct.lm3530_data** %3, align 8
  %168 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 128
  br i1 %170, label %171, label %190

171:                                              ; preds = %166
  %172 = load %struct.lm3530_pwm_data*, %struct.lm3530_pwm_data** %13, align 8
  %173 = getelementptr inbounds %struct.lm3530_pwm_data, %struct.lm3530_pwm_data* %172, i32 0, i32 0
  %174 = load i32 (i32, i32)*, i32 (i32, i32)** %173, align 8
  %175 = icmp ne i32 (i32, i32)* %174, null
  br i1 %175, label %176, label %189

176:                                              ; preds = %171
  %177 = load %struct.lm3530_pwm_data*, %struct.lm3530_pwm_data** %13, align 8
  %178 = getelementptr inbounds %struct.lm3530_pwm_data, %struct.lm3530_pwm_data* %177, i32 0, i32 0
  %179 = load i32 (i32, i32)*, i32 (i32, i32)** %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %19, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.lm3530_data*, %struct.lm3530_data** %3, align 8
  %185 = getelementptr inbounds %struct.lm3530_data, %struct.lm3530_data* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 %179(i32 %183, i32 %187)
  br label %189

189:                                              ; preds = %176, %171
  br label %206

190:                                              ; preds = %166, %158
  %191 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %192 = load i64*, i64** @lm3530_reg, align 8
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %19, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %191, i64 %196, i32 %200)
  store i32 %201, i32* %4, align 4
  %202 = load i32, i32* %4, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %190
  br label %209

205:                                              ; preds = %190
  br label %206

206:                                              ; preds = %205, %189
  %207 = load i32, i32* %5, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %5, align 4
  br label %154

209:                                              ; preds = %204, %154
  %210 = load i32, i32* %4, align 4
  store i32 %210, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %211

211:                                              ; preds = %209, %151
  %212 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %212)
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.lm3530_als_data*, i32, i32) #2

declare dso_local i32 @lm3530_als_configure(%struct.lm3530_platform_data*, %struct.lm3530_als_data*) #2

declare dso_local i32 @lm3530_led_enable(%struct.lm3530_data*) #2

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
