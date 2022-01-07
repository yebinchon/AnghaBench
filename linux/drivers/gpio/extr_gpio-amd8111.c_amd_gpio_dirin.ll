; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-amd8111.c_amd_gpio_dirin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-amd8111.c_amd_gpio_dirin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.amd_gpio = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@AMD_GPIO_DEBOUNCE = common dso_local global i32 0, align 4
@AMD_GPIO_MODE_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Dirin gpio %d, reg=%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @amd_gpio_dirin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_gpio_dirin(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amd_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.amd_gpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.amd_gpio* %9, %struct.amd_gpio** %5, align 8
  %10 = load %struct.amd_gpio*, %struct.amd_gpio** %5, align 8
  %11 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %10, i32 0, i32 1
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.amd_gpio*, %struct.amd_gpio** %5, align 8
  %15 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @AMD_REG_GPIO(i32 %17)
  %19 = add nsw i64 %16, %18
  %20 = call i32 @ioread8(i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @AMD_GPIO_DEBOUNCE, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @AMD_GPIO_MODE_IN, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.amd_gpio*, %struct.amd_gpio** %5, align 8
  %28 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @AMD_REG_GPIO(i32 %30)
  %32 = add nsw i64 %29, %31
  %33 = call i32 @iowrite8(i32 %26, i64 %32)
  %34 = load %struct.amd_gpio*, %struct.amd_gpio** %5, align 8
  %35 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %34, i32 0, i32 1
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load %struct.amd_gpio*, %struct.amd_gpio** %5, align 8
  %39 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @dev_dbg(i32* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  ret i32 0
}

declare dso_local %struct.amd_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ioread8(i64) #1

declare dso_local i64 @AMD_REG_GPIO(i32) #1

declare dso_local i32 @iowrite8(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
