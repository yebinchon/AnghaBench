; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mmio.c_bgpio_get_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mmio.c_bgpio_get_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32, i32 (i64)*, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @bgpio_get_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgpio_get_dir(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %7 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @bgpio_line2mask(%struct.gpio_chip* %14, i32 %15)
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %63

21:                                               ; preds = %2
  %22 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %23 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %28 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %27, i32 0, i32 1
  %29 = load i32 (i64)*, i32 (i64)** %28, align 8
  %30 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %31 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i32 %29(i64 %32)
  %34 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @bgpio_line2mask(%struct.gpio_chip* %34, i32 %35)
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %63

41:                                               ; preds = %21
  %42 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %43 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %48 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %47, i32 0, i32 1
  %49 = load i32 (i64)*, i32 (i64)** %48, align 8
  %50 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %51 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 %49(i64 %52)
  %54 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @bgpio_line2mask(%struct.gpio_chip* %54, i32 %55)
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %46, %26, %10
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @bgpio_line2mask(%struct.gpio_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
