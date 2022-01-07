; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ixp4xx.c_ixp4xx_gpio_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ixp4xx.c_ixp4xx_gpio_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.ixp4xx_gpio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @ixp4xx_gpio_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixp4xx_gpio_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.ixp4xx_gpio*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %5)
  store %struct.gpio_chip* %6, %struct.gpio_chip** %3, align 8
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %8 = call %struct.ixp4xx_gpio* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.ixp4xx_gpio* %8, %struct.ixp4xx_gpio** %4, align 8
  %9 = load %struct.ixp4xx_gpio*, %struct.ixp4xx_gpio** %4, align 8
  %10 = getelementptr inbounds %struct.ixp4xx_gpio, %struct.ixp4xx_gpio* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %13 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @BIT(i32 %14)
  %16 = and i32 %11, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %20 = call i32 @ixp4xx_gpio_irq_ack(%struct.irq_data* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %23 = call i32 @irq_chip_unmask_parent(%struct.irq_data* %22)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.ixp4xx_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ixp4xx_gpio_irq_ack(%struct.irq_data*) #1

declare dso_local i32 @irq_chip_unmask_parent(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
