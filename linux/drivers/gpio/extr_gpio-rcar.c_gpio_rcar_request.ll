; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rcar.c_gpio_rcar_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rcar.c_gpio_rcar_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.gpio_rcar_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @gpio_rcar_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_rcar_request(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_rcar_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = call %struct.gpio_rcar_priv* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.gpio_rcar_priv* %9, %struct.gpio_rcar_priv** %6, align 8
  %10 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %6, align 8
  %11 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pm_runtime_get_sync(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add i32 %21, %22
  %24 = call i32 @pinctrl_gpio_request(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %6, align 8
  %29 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pm_runtime_put(i32 %30)
  br label %32

32:                                               ; preds = %27, %18
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %16
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.gpio_rcar_priv* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pinctrl_gpio_request(i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
