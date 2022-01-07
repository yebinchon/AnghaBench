; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_npcm750-pwm-fan.c_npcm7xx_pwm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_npcm750-pwm-fan.c_npcm7xx_pwm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.npcm7xx_pwm_fan_data = type { i32, i32, i32 }

@PWN_CNT_DEFAULT = common dso_local global i32 0, align 4
@PWM_OUTPUT_FREQ_25KHZ = common dso_local global i32 0, align 4
@MIN_PRESCALE1 = common dso_local global i32 0, align 4
@NPCM7XX_PWM_PRESCALE_SHIFT_CH01 = common dso_local global i32 0, align 4
@NPCM7XX_PWM_MAX_MODULES = common dso_local global i32 0, align 4
@NPCM7XX_PWM_PRESCALE2_DEFAULT = common dso_local global i32 0, align 4
@NPCM7XX_PWM_CTRL_MODE_DEFAULT = common dso_local global i32 0, align 4
@NPCM7XX_PWM_MAX_CHN_NUM_IN_A_MODULE = common dso_local global i32 0, align 4
@NPCM7XX_PWM_COUNTER_DEFAULT_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.npcm7xx_pwm_fan_data*)* @npcm7xx_pwm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm7xx_pwm_init(%struct.npcm7xx_pwm_fan_data* %0) #0 {
  %2 = alloca %struct.npcm7xx_pwm_fan_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.npcm7xx_pwm_fan_data* %0, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %7 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %8 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @clk_get_rate(i32 %9)
  %11 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %12 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %14 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PWN_CNT_DEFAULT, align 4
  %17 = sdiv i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @PWM_OUTPUT_FREQ_25KHZ, align 4
  %20 = call i32 @DIV_ROUND_CLOSEST(i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MIN_PRESCALE1, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @MIN_PRESCALE1, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %1
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @NPCM7XX_PWM_PRESCALE_SHIFT_CH01, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %77, %26
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @NPCM7XX_PWM_MAX_MODULES, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %80

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %41 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @NPCM7XX_PWM_REG_PR(i32 %42, i32 %43)
  %45 = call i32 @iowrite32(i32 %39, i32 %44)
  %46 = load i32, i32* @NPCM7XX_PWM_PRESCALE2_DEFAULT, align 4
  %47 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %48 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @NPCM7XX_PWM_REG_CSR(i32 %49, i32 %50)
  %52 = call i32 @iowrite32(i32 %46, i32 %51)
  %53 = load i32, i32* @NPCM7XX_PWM_CTRL_MODE_DEFAULT, align 4
  %54 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %55 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @NPCM7XX_PWM_REG_CR(i32 %56, i32 %57)
  %59 = call i32 @iowrite32(i32 %53, i32 %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %73, %38
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @NPCM7XX_PWM_MAX_CHN_NUM_IN_A_MODULE, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i32, i32* @NPCM7XX_PWM_COUNTER_DEFAULT_NUM, align 4
  %66 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %67 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @NPCM7XX_PWM_REG_CNRx(i32 %68, i32 %69, i32 %70)
  %72 = call i32 @iowrite32(i32 %65, i32 %71)
  br label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %60

76:                                               ; preds = %60
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %34

80:                                               ; preds = %34
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %5, align 4
  %83 = and i32 %82, 15
  %84 = add nsw i32 %83, 1
  %85 = sdiv i32 %81, %84
  ret i32 %85
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @NPCM7XX_PWM_REG_PR(i32, i32) #1

declare dso_local i32 @NPCM7XX_PWM_REG_CSR(i32, i32) #1

declare dso_local i32 @NPCM7XX_PWM_REG_CR(i32, i32) #1

declare dso_local i32 @NPCM7XX_PWM_REG_CNRx(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
