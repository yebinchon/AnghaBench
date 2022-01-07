; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pcf857x.c_pcf857x_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pcf857x.c_pcf857x_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.pcf857x = type { i32, i32 (i32, i32)*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @pcf857x_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf857x_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcf857x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.pcf857x* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.pcf857x* %11, %struct.pcf857x** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = shl i32 1, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.pcf857x*, %struct.pcf857x** %7, align 8
  %15 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %14, i32 0, i32 2
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.pcf857x*, %struct.pcf857x** %7, align 8
  %22 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  br label %32

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.pcf857x*, %struct.pcf857x** %7, align 8
  %29 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %25, %19
  %33 = load %struct.pcf857x*, %struct.pcf857x** %7, align 8
  %34 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %33, i32 0, i32 1
  %35 = load i32 (i32, i32)*, i32 (i32, i32)** %34, align 8
  %36 = load %struct.pcf857x*, %struct.pcf857x** %7, align 8
  %37 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pcf857x*, %struct.pcf857x** %7, align 8
  %40 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %35(i32 %38, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.pcf857x*, %struct.pcf857x** %7, align 8
  %44 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %43, i32 0, i32 2
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %9, align 4
  ret i32 %46
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
