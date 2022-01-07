; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm8994.c_wm8994_gpio_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm8994.c_wm8994_gpio_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.wm8994_gpio = type { %struct.wm8994* }
%struct.wm8994 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @wm8994_gpio_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8994_gpio_request(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8994_gpio*, align 8
  %7 = alloca %struct.wm8994*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = call %struct.wm8994_gpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.wm8994_gpio* %9, %struct.wm8994_gpio** %6, align 8
  %10 = load %struct.wm8994_gpio*, %struct.wm8994_gpio** %6, align 8
  %11 = getelementptr inbounds %struct.wm8994_gpio, %struct.wm8994_gpio* %10, i32 0, i32 0
  %12 = load %struct.wm8994*, %struct.wm8994** %11, align 8
  store %struct.wm8994* %12, %struct.wm8994** %7, align 8
  %13 = load %struct.wm8994*, %struct.wm8994** %7, align 8
  %14 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %22 [
    i32 128, label %16
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %21 [
    i32 1, label %18
    i32 2, label %18
    i32 3, label %18
    i32 4, label %18
    i32 6, label %18
  ]

18:                                               ; preds = %16, %16, %16, %16, %16
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %24

21:                                               ; preds = %16
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %21
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.wm8994_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
