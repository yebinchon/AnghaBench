; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_npcm750-pwm-fan.c_npcm7xx_pwm_config_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_npcm750-pwm-fan.c_npcm7xx_pwm_config_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.npcm7xx_pwm_fan_data = type { i32*, i32 }

@NPCM7XX_PWM_MAX_CHN_NUM_IN_A_MODULE = common dso_local global i32 0, align 4
@NPCM7XX_PWM_CTRL_CH0_EN_BIT = common dso_local global i64 0, align 8
@NPCM7XX_PWM_CTRL_CH0_INV_BIT = common dso_local global i64 0, align 8
@NPCM7XX_PWM_CTRL_CH1_EN_BIT = common dso_local global i64 0, align 8
@NPCM7XX_PWM_CTRL_CH1_INV_BIT = common dso_local global i64 0, align 8
@NPCM7XX_PWM_CTRL_CH2_EN_BIT = common dso_local global i64 0, align 8
@NPCM7XX_PWM_CTRL_CH2_INV_BIT = common dso_local global i64 0, align 8
@NPCM7XX_PWM_CTRL_CH3_EN_BIT = common dso_local global i64 0, align 8
@NPCM7XX_PWM_CTRL_CH3_INV_BIT = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.npcm7xx_pwm_fan_data*, i32, i64)* @npcm7xx_pwm_config_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm7xx_pwm_config_set(%struct.npcm7xx_pwm_fan_data* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.npcm7xx_pwm_fan_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.npcm7xx_pwm_fan_data* %0, %struct.npcm7xx_pwm_fan_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @NPCM7XX_PWM_MAX_CHN_NUM_IN_A_MODULE, align 4
  %15 = srem i32 %13, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @NPCM7XX_PWM_MAX_CHN_NUM_IN_A_MODULE, align 4
  %19 = sdiv i32 %17, %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %9, align 8
  %21 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %5, align 8
  %22 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %5, align 8
  %29 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @NPCM7XX_PWM_REG_CMRx(i32 %30, i64 %31, i64 %32)
  %34 = call i32 @iowrite32(i64 %27, i32 %33)
  %35 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %5, align 8
  %36 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @NPCM7XX_PWM_REG_CR(i32 %37, i64 %38)
  %40 = call i64 @ioread32(i32 %39)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %8, align 8
  switch i64 %41, label %54 [
    i64 0, label %42
    i64 1, label %45
    i64 2, label %48
    i64 3, label %51
  ]

42:                                               ; preds = %3
  %43 = load i64, i64* @NPCM7XX_PWM_CTRL_CH0_EN_BIT, align 8
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* @NPCM7XX_PWM_CTRL_CH0_INV_BIT, align 8
  store i64 %44, i64* %12, align 8
  br label %63

45:                                               ; preds = %3
  %46 = load i64, i64* @NPCM7XX_PWM_CTRL_CH1_EN_BIT, align 8
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* @NPCM7XX_PWM_CTRL_CH1_INV_BIT, align 8
  store i64 %47, i64* %12, align 8
  br label %63

48:                                               ; preds = %3
  %49 = load i64, i64* @NPCM7XX_PWM_CTRL_CH2_EN_BIT, align 8
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* @NPCM7XX_PWM_CTRL_CH2_INV_BIT, align 8
  store i64 %50, i64* %12, align 8
  br label %63

51:                                               ; preds = %3
  %52 = load i64, i64* @NPCM7XX_PWM_CTRL_CH3_EN_BIT, align 8
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* @NPCM7XX_PWM_CTRL_CH3_INV_BIT, align 8
  store i64 %53, i64* %12, align 8
  br label %63

54:                                               ; preds = %3
  %55 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %5, align 8
  %56 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %96

63:                                               ; preds = %51, %48, %45, %42
  %64 = load i64, i64* %7, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i64, i64* %11, align 8
  %68 = xor i64 %67, -1
  %69 = load i64, i64* %10, align 8
  %70 = and i64 %69, %68
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %10, align 8
  %73 = or i64 %72, %71
  store i64 %73, i64* %10, align 8
  br label %82

74:                                               ; preds = %63
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %10, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %10, align 8
  %78 = load i64, i64* %12, align 8
  %79 = xor i64 %78, -1
  %80 = load i64, i64* %10, align 8
  %81 = and i64 %80, %79
  store i64 %81, i64* %10, align 8
  br label %82

82:                                               ; preds = %74, %66
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %5, align 8
  %85 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @NPCM7XX_PWM_REG_CR(i32 %86, i64 %87)
  %89 = call i32 @iowrite32(i64 %83, i32 %88)
  %90 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %5, align 8
  %91 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = call i32 @mutex_unlock(i32* %94)
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %82, %54
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iowrite32(i64, i32) #1

declare dso_local i32 @NPCM7XX_PWM_REG_CMRx(i32, i64, i64) #1

declare dso_local i64 @ioread32(i32) #1

declare dso_local i32 @NPCM7XX_PWM_REG_CR(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
