; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-vf610.c_vf610_gpio_irq_set_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-vf610.c_vf610_gpio_irq_set_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.vf610_gpio_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i64)* @vf610_gpio_irq_set_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf610_gpio_irq_set_wake(%struct.irq_data* %0, i64 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vf610_gpio_port*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %7 = call i32 @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  %8 = call %struct.vf610_gpio_port* @gpiochip_get_data(i32 %7)
  store %struct.vf610_gpio_port* %8, %struct.vf610_gpio_port** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.vf610_gpio_port*, %struct.vf610_gpio_port** %5, align 8
  %13 = getelementptr inbounds %struct.vf610_gpio_port, %struct.vf610_gpio_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @enable_irq_wake(i32 %14)
  br label %21

16:                                               ; preds = %2
  %17 = load %struct.vf610_gpio_port*, %struct.vf610_gpio_port** %5, align 8
  %18 = getelementptr inbounds %struct.vf610_gpio_port, %struct.vf610_gpio_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @disable_irq_wake(i32 %19)
  br label %21

21:                                               ; preds = %16, %11
  ret i32 0
}

declare dso_local %struct.vf610_gpio_port* @gpiochip_get_data(i32) #1

declare dso_local i32 @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @disable_irq_wake(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
