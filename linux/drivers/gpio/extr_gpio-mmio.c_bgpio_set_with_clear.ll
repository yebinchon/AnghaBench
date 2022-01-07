; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mmio.c_bgpio_set_with_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mmio.c_bgpio_set_with_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32, i32 (i32, i64)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @bgpio_set_with_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgpio_set_with_clear(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @bgpio_line2mask(%struct.gpio_chip* %8, i32 %9)
  store i64 %10, i64* %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %15 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %14, i32 0, i32 1
  %16 = load i32 (i32, i64)*, i32 (i32, i64)** %15, align 8
  %17 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %18 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 %16(i32 %19, i64 %20)
  br label %31

22:                                               ; preds = %3
  %23 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %24 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %23, i32 0, i32 1
  %25 = load i32 (i32, i64)*, i32 (i32, i64)** %24, align 8
  %26 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %27 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 %25(i32 %28, i64 %29)
  br label %31

31:                                               ; preds = %22, %13
  ret void
}

declare dso_local i64 @bgpio_line2mask(%struct.gpio_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
