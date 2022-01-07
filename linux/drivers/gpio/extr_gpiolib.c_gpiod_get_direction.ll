; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_get_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_get_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.gpio_chip = type { i32 (%struct.gpio_chip*, i32)* }

@ENOTSUPP = common dso_local global i32 0, align 4
@FLAG_IS_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpiod_get_direction(%struct.gpio_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpio_desc*, align 8
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gpio_desc* %0, %struct.gpio_desc** %3, align 8
  %7 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %8 = call %struct.gpio_chip* @gpiod_to_chip(%struct.gpio_desc* %7)
  store %struct.gpio_chip* %8, %struct.gpio_chip** %4, align 8
  %9 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %10 = call i32 @gpio_chip_hwgpio(%struct.gpio_desc* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %11, i32 0, i32 0
  %13 = load i32 (%struct.gpio_chip*, i32)*, i32 (%struct.gpio_chip*, i32)** %12, align 8
  %14 = icmp ne i32 (%struct.gpio_chip*, i32)* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %42

18:                                               ; preds = %1
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 0
  %21 = load i32 (%struct.gpio_chip*, i32)*, i32 (%struct.gpio_chip*, i32)** %20, align 8
  %22 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 %21(%struct.gpio_chip* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  store i32 1, i32* %6, align 4
  %28 = load i32, i32* @FLAG_IS_OUT, align 4
  %29 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %30 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %29, i32 0, i32 0
  %31 = call i32 @clear_bit(i32 %28, i32* %30)
  br label %32

32:                                               ; preds = %27, %18
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* @FLAG_IS_OUT, align 4
  %37 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %38 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %37, i32 0, i32 0
  %39 = call i32 @set_bit(i32 %36, i32* %38)
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %15
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.gpio_chip* @gpiod_to_chip(%struct.gpio_desc*) #1

declare dso_local i32 @gpio_chip_hwgpio(%struct.gpio_desc*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
