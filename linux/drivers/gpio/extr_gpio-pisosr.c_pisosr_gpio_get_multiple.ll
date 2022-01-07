; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pisosr.c_pisosr_gpio_get_multiple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pisosr.c_pisosr_gpio_get_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.pisosr_gpio = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i64*, i64*)* @pisosr_gpio_get_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pisosr_gpio_get_multiple(%struct.gpio_chip* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.pisosr_gpio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.pisosr_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.pisosr_gpio* %12, %struct.pisosr_gpio** %7, align 8
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %14 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @DIV_ROUND_UP(i32 %15, i32 8)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %7, align 8
  %18 = call i32 @pisosr_gpio_refresh(%struct.pisosr_gpio* %17)
  %19 = load i64*, i64** %6, align 8
  %20 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %21 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bitmap_zero(i64* %19, i32 %22)
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %51, %3
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = udiv i64 %30, 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %10, align 4
  %33 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %7, align 8
  %34 = getelementptr inbounds %struct.pisosr_gpio, %struct.pisosr_gpio* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = urem i64 %41, 8
  %43 = mul i64 8, %42
  %44 = shl i64 %39, %43
  %45 = load i64*, i64** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = or i64 %49, %44
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %28
  %52 = load i32, i32* %9, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %24

54:                                               ; preds = %24
  ret i32 0
}

declare dso_local %struct.pisosr_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @pisosr_gpio_refresh(%struct.pisosr_gpio*) #1

declare dso_local i32 @bitmap_zero(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
