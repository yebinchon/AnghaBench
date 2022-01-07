; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zynq.c_zynq_gpio_dir_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zynq.c_zynq_gpio_dir_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.zynq_gpio = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @zynq_gpio_dir_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynq_gpio_dir_out(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.zynq_gpio*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.zynq_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.zynq_gpio* %12, %struct.zynq_gpio** %10, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.zynq_gpio*, %struct.zynq_gpio** %10, align 8
  %15 = call i32 @zynq_gpio_get_bank_pin(i32 %13, i32* %8, i32* %9, %struct.zynq_gpio* %14)
  %16 = load %struct.zynq_gpio*, %struct.zynq_gpio** %10, align 8
  %17 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @ZYNQ_GPIO_DIRM_OFFSET(i32 %19)
  %21 = add nsw i64 %18, %20
  %22 = call i32 @readl_relaxed(i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @BIT(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.zynq_gpio*, %struct.zynq_gpio** %10, align 8
  %29 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @ZYNQ_GPIO_DIRM_OFFSET(i32 %31)
  %33 = add nsw i64 %30, %32
  %34 = call i32 @writel_relaxed(i32 %27, i64 %33)
  %35 = load %struct.zynq_gpio*, %struct.zynq_gpio** %10, align 8
  %36 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @ZYNQ_GPIO_OUTEN_OFFSET(i32 %38)
  %40 = add nsw i64 %37, %39
  %41 = call i32 @readl_relaxed(i64 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @BIT(i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.zynq_gpio*, %struct.zynq_gpio** %10, align 8
  %48 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @ZYNQ_GPIO_OUTEN_OFFSET(i32 %50)
  %52 = add nsw i64 %49, %51
  %53 = call i32 @writel_relaxed(i32 %46, i64 %52)
  %54 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @zynq_gpio_set_value(%struct.gpio_chip* %54, i32 %55, i32 %56)
  ret i32 0
}

declare dso_local %struct.zynq_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @zynq_gpio_get_bank_pin(i32, i32*, i32*, %struct.zynq_gpio*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @ZYNQ_GPIO_DIRM_OFFSET(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @ZYNQ_GPIO_OUTEN_OFFSET(i32) #1

declare dso_local i32 @zynq_gpio_set_value(%struct.gpio_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
