; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-meson-gpio.c_meson_gpio_irq_domain_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-meson-gpio.c_meson_gpio_irq_domain_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.meson_gpio_irq_controller* }
%struct.meson_gpio_irq_controller = type { i32 }
%struct.irq_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_domain*, i32, i32)* @meson_gpio_irq_domain_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_gpio_irq_domain_free(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.meson_gpio_irq_controller*, align 8
  %8 = alloca %struct.irq_data*, align 8
  %9 = alloca i32*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %11 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %10, i32 0, i32 0
  %12 = load %struct.meson_gpio_irq_controller*, %struct.meson_gpio_irq_controller** %11, align 8
  store %struct.meson_gpio_irq_controller* %12, %struct.meson_gpio_irq_controller** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %31

19:                                               ; preds = %3
  %20 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @irq_domain_free_irqs_parent(%struct.irq_domain* %20, i32 %21, i32 1)
  %23 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* %23, i32 %24)
  store %struct.irq_data* %25, %struct.irq_data** %8, align 8
  %26 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %27 = call i32* @irq_data_get_irq_chip_data(%struct.irq_data* %26)
  store i32* %27, i32** %9, align 8
  %28 = load %struct.meson_gpio_irq_controller*, %struct.meson_gpio_irq_controller** %7, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @meson_gpio_irq_release_channel(%struct.meson_gpio_irq_controller* %28, i32* %29)
  br label %31

31:                                               ; preds = %19, %18
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @irq_domain_free_irqs_parent(%struct.irq_domain*, i32, i32) #1

declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain*, i32) #1

declare dso_local i32* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @meson_gpio_irq_release_channel(%struct.meson_gpio_irq_controller*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
