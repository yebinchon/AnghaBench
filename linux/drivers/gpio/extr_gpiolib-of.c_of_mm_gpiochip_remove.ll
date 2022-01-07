; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_of_mm_gpiochip_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_of_mm_gpiochip_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_mm_gpio_chip = type { i32, %struct.gpio_chip }
%struct.gpio_chip = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @of_mm_gpiochip_remove(%struct.of_mm_gpio_chip* %0) #0 {
  %2 = alloca %struct.of_mm_gpio_chip*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  store %struct.of_mm_gpio_chip* %0, %struct.of_mm_gpio_chip** %2, align 8
  %4 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %2, align 8
  %5 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %4, i32 0, i32 1
  store %struct.gpio_chip* %5, %struct.gpio_chip** %3, align 8
  %6 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %2, align 8
  %7 = icmp ne %struct.of_mm_gpio_chip* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %20

9:                                                ; preds = %1
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %11 = call i32 @gpiochip_remove(%struct.gpio_chip* %10)
  %12 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %2, align 8
  %13 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @iounmap(i32 %14)
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %17 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kfree(i32 %18)
  br label %20

20:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @gpiochip_remove(%struct.gpio_chip*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
