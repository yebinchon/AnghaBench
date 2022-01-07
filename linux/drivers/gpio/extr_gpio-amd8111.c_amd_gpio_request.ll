; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-amd8111.c_amd_gpio_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-amd8111.c_amd_gpio_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.amd_gpio = type { i32*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@AMD_GPIO_DEBOUNCE = common dso_local global i32 0, align 4
@AMD_GPIO_MODE_MASK = common dso_local global i32 0, align 4
@AMD_GPIO_X_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Requested gpio %d, data %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @amd_gpio_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_gpio_request(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amd_gpio*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %7 = call %struct.amd_gpio* @gpiochip_get_data(%struct.gpio_chip* %6)
  store %struct.amd_gpio* %7, %struct.amd_gpio** %5, align 8
  %8 = load %struct.amd_gpio*, %struct.amd_gpio** %5, align 8
  %9 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @AMD_REG_GPIO(i32 %11)
  %13 = add nsw i64 %10, %12
  %14 = call i32 @ioread8(i64 %13)
  %15 = load i32, i32* @AMD_GPIO_DEBOUNCE, align 4
  %16 = load i32, i32* @AMD_GPIO_MODE_MASK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @AMD_GPIO_X_MASK, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %14, %19
  %21 = load %struct.amd_gpio*, %struct.amd_gpio** %5, align 8
  %22 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %20, i32* %26, align 4
  %27 = load %struct.amd_gpio*, %struct.amd_gpio** %5, align 8
  %28 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.amd_gpio*, %struct.amd_gpio** %5, align 8
  %33 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_dbg(i32* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %38)
  ret i32 0
}

declare dso_local %struct.amd_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @ioread8(i64) #1

declare dso_local i64 @AMD_REG_GPIO(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
