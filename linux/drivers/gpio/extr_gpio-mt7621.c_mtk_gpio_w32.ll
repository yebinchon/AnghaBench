; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mt7621.c_mtk_gpio_w32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mt7621.c_mtk_gpio_w32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_gc = type { i32, %struct.gpio_chip }
%struct.gpio_chip = type { i32 (i64, i64)* }
%struct.mtk = type { i64 }

@GPIO_BANK_STRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_gc*, i64, i64)* @mtk_gpio_w32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_gpio_w32(%struct.mtk_gc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mtk_gc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gpio_chip*, align 8
  %8 = alloca %struct.mtk*, align 8
  store %struct.mtk_gc* %0, %struct.mtk_gc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.mtk_gc*, %struct.mtk_gc** %4, align 8
  %10 = getelementptr inbounds %struct.mtk_gc, %struct.mtk_gc* %9, i32 0, i32 1
  store %struct.gpio_chip* %10, %struct.gpio_chip** %7, align 8
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %12 = call %struct.mtk* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.mtk* %12, %struct.mtk** %8, align 8
  %13 = load %struct.mtk_gc*, %struct.mtk_gc** %4, align 8
  %14 = getelementptr inbounds %struct.mtk_gc, %struct.mtk_gc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @GPIO_BANK_STRIDE, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %5, align 8
  %20 = add nsw i64 %18, %19
  store i64 %20, i64* %5, align 8
  %21 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %22 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %21, i32 0, i32 0
  %23 = load i32 (i64, i64)*, i32 (i64, i64)** %22, align 8
  %24 = load %struct.mtk*, %struct.mtk** %8, align 8
  %25 = getelementptr inbounds %struct.mtk, %struct.mtk* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i64, i64* %6, align 8
  %30 = call i32 %23(i64 %28, i64 %29)
  ret void
}

declare dso_local %struct.mtk* @gpiochip_get_data(%struct.gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
