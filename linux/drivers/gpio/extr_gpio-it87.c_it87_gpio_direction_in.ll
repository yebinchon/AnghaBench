; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-it87.c_it87_gpio_direction_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-it87.c_it87_gpio_direction_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.it87_gpio = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @it87_gpio_direction_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @it87_gpio_direction_in(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.it87_gpio*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = call %struct.it87_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.it87_gpio* %10, %struct.it87_gpio** %8, align 8
  %11 = load i32, i32* %4, align 4
  %12 = urem i32 %11, 8
  %13 = shl i32 1, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = udiv i32 %14, 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.it87_gpio*, %struct.it87_gpio** %8, align 8
  %17 = getelementptr inbounds %struct.it87_gpio, %struct.it87_gpio* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = call i32 (...) @superio_enter()
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %33

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = load %struct.it87_gpio*, %struct.it87_gpio** %8, align 8
  %28 = getelementptr inbounds %struct.it87_gpio, %struct.it87_gpio* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = call i32 @superio_clear_mask(i32 %24, i64 %30)
  %32 = call i32 (...) @superio_exit()
  br label %33

33:                                               ; preds = %23, %22
  %34 = load %struct.it87_gpio*, %struct.it87_gpio** %8, align 8
  %35 = getelementptr inbounds %struct.it87_gpio, %struct.it87_gpio* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local %struct.it87_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @superio_enter(...) #1

declare dso_local i32 @superio_clear_mask(i32, i64) #1

declare dso_local i32 @superio_exit(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
