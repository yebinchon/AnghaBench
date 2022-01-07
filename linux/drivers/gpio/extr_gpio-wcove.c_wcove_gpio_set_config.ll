; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wcove.c_wcove_gpio_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wcove.c_wcove_gpio_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.wcove_gpio = type { i32 }

@CTRL_OUT = common dso_local global i32 0, align 4
@CTLO_DRV_MASK = common dso_local global i32 0, align 4
@CTLO_DRV_OD = common dso_local global i32 0, align 4
@CTLO_DRV_CMOS = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i64)* @wcove_gpio_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcove_gpio_set_config(%struct.gpio_chip* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.wcove_gpio*, align 8
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %11 = call %struct.wcove_gpio* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.wcove_gpio* %11, %struct.wcove_gpio** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @CTRL_OUT, align 4
  %14 = call i32 @to_reg(i32 %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @pinconf_to_config_param(i64 %19)
  switch i32 %20, label %37 [
    i32 129, label %21
    i32 128, label %29
  ]

21:                                               ; preds = %18
  %22 = load %struct.wcove_gpio*, %struct.wcove_gpio** %8, align 8
  %23 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @CTLO_DRV_MASK, align 4
  %27 = load i32, i32* @CTLO_DRV_OD, align 4
  %28 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %41

29:                                               ; preds = %18
  %30 = load %struct.wcove_gpio*, %struct.wcove_gpio** %8, align 8
  %31 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @CTLO_DRV_MASK, align 4
  %35 = load i32, i32* @CTLO_DRV_CMOS, align 4
  %36 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %18
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* @ENOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %29, %21, %17
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.wcove_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @to_reg(i32, i32) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
