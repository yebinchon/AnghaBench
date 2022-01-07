; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-thunderx.c_thunderx_gpio_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-thunderx.c_thunderx_gpio_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.thunderx_gpio = type { i32, i64, i32, i32, %struct.thunderx_line* }
%struct.thunderx_line = type { i32, i32 }

@GPIO_BIT_CFG_INT_EN = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@handle_fasteoi_ack_irq = common dso_local global i32 0, align 4
@GPIO_BIT_CFG_INT_TYPE = common dso_local global i32 0, align 4
@handle_fasteoi_mask_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@GPIO_BIT_CFG_PIN_XOR = common dso_local global i32 0, align 4
@IRQ_SET_MASK_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @thunderx_gpio_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunderx_gpio_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca %struct.thunderx_gpio*, align 8
  %7 = alloca %struct.thunderx_line*, align 8
  %8 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %10 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.gpio_chip* %10, %struct.gpio_chip** %5, align 8
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %12 = call %struct.thunderx_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.thunderx_gpio* %12, %struct.thunderx_gpio** %6, align 8
  %13 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %6, align 8
  %14 = getelementptr inbounds %struct.thunderx_gpio, %struct.thunderx_gpio* %13, i32 0, i32 4
  %15 = load %struct.thunderx_line*, %struct.thunderx_line** %14, align 8
  %16 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %17 = call i64 @irqd_to_hwirq(%struct.irq_data* %16)
  %18 = getelementptr inbounds %struct.thunderx_line, %struct.thunderx_line* %15, i64 %17
  store %struct.thunderx_line* %18, %struct.thunderx_line** %7, align 8
  %19 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @irqd_set_trigger_type(%struct.irq_data* %19, i32 %20)
  %22 = load %struct.thunderx_line*, %struct.thunderx_line** %7, align 8
  %23 = getelementptr inbounds %struct.thunderx_line, %struct.thunderx_line* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GPIO_BIT_CFG_INT_EN, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %33 = load i32, i32* @handle_fasteoi_ack_irq, align 4
  %34 = call i32 @irq_set_handler_locked(%struct.irq_data* %32, i32 %33)
  %35 = load i32, i32* @GPIO_BIT_CFG_INT_TYPE, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %42

38:                                               ; preds = %2
  %39 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %40 = load i32, i32* @handle_fasteoi_mask_irq, align 4
  %41 = call i32 @irq_set_handler_locked(%struct.irq_data* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %31
  %43 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %6, align 8
  %44 = getelementptr inbounds %struct.thunderx_gpio, %struct.thunderx_gpio* %43, i32 0, i32 0
  %45 = call i32 @raw_spin_lock(i32* %44)
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %48 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %42
  %53 = load i32, i32* @GPIO_BIT_CFG_PIN_XOR, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load %struct.thunderx_line*, %struct.thunderx_line** %7, align 8
  %57 = getelementptr inbounds %struct.thunderx_line, %struct.thunderx_line* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %6, align 8
  %60 = getelementptr inbounds %struct.thunderx_gpio, %struct.thunderx_gpio* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @set_bit(i32 %58, i32 %61)
  br label %71

63:                                               ; preds = %42
  %64 = load %struct.thunderx_line*, %struct.thunderx_line** %7, align 8
  %65 = getelementptr inbounds %struct.thunderx_line, %struct.thunderx_line* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %6, align 8
  %68 = getelementptr inbounds %struct.thunderx_gpio, %struct.thunderx_gpio* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @clear_bit(i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %63, %52
  %72 = load %struct.thunderx_line*, %struct.thunderx_line** %7, align 8
  %73 = getelementptr inbounds %struct.thunderx_line, %struct.thunderx_line* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %6, align 8
  %76 = getelementptr inbounds %struct.thunderx_gpio, %struct.thunderx_gpio* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @clear_bit(i32 %74, i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %6, align 8
  %81 = getelementptr inbounds %struct.thunderx_gpio, %struct.thunderx_gpio* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.thunderx_line*, %struct.thunderx_line** %7, align 8
  %84 = getelementptr inbounds %struct.thunderx_line, %struct.thunderx_line* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @bit_cfg_reg(i32 %85)
  %87 = add nsw i64 %82, %86
  %88 = call i32 @writeq(i32 %79, i64 %87)
  %89 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %6, align 8
  %90 = getelementptr inbounds %struct.thunderx_gpio, %struct.thunderx_gpio* %89, i32 0, i32 0
  %91 = call i32 @raw_spin_unlock(i32* %90)
  %92 = load i32, i32* @IRQ_SET_MASK_OK, align 4
  ret i32 %92
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.thunderx_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @irqd_set_trigger_type(%struct.irq_data*, i32) #1

declare dso_local i32 @irq_set_handler_locked(%struct.irq_data*, i32) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i64 @bit_cfg_reg(i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
