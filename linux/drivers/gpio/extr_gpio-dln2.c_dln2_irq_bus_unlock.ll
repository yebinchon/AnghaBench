; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dln2.c_dln2_irq_bus_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dln2.c_dln2_irq_bus_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.dln2_gpio = type { i32*, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@DLN2_GPIO_EVENT_MASK = common dso_local global i32 0, align 4
@DLN2_GPIO_EVENT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to set event\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @dln2_irq_bus_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dln2_irq_bus_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.dln2_gpio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %11 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %10)
  store %struct.gpio_chip* %11, %struct.gpio_chip** %3, align 8
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %13 = call %struct.dln2_gpio* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.dln2_gpio* %13, %struct.dln2_gpio** %4, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %15 = call i32 @irqd_to_hwirq(%struct.irq_data* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %18 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @test_bit(i32 %16, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %23 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @test_bit(i32 %21, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %68

29:                                               ; preds = %1
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %34 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DLN2_GPIO_EVENT_MASK, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %44 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @set_bit(i32 %42, i32 %45)
  br label %54

47:                                               ; preds = %29
  %48 = load i32, i32* @DLN2_GPIO_EVENT_NONE, align 4
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %51 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @clear_bit(i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %47, %32
  %55 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @dln2_gpio_set_event_cfg(%struct.dln2_gpio* %55, i32 %56, i32 %57, i32 0)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %63 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %61, %54
  br label %68

68:                                               ; preds = %67, %1
  %69 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %70 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.dln2_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @dln2_gpio_set_event_cfg(%struct.dln2_gpio*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
