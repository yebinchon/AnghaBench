; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-omap.c_omap_gpio_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-omap.c_omap_gpio_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_bank = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @omap_gpio_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_gpio_irq_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_bank*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %11 = call %struct.gpio_bank* @omap_irq_data_get_bank(%struct.irq_data* %10)
  store %struct.gpio_bank* %11, %struct.gpio_bank** %6, align 8
  %12 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %13 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %101

23:                                               ; preds = %2
  %24 = load %struct.gpio_bank*, %struct.gpio_bank** %6, align 8
  %25 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %33 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %101

40:                                               ; preds = %30, %23
  %41 = load %struct.gpio_bank*, %struct.gpio_bank** %6, align 8
  %42 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %41, i32 0, i32 0
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @raw_spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.gpio_bank*, %struct.gpio_bank** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @omap_set_gpio_triggering(%struct.gpio_bank* %45, i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load %struct.gpio_bank*, %struct.gpio_bank** %6, align 8
  %53 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %52, i32 0, i32 0
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @raw_spin_unlock_irqrestore(i32* %53, i64 %54)
  br label %99

56:                                               ; preds = %40
  %57 = load %struct.gpio_bank*, %struct.gpio_bank** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @omap_gpio_init_irq(%struct.gpio_bank* %57, i32 %58)
  %60 = load %struct.gpio_bank*, %struct.gpio_bank** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @omap_gpio_is_input(%struct.gpio_bank* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %56
  %65 = load %struct.gpio_bank*, %struct.gpio_bank** %6, align 8
  %66 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %65, i32 0, i32 0
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @raw_spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %99

71:                                               ; preds = %56
  %72 = load %struct.gpio_bank*, %struct.gpio_bank** %6, align 8
  %73 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %72, i32 0, i32 0
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @raw_spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %78 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %79 = or i32 %77, %78
  %80 = and i32 %76, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %71
  %83 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %84 = load i32, i32* @handle_level_irq, align 4
  %85 = call i32 @irq_set_handler_locked(%struct.irq_data* %83, i32 %84)
  br label %98

86:                                               ; preds = %71
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %89 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %90 = or i32 %88, %89
  %91 = and i32 %87, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %95 = load i32, i32* @handle_simple_irq, align 4
  %96 = call i32 @irq_set_handler_locked(%struct.irq_data* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %86
  br label %98

98:                                               ; preds = %97, %82
  store i32 0, i32* %3, align 4
  br label %101

99:                                               ; preds = %64, %51
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %98, %37, %20
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.gpio_bank* @omap_irq_data_get_bank(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @omap_set_gpio_triggering(%struct.gpio_bank*, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @omap_gpio_init_irq(%struct.gpio_bank*, i32) #1

declare dso_local i32 @omap_gpio_is_input(%struct.gpio_bank*, i32) #1

declare dso_local i32 @irq_set_handler_locked(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
