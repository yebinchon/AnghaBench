; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-sysfs.c_gpio_sysfs_set_active_low.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-sysfs.c_gpio_sysfs_set_active_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gpiod_data = type { i32, %struct.gpio_desc* }
%struct.gpio_desc = type { i32 }

@FLAG_ACTIVE_LOW = common dso_local global i32 0, align 4
@GPIO_IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@GPIO_IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @gpio_sysfs_set_active_low to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_sysfs_set_active_low(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpiod_data*, align 8
  %7 = alloca %struct.gpio_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.gpiod_data* @dev_get_drvdata(%struct.device* %10)
  store %struct.gpiod_data* %11, %struct.gpiod_data** %6, align 8
  %12 = load %struct.gpiod_data*, %struct.gpiod_data** %6, align 8
  %13 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %12, i32 0, i32 1
  %14 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  store %struct.gpio_desc* %14, %struct.gpio_desc** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.gpiod_data*, %struct.gpiod_data** %6, align 8
  %16 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @FLAG_ACTIVE_LOW, align 4
  %19 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %20 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %19, i32 0, i32 0
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = icmp eq i32 %25, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

33:                                               ; preds = %2
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* @FLAG_ACTIVE_LOW, align 4
  %38 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %39 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %38, i32 0, i32 0
  %40 = call i32 @set_bit(i32 %37, i32* %39)
  br label %46

41:                                               ; preds = %33
  %42 = load i32, i32* @FLAG_ACTIVE_LOW, align 4
  %43 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %44 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %43, i32 0, i32 0
  %45 = call i32 @clear_bit(i32 %42, i32* %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @GPIO_IRQF_TRIGGER_FALLING, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @GPIO_IRQF_TRIGGER_RISING, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50, %46
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = call i32 @gpio_sysfs_free_irq(%struct.device* %55)
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @gpio_sysfs_request_irq(%struct.device* %57, i32 %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %54, %50
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %32
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.gpiod_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @gpio_sysfs_free_irq(%struct.device*) #1

declare dso_local i32 @gpio_sysfs_request_irq(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
