; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-74xx-mmio.c_mmio_74xx_dir_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-74xx-mmio.c_mmio_74xx_dir_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { {}* }
%struct.mmio_74xx_gpio_priv = type { i32 }

@MMIO_74XX_DIR_OUT = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @mmio_74xx_dir_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmio_74xx_dir_out(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmio_74xx_gpio_priv*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %10 = call %struct.mmio_74xx_gpio_priv* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.mmio_74xx_gpio_priv* %10, %struct.mmio_74xx_gpio_priv** %8, align 8
  %11 = load %struct.mmio_74xx_gpio_priv*, %struct.mmio_74xx_gpio_priv** %8, align 8
  %12 = getelementptr inbounds %struct.mmio_74xx_gpio_priv, %struct.mmio_74xx_gpio_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MMIO_74XX_DIR_OUT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %19 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.gpio_chip*, i32, i32)**
  %21 = load i32 (%struct.gpio_chip*, i32, i32)*, i32 (%struct.gpio_chip*, i32, i32)** %20, align 8
  %22 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 %21(%struct.gpio_chip* %22, i32 %23, i32 %24)
  store i32 0, i32* %4, align 4
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %17
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.mmio_74xx_gpio_priv* @gpiochip_get_data(%struct.gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
