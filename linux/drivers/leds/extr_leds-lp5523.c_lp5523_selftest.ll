; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5523.c_lp5523_selftest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5523.c_lp5523_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lp55xx_led = type { i32, %struct.lp55xx_chip* }
%struct.lp55xx_chip = type { i32, %struct.lp55xx_platform_data* }
%struct.lp55xx_platform_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LP5523_REG_STATUS = common dso_local global i32 0, align 4
@LP55XX_CLOCK_EXT = common dso_local global i64 0, align 8
@LP5523_EXT_CLK_USED = common dso_local global i64 0, align 8
@LP5523_REG_LED_TEST_CTRL = common dso_local global i64 0, align 8
@LP5523_EN_LEDTEST = common dso_local global i32 0, align 4
@LP5523_LEDTEST_DONE = common dso_local global i64 0, align 8
@LP5523_REG_LED_TEST_ADC = common dso_local global i32 0, align 4
@LP5523_MAX_LEDS = common dso_local global i32 0, align 4
@LP5523_REG_LED_CURRENT_BASE = common dso_local global i64 0, align 8
@LP5523_REG_LED_PWM_BASE = common dso_local global i64 0, align 8
@LP5523_ADC_SHORTCIRC_LIM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"LED %d FAIL\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @lp5523_selftest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp5523_selftest(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lp55xx_led*, align 8
  %8 = alloca %struct.lp55xx_chip*, align 8
  %9 = alloca %struct.lp55xx_platform_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @to_i2c_client(%struct.device* %16)
  %18 = call %struct.lp55xx_led* @i2c_get_clientdata(i32 %17)
  store %struct.lp55xx_led* %18, %struct.lp55xx_led** %7, align 8
  %19 = load %struct.lp55xx_led*, %struct.lp55xx_led** %7, align 8
  %20 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %19, i32 0, i32 1
  %21 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %20, align 8
  store %struct.lp55xx_chip* %21, %struct.lp55xx_chip** %8, align 8
  %22 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %8, align 8
  %23 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %22, i32 0, i32 1
  %24 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %23, align 8
  store %struct.lp55xx_platform_data* %24, %struct.lp55xx_platform_data** %9, align 8
  store i32 0, i32* %12, align 4
  %25 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %8, align 8
  %26 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %8, align 8
  %29 = load i32, i32* @LP5523_REG_STATUS, align 4
  %30 = call i32 @lp55xx_read(%struct.lp55xx_chip* %28, i32 %29, i64* %13)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %186

34:                                               ; preds = %3
  %35 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %9, align 8
  %36 = getelementptr inbounds %struct.lp55xx_platform_data, %struct.lp55xx_platform_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @LP55XX_CLOCK_EXT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* @LP5523_EXT_CLK_USED, align 8
  %43 = and i64 %41, %42
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %186

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %34
  %48 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %8, align 8
  %49 = load i64, i64* @LP5523_REG_LED_TEST_CTRL, align 8
  %50 = load i32, i32* @LP5523_EN_LEDTEST, align 4
  %51 = or i32 %50, 16
  %52 = call i32 @lp55xx_write(%struct.lp55xx_chip* %48, i64 %49, i32 %51)
  %53 = call i32 @usleep_range(i32 3000, i32 6000)
  %54 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %8, align 8
  %55 = load i32, i32* @LP5523_REG_STATUS, align 4
  %56 = call i32 @lp55xx_read(%struct.lp55xx_chip* %54, i32 %55, i64* %13)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %186

60:                                               ; preds = %47
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* @LP5523_LEDTEST_DONE, align 8
  %63 = and i64 %61, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = call i32 @usleep_range(i32 3000, i32 6000)
  br label %67

67:                                               ; preds = %65, %60
  %68 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %8, align 8
  %69 = load i32, i32* @LP5523_REG_LED_TEST_ADC, align 4
  %70 = call i32 @lp55xx_read(%struct.lp55xx_chip* %68, i32 %69, i64* %15)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %186

74:                                               ; preds = %67
  %75 = load i64, i64* %15, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, i64* %15, align 8
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %176, %74
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @LP5523_MAX_LEDS, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %179

81:                                               ; preds = %77
  %82 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %9, align 8
  %83 = getelementptr inbounds %struct.lp55xx_platform_data, %struct.lp55xx_platform_data* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %176

