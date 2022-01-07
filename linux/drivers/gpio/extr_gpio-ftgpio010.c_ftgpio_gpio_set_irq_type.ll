; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ftgpio010.c_ftgpio_gpio_set_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ftgpio010.c_ftgpio_gpio_set_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.ftgpio_gpio = type { i64 }

@GPIO_INT_TYPE = common dso_local global i64 0, align 8
@GPIO_INT_LEVEL = common dso_local global i64 0, align 8
@GPIO_INT_BOTH_EDGE = common dso_local global i64 0, align 8
@handle_edge_irq = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@handle_bad_irq = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @ftgpio_gpio_set_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftgpio_gpio_set_irq_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca %struct.ftgpio_gpio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %13 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %12)
  store %struct.gpio_chip* %13, %struct.gpio_chip** %6, align 8
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %15 = call %struct.ftgpio_gpio* @gpiochip_get_data(%struct.gpio_chip* %14)
  store %struct.ftgpio_gpio* %15, %struct.ftgpio_gpio** %7, align 8
  %16 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %17 = call i32 @irqd_to_hwirq(%struct.irq_data* %16)
  %18 = call i32 @BIT(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %7, align 8
  %20 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @GPIO_INT_TYPE, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %7, align 8
  %26 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @GPIO_INT_LEVEL, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readl(i64 %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %7, align 8
  %32 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @GPIO_INT_BOTH_EDGE, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %5, align 4
  switch i32 %37, label %101 [
    i32 132, label %38
    i32 130, label %49
    i32 131, label %65
    i32 129, label %80
    i32 128, label %91
  ]

38:                                               ; preds = %2
  %39 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %40 = load i32, i32* @handle_edge_irq, align 4
  %41 = call i32 @irq_set_handler_locked(%struct.irq_data* %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %107

49:                                               ; preds = %2
  %50 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %51 = load i32, i32* @handle_edge_irq, align 4
  %52 = call i32 @irq_set_handler_locked(%struct.irq_data* %50, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %8, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %10, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %10, align 4
  br label %107

65:                                               ; preds = %2
  %66 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %67 = load i32, i32* @handle_edge_irq, align 4
  %68 = call i32 @irq_set_handler_locked(%struct.irq_data* %66, i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %8, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %10, align 4
  br label %107

80:                                               ; preds = %2
  %81 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %82 = load i32, i32* @handle_level_irq, align 4
  %83 = call i32 @irq_set_handler_locked(%struct.irq_data* %81, i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %11, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %8, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %10, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %10, align 4
  br label %107

91:                                               ; preds = %2
  %92 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %93 = load i32, i32* @handle_level_irq, align 4
  %94 = call i32 @irq_set_handler_locked(%struct.irq_data* %92, i32 %93)
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %11, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %10, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %10, align 4
  br label %107

101:                                              ; preds = %2
  %102 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %103 = load i32, i32* @handle_bad_irq, align 4
  %104 = call i32 @irq_set_handler_locked(%struct.irq_data* %102, i32 %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %131

107:                                              ; preds = %91, %80, %65, %49, %38
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %7, align 8
  %110 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @GPIO_INT_TYPE, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @writel(i32 %108, i64 %113)
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %7, align 8
  %117 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @GPIO_INT_LEVEL, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @writel(i32 %115, i64 %120)
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %7, align 8
  %124 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @GPIO_INT_BOTH_EDGE, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @writel(i32 %122, i64 %127)
  %129 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %130 = call i32 @ftgpio_gpio_ack_irq(%struct.irq_data* %129)
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %107, %101
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.ftgpio_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @irq_set_handler_locked(%struct.irq_data*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @ftgpio_gpio_ack_irq(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
