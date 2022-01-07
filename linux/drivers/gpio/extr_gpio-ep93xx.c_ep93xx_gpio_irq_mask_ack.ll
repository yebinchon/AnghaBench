; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ep93xx.c_ep93xx_gpio_irq_mask_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ep93xx.c_ep93xx_gpio_irq_mask_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.ep93xx_gpio = type { i64 }

@IRQ_TYPE_EDGE_BOTH = common dso_local global i64 0, align 8
@gpio_int_type2 = common dso_local global i32* null, align 8
@gpio_int_unmasked = common dso_local global i32* null, align 8
@eoi_register_offset = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @ep93xx_gpio_irq_mask_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep93xx_gpio_irq_mask_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.ep93xx_gpio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.gpio_chip* %8, %struct.gpio_chip** %3, align 8
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = call %struct.ep93xx_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.ep93xx_gpio* %10, %struct.ep93xx_gpio** %4, align 8
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %12 = call i32 @ep93xx_gpio_port(%struct.gpio_chip* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %14 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 7
  %17 = call i32 @BIT(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %19 = call i64 @irqd_get_trigger_type(%struct.irq_data* %18)
  %20 = load i64, i64* @IRQ_TYPE_EDGE_BOTH, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32*, i32** @gpio_int_type2, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %28, %23
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %22, %1
  %31 = load i32, i32* %6, align 4
  %32 = xor i32 %31, -1
  %33 = load i32*, i32** @gpio_int_unmasked, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %32
  store i32 %38, i32* %36, align 4
  %39 = load %struct.ep93xx_gpio*, %struct.ep93xx_gpio** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ep93xx_gpio_update_int_params(%struct.ep93xx_gpio* %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.ep93xx_gpio*, %struct.ep93xx_gpio** %4, align 8
  %44 = getelementptr inbounds %struct.ep93xx_gpio, %struct.ep93xx_gpio* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** @eoi_register_offset, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %45, %50
  %52 = call i32 @writeb(i32 %42, i64 %51)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.ep93xx_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @ep93xx_gpio_port(%struct.gpio_chip*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @irqd_get_trigger_type(%struct.irq_data*) #1

declare dso_local i32 @ep93xx_gpio_update_int_params(%struct.ep93xx_gpio*, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