92:                                               ; preds = %81
  %93 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %8, align 8
  %94 = load i64, i64* @LP5523_REG_LED_CURRENT_BASE, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %9, align 8
  %99 = getelementptr inbounds %struct.lp55xx_platform_data, %struct.lp55xx_platform_data* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @lp55xx_write(%struct.lp55xx_chip* %93, i64 %97, i32 %105)
  %107 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %8, align 8
  %108 = load i64, i64* @LP5523_REG_LED_PWM_BASE, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %108, %110
  %112 = call i32 @lp55xx_write(%struct.lp55xx_chip* %107, i64 %111, i32 255)
  %113 = call i32 @usleep_range(i32 2000, i32 4000)
  %114 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %8, align 8
  %115 = load i64, i64* @LP5523_REG_LED_TEST_CTRL, align 8
  %116 = load i32, i32* @LP5523_EN_LEDTEST, align 4
  %117 = load i32, i32* %10, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @lp55xx_write(%struct.lp55xx_chip* %114, i64 %115, i32 %118)
  %120 = call i32 @usleep_range(i32 3000, i32 6000)
  %121 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %8, align 8
  %122 = load i32, i32* @LP5523_REG_STATUS, align 4
  %123 = call i32 @lp55xx_read(%struct.lp55xx_chip* %121, i32 %122, i64* %13)
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %92
  br label %186

127:                                              ; preds = %92
  %128 = load i64, i64* %13, align 8
  %129 = load i64, i64* @LP5523_LEDTEST_DONE, align 8
  %130 = and i64 %128, %129
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %127
  %133 = call i32 @usleep_range(i32 3000, i32 6000)
  br label %134

134:                                              ; preds = %132, %127
  %135 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %8, align 8
  %136 = load i32, i32* @LP5523_REG_LED_TEST_ADC, align 4
  %137 = call i32 @lp55xx_read(%struct.lp55xx_chip* %135, i32 %136, i64* %14)
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %186

141:                                              ; preds = %134
  %142 = load i64, i64* %14, align 8
  %143 = load i64, i64* %15, align 8
  %144 = icmp sge i64 %142, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = load i64, i64* %14, align 8
  %147 = load i64, i64* @LP5523_ADC_SHORTCIRC_LIM, align 8
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %145, %141
  %150 = load i8*, i8** %6, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i32, i32* %10, align 4
  %155 = call i32 (i8*, i8*, ...) @sprintf(i8* %153, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %149, %145
  %159 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %8, align 8
  %160 = load i64, i64* @LP5523_REG_LED_PWM_BASE, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %160, %162
  %164 = call i32 @lp55xx_write(%struct.lp55xx_chip* %159, i64 %163, i32 0)
  %165 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %8, align 8
  %166 = load i64, i64* @LP5523_REG_LED_CURRENT_BASE, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %166, %168
  %170 = load %struct.lp55xx_led*, %struct.lp55xx_led** %7, align 8
  %171 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @lp55xx_write(%struct.lp55xx_chip* %165, i64 %169, i32 %172)
  %174 = load %struct.lp55xx_led*, %struct.lp55xx_led** %7, align 8
  %175 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %174, i32 1
  store %struct.lp55xx_led* %175, %struct.lp55xx_led** %7, align 8
  br label %176

176:                                              ; preds = %158, %91
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %10, align 4
  br label %77

179:                                              ; preds = %77
  %180 = load i32, i32* %12, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i8*, i8** %6, align 8
  %184 = call i32 (i8*, i8*, ...) @sprintf(i8* %183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %184, i32* %12, align 4
  br label %185

185:                                              ; preds = %182, %179
  br label %189

186:                                              ; preds = %140, %126, %73, %59, %45, %33
  %187 = load i8*, i8** %6, align 8
  %188 = call i32 (i8*, i8*, ...) @sprintf(i8* %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %188, i32* %12, align 4
  br label %189

189:                                              ; preds = %186, %185
  %190 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %8, align 8
  %191 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %190, i32 0, i32 0
  %192 = call i32 @mutex_unlock(i32* %191)
  %193 = load i32, i32* %12, align 4
  ret i32 %193
}

declare dso_local %struct.lp55xx_led* @i2c_get_clientdata(i32) #1

declare dso_local i32 @to_i2c_client(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lp55xx_read(%struct.lp55xx_chip*, i32, i64*) #1

declare dso_local i32 @lp55xx_write(%struct.lp55xx_chip*, i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
