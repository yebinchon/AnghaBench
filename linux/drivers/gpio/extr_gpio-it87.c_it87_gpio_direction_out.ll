; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-it87.c_it87_gpio_direction_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-it87.c_it87_gpio_direction_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.it87_gpio = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @it87_gpio_direction_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @it87_gpio_direction_out(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.it87_gpio*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.it87_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.it87_gpio* %12, %struct.it87_gpio** %10, align 8
  %13 = load i32, i32* %5, align 4
  %14 = urem i32 %13, 8
  %15 = shl i32 1, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = udiv i32 %16, 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.it87_gpio*, %struct.it87_gpio** %10, align 8
  %19 = getelementptr inbounds %struct.it87_gpio, %struct.it87_gpio* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = call i32 (...) @superio_enter()
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %39

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.it87_gpio*, %struct.it87_gpio** %10, align 8
  %30 = getelementptr inbounds %struct.it87_gpio, %struct.it87_gpio* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = call i32 @superio_set_mask(i32 %26, i64 %32)
  %34 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @it87_gpio_set(%struct.gpio_chip* %34, i32 %35, i32 %36)
  %38 = call i32 (...) @superio_exit()
  br label %39

39:                                               ; preds = %25, %24
  %40 = load %struct.it87_gpio*, %struct.it87_gpio** %10, align 8
  %41 = getelementptr inbounds %struct.it87_gpio, %struct.it87_gpio* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load i32, i32* %9, align 4
  ret i32 %43
}

declare dso_local %struct.it87_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @superio_enter(...) #1

declare dso_local i32 @superio_set_mask(i32, i64) #1

declare dso_local i32 @it87_gpio_set(%struct.gpio_chip*, i32, i32) #1

declare dso_local i32 @superio_exit(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
