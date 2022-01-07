; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lynxpoint.c_lp_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lynxpoint.c_lp_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.lp_gpio = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@LP_CONFIG1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@TRIG_SEL_BIT = common dso_local global i64 0, align 8
@INT_INV_BIT = common dso_local global i64 0, align 8
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @lp_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp_irq_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca %struct.lp_gpio*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %13 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %12)
  store %struct.gpio_chip* %13, %struct.gpio_chip** %6, align 8
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %15 = call %struct.lp_gpio* @gpiochip_get_data(%struct.gpio_chip* %14)
  store %struct.lp_gpio* %15, %struct.lp_gpio** %7, align 8
  %16 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %17 = call i64 @irqd_to_hwirq(%struct.irq_data* %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.lp_gpio*, %struct.lp_gpio** %7, align 8
  %19 = getelementptr inbounds %struct.lp_gpio, %struct.lp_gpio* %18, i32 0, i32 1
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* @LP_CONFIG1, align 4
  %22 = call i64 @lp_gpio_reg(%struct.TYPE_2__* %19, i64 %20, i32 %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.lp_gpio*, %struct.lp_gpio** %7, align 8
  %25 = getelementptr inbounds %struct.lp_gpio, %struct.lp_gpio* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %23, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %93

32:                                               ; preds = %2
  %33 = load %struct.lp_gpio*, %struct.lp_gpio** %7, align 8
  %34 = getelementptr inbounds %struct.lp_gpio, %struct.lp_gpio* %33, i32 0, i32 0
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load i64, i64* %11, align 8
  %38 = call i64 @inl(i64 %37)
  store i64 %38, i64* %10, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %32
  %44 = load i64, i64* @TRIG_SEL_BIT, align 8
  %45 = load i64, i64* @INT_INV_BIT, align 8
  %46 = or i64 %44, %45
  %47 = xor i64 %46, -1
  %48 = load i64, i64* %10, align 8
  %49 = and i64 %48, %47
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %43, %32
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @INT_INV_BIT, align 8
  %58 = or i64 %56, %57
  %59 = load i64, i64* @TRIG_SEL_BIT, align 8
  %60 = xor i64 %59, -1
  %61 = and i64 %58, %60
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %55, %50
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @TRIG_SEL_BIT, align 8
  %70 = or i64 %68, %69
  %71 = load i64, i64* @INT_INV_BIT, align 8
  %72 = xor i64 %71, -1
  %73 = and i64 %70, %72
  store i64 %73, i64* %10, align 8
  br label %74

74:                                               ; preds = %67, %62
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i64, i64* @TRIG_SEL_BIT, align 8
  %81 = load i64, i64* @INT_INV_BIT, align 8
  %82 = or i64 %80, %81
  %83 = load i64, i64* %10, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %10, align 8
  br label %85

85:                                               ; preds = %79, %74
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @outl(i64 %86, i64 %87)
  %89 = load %struct.lp_gpio*, %struct.lp_gpio** %7, align 8
  %90 = getelementptr inbounds %struct.lp_gpio, %struct.lp_gpio* %89, i32 0, i32 0
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %85, %29
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.lp_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i64 @lp_gpio_reg(%struct.TYPE_2__*, i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @inl(i64) #1

declare dso_local i32 @outl(i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
