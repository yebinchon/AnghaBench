; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-cadence.c_cdns_gpio_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-cadence.c_cdns_gpio_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.cdns_gpio_chip = type { i64 }

@CDNS_GPIO_IRQ_VALUE = common dso_local global i64 0, align 8
@CDNS_GPIO_IRQ_TYPE = common dso_local global i64 0, align 8
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @cdns_gpio_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_gpio_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca %struct.cdns_gpio_chip*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %13 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %12)
  store %struct.gpio_chip* %13, %struct.gpio_chip** %5, align 8
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %15 = call %struct.cdns_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %14)
  store %struct.cdns_gpio_chip* %15, %struct.cdns_gpio_chip** %6, align 8
  %16 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %17 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BIT(i32 %18)
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %21 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %20, i32 0, i32 0
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %6, align 8
  %25 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CDNS_GPIO_IRQ_VALUE, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @ioread32(i64 %28)
  %30 = load i32, i32* %10, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %6, align 8
  %34 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CDNS_GPIO_IRQ_TYPE, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @ioread32(i64 %37)
  %39 = load i32, i32* %10, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %2
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %64

52:                                               ; preds = %2
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %11, align 4
  br label %79

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %45
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %6, align 8
  %67 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CDNS_GPIO_IRQ_VALUE, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @iowrite32(i32 %65, i64 %70)
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.cdns_gpio_chip*, %struct.cdns_gpio_chip** %6, align 8
  %74 = getelementptr inbounds %struct.cdns_gpio_chip, %struct.cdns_gpio_chip* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CDNS_GPIO_IRQ_TYPE, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @iowrite32(i32 %72, i64 %77)
  br label %79

79:                                               ; preds = %64, %60
  %80 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %81 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %80, i32 0, i32 0
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load i32, i32* %11, align 4
  ret i32 %84
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.cdns_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
