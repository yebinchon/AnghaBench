; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mmio.c_bgpio_dir_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mmio.c_bgpio_dir_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32, i32, i64, i32 (i64, i32)*, i64, {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @bgpio_dir_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgpio_dir_out(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %8, i32 0, i32 5
  %10 = bitcast {}** %9 to i32 (%struct.gpio_chip*, i32, i32)**
  %11 = load i32 (%struct.gpio_chip*, i32, i32)*, i32 (%struct.gpio_chip*, i32, i32)** %10, align 8
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 %11(%struct.gpio_chip* %12, i32 %13, i32 %14)
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %17 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %16, i32 0, i32 0
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @bgpio_line2mask(%struct.gpio_chip* %20, i32 %21)
  %23 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %24 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %28 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %3
  %32 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %33 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %32, i32 0, i32 3
  %34 = load i32 (i64, i32)*, i32 (i64, i32)** %33, align 8
  %35 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %36 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %39 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %40, -1
  %42 = call i32 %34(i64 %37, i32 %41)
  br label %43

43:                                               ; preds = %31, %3
  %44 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %45 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %50 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %49, i32 0, i32 3
  %51 = load i32 (i64, i32)*, i32 (i64, i32)** %50, align 8
  %52 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %53 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %56 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 %51(i64 %54, i32 %57)
  br label %59

59:                                               ; preds = %48, %43
  %60 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %61 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %60, i32 0, i32 0
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bgpio_line2mask(%struct.gpio_chip*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
