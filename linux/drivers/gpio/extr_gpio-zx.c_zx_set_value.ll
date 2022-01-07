; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zx.c_zx_set_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zx.c_zx_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.zx_gpio = type { i64 }

@ZX_GPIO_DO1 = common dso_local global i64 0, align 8
@ZX_GPIO_DO0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @zx_set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx_set_value(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.zx_gpio*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = call %struct.zx_gpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.zx_gpio* %9, %struct.zx_gpio** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @BIT(i32 %13)
  %15 = load %struct.zx_gpio*, %struct.zx_gpio** %7, align 8
  %16 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ZX_GPIO_DO1, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writew_relaxed(i32 %14, i64 %19)
  br label %30

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = load %struct.zx_gpio*, %struct.zx_gpio** %7, align 8
  %25 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ZX_GPIO_DO0, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writew_relaxed(i32 %23, i64 %28)
  br label %30

30:                                               ; preds = %21, %12
  ret void
}

declare dso_local %struct.zx_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @writew_relaxed(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
