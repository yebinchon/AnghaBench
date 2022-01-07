; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-cs5535.c_chip_gpio_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-cs5535.c_chip_gpio_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.cs5535_gpio_chip = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"pin %u is not available (check mask)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GPIO_OUTPUT_AUX1 = common dso_local global i32 0, align 4
@GPIO_OUTPUT_AUX2 = common dso_local global i32 0, align 4
@GPIO_INPUT_AUX1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @chip_gpio_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chip_gpio_request(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cs5535_gpio_chip*, align 8
  %7 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = call %struct.cs5535_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.cs5535_gpio_chip* %9, %struct.cs5535_gpio_chip** %6, align 8
  %10 = load %struct.cs5535_gpio_chip*, %struct.cs5535_gpio_chip** %6, align 8
  %11 = getelementptr inbounds %struct.cs5535_gpio_chip, %struct.cs5535_gpio_chip* %10, i32 0, i32 0
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load i32, i32* @mask, align 4
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load %struct.cs5535_gpio_chip*, %struct.cs5535_gpio_chip** %6, align 8
  %21 = getelementptr inbounds %struct.cs5535_gpio_chip, %struct.cs5535_gpio_chip* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @dev_info(i32* %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.cs5535_gpio_chip*, %struct.cs5535_gpio_chip** %6, align 8
  %27 = getelementptr inbounds %struct.cs5535_gpio_chip, %struct.cs5535_gpio_chip* %26, i32 0, i32 0
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %49

32:                                               ; preds = %2
  %33 = load %struct.cs5535_gpio_chip*, %struct.cs5535_gpio_chip** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @GPIO_OUTPUT_AUX1, align 4
  %36 = call i32 @__cs5535_gpio_clear(%struct.cs5535_gpio_chip* %33, i32 %34, i32 %35)
  %37 = load %struct.cs5535_gpio_chip*, %struct.cs5535_gpio_chip** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @GPIO_OUTPUT_AUX2, align 4
  %40 = call i32 @__cs5535_gpio_clear(%struct.cs5535_gpio_chip* %37, i32 %38, i32 %39)
  %41 = load %struct.cs5535_gpio_chip*, %struct.cs5535_gpio_chip** %6, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @GPIO_INPUT_AUX1, align 4
  %44 = call i32 @__cs5535_gpio_clear(%struct.cs5535_gpio_chip* %41, i32 %42, i32 %43)
  %45 = load %struct.cs5535_gpio_chip*, %struct.cs5535_gpio_chip** %6, align 8
  %46 = getelementptr inbounds %struct.cs5535_gpio_chip, %struct.cs5535_gpio_chip* %45, i32 0, i32 0
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %32, %19
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.cs5535_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__cs5535_gpio_clear(%struct.cs5535_gpio_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
