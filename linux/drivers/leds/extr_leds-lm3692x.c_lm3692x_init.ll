; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3692x.c_lm3692x_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3692x.c_lm3692x_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3692x_led = type { i32, %struct.TYPE_2__*, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to enable regulator\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Cannot read/clear faults\0A\00", align 1
@LM3692X_BRT_CTRL = common dso_local global i32 0, align 4
@LM3692X_EN = common dso_local global i32 0, align 4
@LM3692X_DEVICE_EN = common dso_local global i32 0, align 4
@LM3692X_BRT_MSB = common dso_local global i32 0, align 4
@LM3692X_BRT_LSB = common dso_local global i32 0, align 4
@LM3692X_PWM_CTRL = common dso_local global i32 0, align 4
@LM3692X_PWM_FILTER_100 = common dso_local global i32 0, align 4
@LM3692X_PWM_SAMP_24MHZ = common dso_local global i32 0, align 4
@LM3692X_BOOST_CTRL = common dso_local global i32 0, align 4
@LM3692X_BRHT_MODE_RAMP_MULTI = common dso_local global i32 0, align 4
@LM3692X_BL_ADJ_POL = common dso_local global i32 0, align 4
@LM3692X_RAMP_RATE_250us = common dso_local global i32 0, align 4
@LM3692X_AUTO_FREQ_HI = common dso_local global i32 0, align 4
@LM3692X_AUTO_FREQ_LO = common dso_local global i32 0, align 4
@LM3692X_BL_ADJ_THRESH = common dso_local global i32 0, align 4
@LM3692X_PWM_HYSTER_4LSB = common dso_local global i32 0, align 4
@LM36923_MODEL = common dso_local global i32 0, align 4
@LM3692X_LED1_EN = common dso_local global i32 0, align 4
@LM3692X_LED2_EN = common dso_local global i32 0, align 4
@LM36923_LED3_EN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"LED3 sync not available on this device\0A\00", align 1
@LM3692X_ENABLE_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Fail writing initialization values\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to disable regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3692x_led*)* @lm3692x_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3692x_init(%struct.lm3692x_led* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lm3692x_led*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lm3692x_led* %0, %struct.lm3692x_led** %3, align 8
  %6 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %7 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %12 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @regulator_enable(i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %19 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %237

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %27 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %32 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @gpiod_direction_output(i64 %33, i32 1)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %37 = call i32 @lm3692x_fault_check(%struct.lm3692x_led* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %42 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %201

46:                                               ; preds = %35
  %47 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %48 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @LM3692X_BRT_CTRL, align 4
  %51 = call i32 @regmap_write(i32 %49, i32 %50, i32 0)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %201

55:                                               ; preds = %46
  %56 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %57 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @LM3692X_EN, align 4
  %60 = load i32, i32* @LM3692X_DEVICE_EN, align 4
  %61 = call i32 @regmap_write(i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %201

65:                                               ; preds = %55
  %66 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %67 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @LM3692X_BRT_MSB, align 4
  %70 = call i32 @regmap_write(i32 %68, i32 %69, i32 0)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %201

74:                                               ; preds = %65
  %75 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %76 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @LM3692X_BRT_LSB, align 4
  %79 = call i32 @regmap_write(i32 %77, i32 %78, i32 0)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %201

83:                                               ; preds = %74
  %84 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %85 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @LM3692X_PWM_CTRL, align 4
  %88 = load i32, i32* @LM3692X_PWM_FILTER_100, align 4
  %89 = load i32, i32* @LM3692X_PWM_SAMP_24MHZ, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @regmap_write(i32 %86, i32 %87, i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %201

95:                                               ; preds = %83
  %96 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %97 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @LM3692X_BOOST_CTRL, align 4
  %100 = load i32, i32* @LM3692X_BRHT_MODE_RAMP_MULTI, align 4
  %101 = load i32, i32* @LM3692X_BL_ADJ_POL, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @LM3692X_RAMP_RATE_250us, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @regmap_write(i32 %98, i32 %99, i32 %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %95
  br label %201

109:                                              ; preds = %95
  %110 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %111 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @LM3692X_AUTO_FREQ_HI, align 4
  %114 = call i32 @regmap_write(i32 %112, i32 %113, i32 0)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %201

118:                                              ; preds = %109
  %119 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %120 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @LM3692X_AUTO_FREQ_LO, align 4
  %123 = call i32 @regmap_write(i32 %121, i32 %122, i32 0)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %201

127:                                              ; preds = %118
  %128 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %129 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @LM3692X_BL_ADJ_THRESH, align 4
  %132 = call i32 @regmap_write(i32 %130, i32 %131, i32 0)
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  br label %201

136:                                              ; preds = %127
  %137 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %138 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @LM3692X_BRT_CTRL, align 4
  %141 = load i32, i32* @LM3692X_BL_ADJ_POL, align 4
  %142 = load i32, i32* @LM3692X_PWM_HYSTER_4LSB, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @regmap_write(i32 %139, i32 %140, i32 %143)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %136
  br label %201

148:                                              ; preds = %136
  %149 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %150 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  switch i32 %151, label %153 [
    i32 0, label %152
    i32 1, label %170
    i32 2, label %172
    i32 3, label %174
  ]

152:                                              ; preds = %148
  br label %153

153:                                              ; preds = %148, %152
  %154 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %155 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @LM36923_MODEL, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %153
  %160 = load i32, i32* @LM3692X_LED1_EN, align 4
  %161 = load i32, i32* @LM3692X_LED2_EN, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @LM36923_LED3_EN, align 4
  %164 = or i32 %162, %163
  store i32 %164, i32* %4, align 4
  br label %169

165:                                              ; preds = %153
  %166 = load i32, i32* @LM3692X_LED1_EN, align 4
  %167 = load i32, i32* @LM3692X_LED2_EN, align 4
  %168 = or i32 %166, %167
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %165, %159
  br label %190

170:                                              ; preds = %148
  %171 = load i32, i32* @LM3692X_LED1_EN, align 4
  store i32 %171, i32* %4, align 4
  br label %190

172:                                              ; preds = %148
  %173 = load i32, i32* @LM3692X_LED2_EN, align 4
  store i32 %173, i32* %4, align 4
  br label %190

174:                                              ; preds = %148
  %175 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %176 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @LM36923_MODEL, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = load i32, i32* @LM36923_LED3_EN, align 4
  store i32 %181, i32* %4, align 4
  br label %190

182:                                              ; preds = %174
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %5, align 4
  %185 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %186 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %185, i32 0, i32 1
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = call i32 @dev_err(i32* %188, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %201

190:                                              ; preds = %180, %172, %170, %169
  %191 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %192 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @LM3692X_EN, align 4
  %195 = load i32, i32* @LM3692X_ENABLE_MASK, align 4
  %196 = load i32, i32* %4, align 4
  %197 = load i32, i32* @LM3692X_DEVICE_EN, align 4
  %198 = or i32 %196, %197
  %199 = call i32 @regmap_update_bits(i32 %193, i32 %194, i32 %195, i32 %198)
  store i32 %199, i32* %5, align 4
  %200 = load i32, i32* %5, align 4
  store i32 %200, i32* %2, align 4
  br label %237

201:                                              ; preds = %182, %147, %135, %126, %117, %108, %94, %82, %73, %64, %54, %40
  %202 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %203 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %202, i32 0, i32 1
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = call i32 @dev_err(i32* %205, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %207 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %208 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %201
  %212 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %213 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @gpiod_direction_output(i64 %214, i32 0)
  br label %216

216:                                              ; preds = %211, %201
  %217 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %218 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %235

221:                                              ; preds = %216
  %222 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %223 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = call i32 @regulator_disable(i64 %224)
  store i32 %225, i32* %5, align 4
  %226 = load i32, i32* %5, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %221
  %229 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %230 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %229, i32 0, i32 1
  %231 = load %struct.TYPE_2__*, %struct.TYPE_2__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 0
  %233 = call i32 @dev_err(i32* %232, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %234

234:                                              ; preds = %228, %221
  br label %235

235:                                              ; preds = %234, %216
  %236 = load i32, i32* %5, align 4
  store i32 %236, i32* %2, align 4
  br label %237

237:                                              ; preds = %235, %190, %17
  %238 = load i32, i32* %2, align 4
  ret i32 %238
}

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @gpiod_direction_output(i64, i32) #1

declare dso_local i32 @lm3692x_fault_check(%struct.lm3692x_led*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
