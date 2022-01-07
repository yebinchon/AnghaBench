; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_sms-cards.c_sms_gpio_assign_11xx_default_led_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_sms-cards.c_sms_gpio_assign_11xx_default_led_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_config_gpio = type { i32, i32, i32, i32, i32 }

@SMS_GPIO_DIRECTION_OUTPUT = common dso_local global i32 0, align 4
@SMS_GPIO_INPUTCHARACTERISTICS_NORMAL = common dso_local global i32 0, align 4
@SMS_GPIO_OUTPUTDRIVING_4mA = common dso_local global i32 0, align 4
@SMS_GPIO_OUTPUT_SLEW_RATE_0_45_V_NS = common dso_local global i32 0, align 4
@SMS_GPIO_PULLUPDOWN_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smscore_config_gpio*)* @sms_gpio_assign_11xx_default_led_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sms_gpio_assign_11xx_default_led_config(%struct.smscore_config_gpio* %0) #0 {
  %2 = alloca %struct.smscore_config_gpio*, align 8
  store %struct.smscore_config_gpio* %0, %struct.smscore_config_gpio** %2, align 8
  %3 = load i32, i32* @SMS_GPIO_DIRECTION_OUTPUT, align 4
  %4 = load %struct.smscore_config_gpio*, %struct.smscore_config_gpio** %2, align 8
  %5 = getelementptr inbounds %struct.smscore_config_gpio, %struct.smscore_config_gpio* %4, i32 0, i32 4
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @SMS_GPIO_INPUTCHARACTERISTICS_NORMAL, align 4
  %7 = load %struct.smscore_config_gpio*, %struct.smscore_config_gpio** %2, align 8
  %8 = getelementptr inbounds %struct.smscore_config_gpio, %struct.smscore_config_gpio* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @SMS_GPIO_OUTPUTDRIVING_4mA, align 4
  %10 = load %struct.smscore_config_gpio*, %struct.smscore_config_gpio** %2, align 8
  %11 = getelementptr inbounds %struct.smscore_config_gpio, %struct.smscore_config_gpio* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @SMS_GPIO_OUTPUT_SLEW_RATE_0_45_V_NS, align 4
  %13 = load %struct.smscore_config_gpio*, %struct.smscore_config_gpio** %2, align 8
  %14 = getelementptr inbounds %struct.smscore_config_gpio, %struct.smscore_config_gpio* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @SMS_GPIO_PULLUPDOWN_NONE, align 4
  %16 = load %struct.smscore_config_gpio*, %struct.smscore_config_gpio** %2, align 8
  %17 = getelementptr inbounds %struct.smscore_config_gpio, %struct.smscore_config_gpio* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
