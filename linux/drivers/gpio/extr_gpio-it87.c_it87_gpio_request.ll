; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-it87.c_it87_gpio_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-it87.c_it87_gpio_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.it87_gpio = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @it87_gpio_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @it87_gpio_request(%struct.gpio_chip* %0, i32 %1) #0 {
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
  %17 = getelementptr inbounds %struct.it87_gpio, %struct.it87_gpio* %16, i32 0, i32 1
  %18 = call i32 @spin_lock(i32* %17)
  %19 = call i32 (...) @superio_enter()
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %48

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.it87_gpio*, %struct.it87_gpio** %8, align 8
  %26 = getelementptr inbounds %struct.it87_gpio, %struct.it87_gpio* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct.it87_gpio*, %struct.it87_gpio** %8, align 8
  %34 = getelementptr inbounds %struct.it87_gpio, %struct.it87_gpio* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = call i32 @superio_set_mask(i32 %30, i64 %36)
  br label %38

38:                                               ; preds = %29, %23
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = load %struct.it87_gpio*, %struct.it87_gpio** %8, align 8
  %43 = getelementptr inbounds %struct.it87_gpio, %struct.it87_gpio* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = call i32 @superio_clear_mask(i32 %39, i64 %45)
  %47 = call i32 (...) @superio_exit()
  br label %48

48:                                               ; preds = %38, %22
  %49 = load %struct.it87_gpio*, %struct.it87_gpio** %8, align 8
  %50 = getelementptr inbounds %struct.it87_gpio, %struct.it87_gpio* %49, i32 0, i32 1
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local %struct.it87_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @superio_enter(...) #1

declare dso_local i32 @superio_set_mask(i32, i64) #1

declare dso_local i32 @superio_clear_mask(i32, i64) #1

declare dso_local i32 @superio_exit(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
