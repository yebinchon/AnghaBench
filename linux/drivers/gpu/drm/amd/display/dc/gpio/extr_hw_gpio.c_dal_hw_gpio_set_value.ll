; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_hw_gpio.c_dal_hw_gpio_set_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_hw_gpio.c_dal_hw_gpio_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_gpio_pin = type { i32 }
%struct.hw_gpio = type { i32 }

@A_reg = common dso_local global i32 0, align 4
@A = common dso_local global i32 0, align 4
@GPIO_RESULT_OK = common dso_local global i32 0, align 4
@EN_reg = common dso_local global i32 0, align 4
@EN = common dso_local global i32 0, align 4
@GPIO_RESULT_NON_SPECIFIC_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dal_hw_gpio_set_value(%struct.hw_gpio_pin* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw_gpio_pin*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hw_gpio*, align 8
  store %struct.hw_gpio_pin* %0, %struct.hw_gpio_pin** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %4, align 8
  %8 = call %struct.hw_gpio* @FROM_HW_GPIO_PIN(%struct.hw_gpio_pin* %7)
  store %struct.hw_gpio* %8, %struct.hw_gpio** %6, align 8
  %9 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %4, align 8
  %10 = getelementptr inbounds %struct.hw_gpio_pin, %struct.hw_gpio_pin* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %25 [
    i32 128, label %12
    i32 129, label %18
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @A_reg, align 4
  %14 = load i32, i32* @A, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @REG_UPDATE(i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* @GPIO_RESULT_OK, align 4
  store i32 %17, i32* %3, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load i32, i32* @EN_reg, align 4
  %20 = load i32, i32* @EN, align 4
  %21 = load i32, i32* %5, align 4
  %22 = xor i32 %21, -1
  %23 = call i32 @REG_UPDATE(i32 %19, i32 %20, i32 %22)
  %24 = load i32, i32* @GPIO_RESULT_OK, align 4
  store i32 %24, i32* %3, align 4
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @GPIO_RESULT_NON_SPECIFIC_ERROR, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %18, %12
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.hw_gpio* @FROM_HW_GPIO_PIN(%struct.hw_gpio_pin*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
