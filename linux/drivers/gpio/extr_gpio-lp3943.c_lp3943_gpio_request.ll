; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lp3943.c_lp3943_gpio_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lp3943.c_lp3943_gpio_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.lp3943_gpio = type { %struct.lp3943* }
%struct.lp3943 = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @lp3943_gpio_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3943_gpio_request(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lp3943_gpio*, align 8
  %7 = alloca %struct.lp3943*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = call %struct.lp3943_gpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.lp3943_gpio* %9, %struct.lp3943_gpio** %6, align 8
  %10 = load %struct.lp3943_gpio*, %struct.lp3943_gpio** %6, align 8
  %11 = getelementptr inbounds %struct.lp3943_gpio, %struct.lp3943_gpio* %10, i32 0, i32 0
  %12 = load %struct.lp3943*, %struct.lp3943** %11, align 8
  store %struct.lp3943* %12, %struct.lp3943** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.lp3943*, %struct.lp3943** %7, align 8
  %15 = getelementptr inbounds %struct.lp3943, %struct.lp3943* %14, i32 0, i32 0
  %16 = call i64 @test_and_set_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local %struct.lp3943_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
