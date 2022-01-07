; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-spear-spics.c_spics_set_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-spear-spics.c_spics_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.spear_spics = type { i32, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @spics_set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spics_set_value(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spear_spics*, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.spear_spics* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.spear_spics* %10, %struct.spear_spics** %7, align 8
  %11 = load %struct.spear_spics*, %struct.spear_spics** %7, align 8
  %12 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.spear_spics*, %struct.spear_spics** %7, align 8
  %15 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = call i32 @readl_relaxed(i64 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.spear_spics*, %struct.spear_spics** %7, align 8
  %20 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.spear_spics*, %struct.spear_spics** %7, align 8
  %27 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.spear_spics*, %struct.spear_spics** %7, align 8
  %29 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.spear_spics*, %struct.spear_spics** %7, align 8
  %32 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 %30, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.spear_spics*, %struct.spear_spics** %7, align 8
  %40 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = shl i32 %38, %41
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %24, %3
  %46 = load %struct.spear_spics*, %struct.spear_spics** %7, align 8
  %47 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 1, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.spear_spics*, %struct.spear_spics** %7, align 8
  %55 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %53, %56
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.spear_spics*, %struct.spear_spics** %7, align 8
  %62 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.spear_spics*, %struct.spear_spics** %7, align 8
  %65 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = call i32 @writel_relaxed(i32 %60, i64 %67)
  ret void
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
