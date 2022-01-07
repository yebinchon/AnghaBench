; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-exar.c_exar_get_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-exar.c_exar_get_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.exar_gpio_chip = type { i32 }

@EXAR_OFFSET_MPIOSEL_HI = common dso_local global i32 0, align 4
@EXAR_OFFSET_MPIOSEL_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @exar_get_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exar_get_direction(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.exar_gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.exar_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.exar_gpio_chip* %9, %struct.exar_gpio_chip** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.exar_gpio_chip*, %struct.exar_gpio_chip** %5, align 8
  %12 = getelementptr inbounds %struct.exar_gpio_chip, %struct.exar_gpio_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %10, %13
  %15 = udiv i32 %14, 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @EXAR_OFFSET_MPIOSEL_HI, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @EXAR_OFFSET_MPIOSEL_LO, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.exar_gpio_chip*, %struct.exar_gpio_chip** %5, align 8
  %25 = getelementptr inbounds %struct.exar_gpio_chip, %struct.exar_gpio_chip* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add i32 %23, %26
  %28 = urem i32 %27, 8
  store i32 %28, i32* %7, align 4
  %29 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @exar_get(%struct.gpio_chip* %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @BIT(i32 %32)
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  ret i32 %38
}

declare dso_local %struct.exar_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @exar_get(%struct.gpio_chip*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
