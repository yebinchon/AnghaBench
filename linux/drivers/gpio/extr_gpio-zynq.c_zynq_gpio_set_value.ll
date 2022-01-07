; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zynq.c_zynq_gpio_set_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zynq.c_zynq_gpio_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.zynq_gpio = type { i64 }

@ZYNQ_GPIO_MID_PIN_NUM = common dso_local global i32 0, align 4
@ZYNQ_GPIO_UPPER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @zynq_gpio_set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynq_gpio_set_value(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
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
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @ZYNQ_GPIO_MID_PIN_NUM, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i32, i32* @ZYNQ_GPIO_MID_PIN_NUM, align 4
  %21 = load i32, i32* %9, align 4
  %22 = sub i32 %21, %20
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @ZYNQ_GPIO_DATA_MSW_OFFSET(i32 %23)
  store i32 %24, i32* %7, align 4
  br label %28

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @ZYNQ_GPIO_DATA_LSW_OFFSET(i32 %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %25, %19
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @ZYNQ_GPIO_MID_PIN_NUM, align 4
  %36 = add i32 %34, %35
  %37 = shl i32 1, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %9, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* @ZYNQ_GPIO_UPPER_MASK, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %38, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.zynq_gpio*, %struct.zynq_gpio** %10, align 8
  %47 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = call i32 @writel_relaxed(i32 %45, i64 %51)
  ret void
}

declare dso_local %struct.zynq_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @zynq_gpio_get_bank_pin(i32, i32*, i32*, %struct.zynq_gpio*) #1

declare dso_local i32 @ZYNQ_GPIO_DATA_MSW_OFFSET(i32) #1

declare dso_local i32 @ZYNQ_GPIO_DATA_LSW_OFFSET(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
