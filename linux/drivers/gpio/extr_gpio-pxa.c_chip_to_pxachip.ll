; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pxa.c_chip_to_pxachip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pxa.c_chip_to_pxachip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_gpio_chip = type { i32 }
%struct.gpio_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pxa_gpio_chip* (%struct.gpio_chip*)* @chip_to_pxachip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pxa_gpio_chip* @chip_to_pxachip(%struct.gpio_chip* %0) #0 {
  %2 = alloca %struct.gpio_chip*, align 8
  %3 = alloca %struct.pxa_gpio_chip*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %2, align 8
  %4 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %5 = call %struct.pxa_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %4)
  store %struct.pxa_gpio_chip* %5, %struct.pxa_gpio_chip** %3, align 8
  %6 = load %struct.pxa_gpio_chip*, %struct.pxa_gpio_chip** %3, align 8
  ret %struct.pxa_gpio_chip* %6
}

declare dso_local %struct.pxa_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
