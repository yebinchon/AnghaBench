; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-menz127.c_men_z127_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-menz127.c_men_z127_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i64)* @men_z127_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @men_z127_set_config(%struct.gpio_chip* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = call i32 @pinconf_to_config_param(i64 %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %23 [
    i32 130, label %12
    i32 129, label %12
    i32 128, label %17
  ]

12:                                               ; preds = %3, %3
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @men_z127_set_single_ended(%struct.gpio_chip* %13, i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  br label %27

17:                                               ; preds = %3
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @pinconf_to_config_argument(i64 %20)
  %22 = call i32 @men_z127_debounce(%struct.gpio_chip* %18, i32 %19, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %27

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* @ENOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %17, %12
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @men_z127_set_single_ended(%struct.gpio_chip*, i32, i32) #1

declare dso_local i32 @men_z127_debounce(%struct.gpio_chip*, i32, i32) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
