; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_npcm750-pwm-fan.c_npcm7xx_write_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_npcm750-pwm-fan.c_npcm7xx_write_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.npcm7xx_pwm_fan_data = type { i32 }

@NPCM7XX_PWM_CMR_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64)* @npcm7xx_write_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm7xx_write_pwm(%struct.device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.npcm7xx_pwm_fan_data*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.npcm7xx_pwm_fan_data* @dev_get_drvdata(%struct.device* %12)
  store %struct.npcm7xx_pwm_fan_data* %13, %struct.npcm7xx_pwm_fan_data** %10, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %31 [
    i32 128, label %15
  ]

15:                                               ; preds = %4
  %16 = load i64, i64* %9, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @NPCM7XX_PWM_CMR_MAX, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %15
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %36

25:                                               ; preds = %18
  %26 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %10, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i64, i64* %9, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @npcm7xx_pwm_config_set(%struct.npcm7xx_pwm_fan_data* %26, i32 %27, i32 %29)
  store i32 %30, i32* %11, align 4
  br label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %34, %22
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.npcm7xx_pwm_fan_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @npcm7xx_pwm_config_set(%struct.npcm7xx_pwm_fan_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
