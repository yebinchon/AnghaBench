; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiochip_init_valid_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiochip_init_valid_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 (%struct.gpio_chip*, i32, i32)*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*)* @gpiochip_init_valid_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpiochip_init_valid_mask(%struct.gpio_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpio_chip*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  %4 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %5 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %4, i32 0, i32 0
  %6 = load i32 (%struct.gpio_chip*, i32, i32)*, i32 (%struct.gpio_chip*, i32, i32)** %5, align 8
  %7 = icmp ne i32 (%struct.gpio_chip*, i32, i32)* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %9, i32 0, i32 0
  %11 = load i32 (%struct.gpio_chip*, i32, i32)*, i32 (%struct.gpio_chip*, i32, i32)** %10, align 8
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %14 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %17 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %11(%struct.gpio_chip* %12, i32 %15, i32 %18)
  store i32 %19, i32* %2, align 4
  br label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %8
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
