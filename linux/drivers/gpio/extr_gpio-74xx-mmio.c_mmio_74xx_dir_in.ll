; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-74xx-mmio.c_mmio_74xx_dir_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-74xx-mmio.c_mmio_74xx_dir_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.mmio_74xx_gpio_priv = type { i32 }

@MMIO_74XX_DIR_OUT = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @mmio_74xx_dir_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmio_74xx_dir_in(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmio_74xx_gpio_priv*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %7 = call %struct.mmio_74xx_gpio_priv* @gpiochip_get_data(%struct.gpio_chip* %6)
  store %struct.mmio_74xx_gpio_priv* %7, %struct.mmio_74xx_gpio_priv** %5, align 8
  %8 = load %struct.mmio_74xx_gpio_priv*, %struct.mmio_74xx_gpio_priv** %5, align 8
  %9 = getelementptr inbounds %struct.mmio_74xx_gpio_priv, %struct.mmio_74xx_gpio_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MMIO_74XX_DIR_OUT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %14
  %19 = phi i32 [ %16, %14 ], [ 0, %17 ]
  ret i32 %19
}

declare dso_local %struct.mmio_74xx_gpio_priv* @gpiochip_get_data(%struct.gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
