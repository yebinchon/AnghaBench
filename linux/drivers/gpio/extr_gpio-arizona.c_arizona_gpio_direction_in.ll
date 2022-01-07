; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-arizona.c_arizona_gpio_direction_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-arizona.c_arizona_gpio_direction_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.arizona_gpio = type { %struct.arizona* }
%struct.arizona = type { i32 }

@ARIZONA_GPIO1_CTRL = common dso_local global i32 0, align 4
@ARIZONA_GPN_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @arizona_gpio_direction_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_gpio_direction_in(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.arizona_gpio*, align 8
  %7 = alloca %struct.arizona*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.arizona_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.arizona_gpio* %12, %struct.arizona_gpio** %6, align 8
  %13 = load %struct.arizona_gpio*, %struct.arizona_gpio** %6, align 8
  %14 = getelementptr inbounds %struct.arizona_gpio, %struct.arizona_gpio* %13, i32 0, i32 0
  %15 = load %struct.arizona*, %struct.arizona** %14, align 8
  store %struct.arizona* %15, %struct.arizona** %7, align 8
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @gpiochip_line_is_persistent(%struct.gpio_chip* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.arizona*, %struct.arizona** %7, align 8
  %20 = getelementptr inbounds %struct.arizona, %struct.arizona* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ARIZONA_GPIO1_CTRL, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %22, %23
  %25 = load i32, i32* @ARIZONA_GPN_DIR, align 4
  %26 = load i32, i32* @ARIZONA_GPN_DIR, align 4
  %27 = call i32 @regmap_update_bits_check(i32 %21, i32 %24, i32 %25, i32 %26, i32* %9)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %3, align 4
  br label %48

32:                                               ; preds = %2
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %40 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pm_runtime_mark_last_busy(i32 %41)
  %43 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %44 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pm_runtime_put_autosuspend(i32 %45)
  br label %47

47:                                               ; preds = %38, %35, %32
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %30
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.arizona_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @gpiochip_line_is_persistent(%struct.gpio_chip*, i32) #1

declare dso_local i32 @regmap_update_bits_check(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
