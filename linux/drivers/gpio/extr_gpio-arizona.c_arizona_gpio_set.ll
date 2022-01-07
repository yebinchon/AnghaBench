; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-arizona.c_arizona_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-arizona.c_arizona_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.arizona_gpio = type { %struct.arizona* }
%struct.arizona = type { i32 }

@ARIZONA_GPN_LVL = common dso_local global i32 0, align 4
@ARIZONA_GPIO1_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @arizona_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arizona_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.arizona_gpio*, align 8
  %8 = alloca %struct.arizona*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.arizona_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.arizona_gpio* %10, %struct.arizona_gpio** %7, align 8
  %11 = load %struct.arizona_gpio*, %struct.arizona_gpio** %7, align 8
  %12 = getelementptr inbounds %struct.arizona_gpio, %struct.arizona_gpio* %11, i32 0, i32 0
  %13 = load %struct.arizona*, %struct.arizona** %12, align 8
  store %struct.arizona* %13, %struct.arizona** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @ARIZONA_GPN_LVL, align 4
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %16, %3
  %19 = load %struct.arizona*, %struct.arizona** %8, align 8
  %20 = getelementptr inbounds %struct.arizona, %struct.arizona* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ARIZONA_GPIO1_CTRL, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %22, %23
  %25 = load i32, i32* @ARIZONA_GPN_LVL, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @regmap_update_bits(i32 %21, i32 %24, i32 %25, i32 %26)
  ret void
}

declare dso_local %struct.arizona_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
