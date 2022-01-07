; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-vf610.c_vf610_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-vf610.c_vf610_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.vf610_gpio_port = type { i64 }

@GPIO_PSOR = common dso_local global i64 0, align 8
@GPIO_PCOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @vf610_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vf610_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vf610_gpio_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.vf610_gpio_port* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.vf610_gpio_port* %11, %struct.vf610_gpio_port** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @BIT(i32 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @GPIO_PSOR, align 8
  br label %20

18:                                               ; preds = %3
  %19 = load i64, i64* @GPIO_PCOR, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i64 [ %17, %16 ], [ %19, %18 ]
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.vf610_gpio_port*, %struct.vf610_gpio_port** %7, align 8
  %24 = getelementptr inbounds %struct.vf610_gpio_port, %struct.vf610_gpio_port* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = add i64 %25, %26
  %28 = call i32 @vf610_gpio_writel(i64 %22, i64 %27)
  ret void
}

declare dso_local %struct.vf610_gpio_port* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @vf610_gpio_writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
