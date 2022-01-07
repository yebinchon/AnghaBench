; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-spear-spics.c_spics_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-spear-spics.c_spics_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.spear_spics = type { i32, i32, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @spics_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spics_request(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.spear_spics*, align 8
  %6 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %8 = call %struct.spear_spics* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.spear_spics* %8, %struct.spear_spics** %5, align 8
  %9 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %10 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 8
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %2
  %15 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %16 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %19 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = call i32 @readl_relaxed(i64 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %24 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 1, %25
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %30 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 1, %31
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %37 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %40 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = call i32 @writel_relaxed(i32 %35, i64 %42)
  br label %44

44:                                               ; preds = %14, %2
  ret i32 0
}

declare dso_local %struct.spear_spics* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
