; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pcf857x.c_pcf857x_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pcf857x.c_pcf857x_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.pcf857x = type { i32, i32 (i32, i32)*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @pcf857x_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf857x_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcf857x*, align 8
  %6 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %8 = call %struct.pcf857x* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.pcf857x* %8, %struct.pcf857x** %5, align 8
  %9 = load %struct.pcf857x*, %struct.pcf857x** %5, align 8
  %10 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = shl i32 1, %12
  %14 = load %struct.pcf857x*, %struct.pcf857x** %5, align 8
  %15 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.pcf857x*, %struct.pcf857x** %5, align 8
  %19 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %18, i32 0, i32 1
  %20 = load i32 (i32, i32)*, i32 (i32, i32)** %19, align 8
  %21 = load %struct.pcf857x*, %struct.pcf857x** %5, align 8
  %22 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pcf857x*, %struct.pcf857x** %5, align 8
  %25 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %20(i32 %23, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.pcf857x*, %struct.pcf857x** %5, align 8
  %29 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %28, i32 0, i32 2
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local %struct.pcf857x* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
