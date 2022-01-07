; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-meson-gpio.c_meson_gpio_irq_type_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-meson-gpio.c_meson_gpio_irq_type_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_gpio_irq_controller = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@REG_EDGE_POL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_gpio_irq_controller*, i32, i32*)* @meson_gpio_irq_type_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_gpio_irq_type_setup(%struct.meson_gpio_irq_controller* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.meson_gpio_irq_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.meson_gpio_irq_controller* %0, %struct.meson_gpio_irq_controller** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.meson_gpio_irq_controller*, %struct.meson_gpio_irq_controller** %5, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @meson_gpio_irq_get_channel_idx(%struct.meson_gpio_irq_controller* %10, i32* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load %struct.meson_gpio_irq_controller*, %struct.meson_gpio_irq_controller** %5, align 8
  %21 = getelementptr inbounds %struct.meson_gpio_irq_controller, %struct.meson_gpio_irq_controller* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %72

29:                                               ; preds = %19
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @REG_BOTH_EDGE(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  br label %59

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %37 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @REG_EDGE_POL_EDGE(i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %41, %34
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %49 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @REG_EDGE_POL_LOW(i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %53, %46
  br label %59

59:                                               ; preds = %58, %29
  %60 = load %struct.meson_gpio_irq_controller*, %struct.meson_gpio_irq_controller** %5, align 8
  %61 = getelementptr inbounds %struct.meson_gpio_irq_controller, %struct.meson_gpio_irq_controller* %60, i32 0, i32 0
  %62 = call i32 @spin_lock(i32* %61)
  %63 = load %struct.meson_gpio_irq_controller*, %struct.meson_gpio_irq_controller** %5, align 8
  %64 = load i32, i32* @REG_EDGE_POL, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @REG_EDGE_POL_MASK(i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @meson_gpio_irq_update_bits(%struct.meson_gpio_irq_controller* %63, i32 %64, i32 %66, i32 %67)
  %69 = load %struct.meson_gpio_irq_controller*, %struct.meson_gpio_irq_controller** %5, align 8
  %70 = getelementptr inbounds %struct.meson_gpio_irq_controller, %struct.meson_gpio_irq_controller* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock(i32* %70)
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %59, %26
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @meson_gpio_irq_get_channel_idx(%struct.meson_gpio_irq_controller*, i32*) #1

declare dso_local i32 @REG_BOTH_EDGE(i32) #1

declare dso_local i32 @REG_EDGE_POL_EDGE(i32) #1

declare dso_local i32 @REG_EDGE_POL_LOW(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @meson_gpio_irq_update_bits(%struct.meson_gpio_irq_controller*, i32, i32, i32) #1

declare dso_local i32 @REG_EDGE_POL_MASK(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
