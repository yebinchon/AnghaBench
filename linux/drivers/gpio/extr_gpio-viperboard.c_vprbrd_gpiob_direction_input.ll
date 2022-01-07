; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-viperboard.c_vprbrd_gpiob_direction_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-viperboard.c_vprbrd_gpiob_direction_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.vprbrd_gpio = type { i32, %struct.vprbrd* }
%struct.vprbrd = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"usb error setting pin to input\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @vprbrd_gpiob_direction_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vprbrd_gpiob_direction_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vprbrd_gpio*, align 8
  %7 = alloca %struct.vprbrd*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.vprbrd_gpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.vprbrd_gpio* %9, %struct.vprbrd_gpio** %6, align 8
  %10 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %6, align 8
  %11 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %10, i32 0, i32 1
  %12 = load %struct.vprbrd*, %struct.vprbrd** %11, align 8
  store %struct.vprbrd* %12, %struct.vprbrd** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = shl i32 1, %13
  %15 = xor i32 %14, -1
  %16 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %6, align 8
  %17 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.vprbrd*, %struct.vprbrd** %7, align 8
  %21 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.vprbrd*, %struct.vprbrd** %7, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @vprbrd_gpiob_setdir(%struct.vprbrd* %23, i32 %24, i32 0)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.vprbrd*, %struct.vprbrd** %7, align 8
  %27 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %33 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %31, %2
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.vprbrd_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vprbrd_gpiob_setdir(%struct.vprbrd*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
