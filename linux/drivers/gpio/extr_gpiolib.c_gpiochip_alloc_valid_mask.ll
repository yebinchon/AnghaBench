; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiochip_alloc_valid_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiochip_alloc_valid_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*)* @gpiochip_alloc_valid_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpiochip_alloc_valid_mask(%struct.gpio_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpio_chip*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  %4 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %5 = call i64 @of_gpio_need_valid_mask(%struct.gpio_chip* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %26

13:                                               ; preds = %7, %1
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %15 = call i32 @gpiochip_allocate_mask(%struct.gpio_chip* %14)
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %17 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %19 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %22, %12
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @of_gpio_need_valid_mask(%struct.gpio_chip*) #1

declare dso_local i32 @gpiochip_allocate_mask(%struct.gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
