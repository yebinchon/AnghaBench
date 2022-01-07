; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rc5t583.c_rc5t583_gpio_to_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rc5t583.c_rc5t583_gpio_to_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.rc5t583_gpio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RC5T583_MAX_GPIO = common dso_local global i32 0, align 4
@RC5T583_IRQ_GPIO0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @rc5t583_gpio_to_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc5t583_gpio_to_irq(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rc5t583_gpio*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %8 = call %struct.rc5t583_gpio* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.rc5t583_gpio* %8, %struct.rc5t583_gpio** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @RC5T583_MAX_GPIO, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.rc5t583_gpio*, %struct.rc5t583_gpio** %6, align 8
  %14 = getelementptr inbounds %struct.rc5t583_gpio, %struct.rc5t583_gpio* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RC5T583_IRQ_GPIO0, align 4
  %19 = add nsw i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = add i32 %19, %20
  store i32 %21, i32* %3, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %12
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.rc5t583_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
