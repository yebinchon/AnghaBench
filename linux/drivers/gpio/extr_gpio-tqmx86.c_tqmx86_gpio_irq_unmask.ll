; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tqmx86.c_tqmx86_gpio_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tqmx86.c_tqmx86_gpio_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.tqmx86_gpio_data = type { i32*, i32 }

@TQMX86_NGPO = common dso_local global i32 0, align 4
@TQMX86_GPII_MASK = common dso_local global i32 0, align 4
@TQMX86_GPII_BITS = common dso_local global i32 0, align 4
@TQMX86_GPIIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @tqmx86_gpio_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tqmx86_gpio_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tqmx86_gpio_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @TQMX86_NGPO, align 4
  %12 = sub i32 %10, %11
  store i32 %12, i32* %3, align 4
  %13 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %14 = call i32 @irq_data_get_irq_chip_data(%struct.irq_data* %13)
  %15 = call %struct.tqmx86_gpio_data* @gpiochip_get_data(i32 %14)
  store %struct.tqmx86_gpio_data* %15, %struct.tqmx86_gpio_data** %4, align 8
  %16 = load i32, i32* @TQMX86_GPII_MASK, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @TQMX86_GPII_BITS, align 4
  %19 = mul i32 %17, %18
  %20 = shl i32 %16, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.tqmx86_gpio_data*, %struct.tqmx86_gpio_data** %4, align 8
  %22 = getelementptr inbounds %struct.tqmx86_gpio_data, %struct.tqmx86_gpio_data* %21, i32 0, i32 1
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @raw_spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.tqmx86_gpio_data*, %struct.tqmx86_gpio_data** %4, align 8
  %26 = load i32, i32* @TQMX86_GPIIC, align 4
  %27 = call i32 @tqmx86_gpio_read(%struct.tqmx86_gpio_data* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load %struct.tqmx86_gpio_data*, %struct.tqmx86_gpio_data** %4, align 8
  %33 = getelementptr inbounds %struct.tqmx86_gpio_data, %struct.tqmx86_gpio_data* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @TQMX86_GPII_BITS, align 4
  %41 = mul i32 %39, %40
  %42 = shl i32 %38, %41
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load %struct.tqmx86_gpio_data*, %struct.tqmx86_gpio_data** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @TQMX86_GPIIC, align 4
  %48 = call i32 @tqmx86_gpio_write(%struct.tqmx86_gpio_data* %45, i32 %46, i32 %47)
  %49 = load %struct.tqmx86_gpio_data*, %struct.tqmx86_gpio_data** %4, align 8
  %50 = getelementptr inbounds %struct.tqmx86_gpio_data, %struct.tqmx86_gpio_data* %49, i32 0, i32 1
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @raw_spin_unlock_irqrestore(i32* %50, i64 %51)
  ret void
}

declare dso_local %struct.tqmx86_gpio_data* @gpiochip_get_data(i32) #1

declare dso_local i32 @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tqmx86_gpio_read(%struct.tqmx86_gpio_data*, i32) #1

declare dso_local i32 @tqmx86_gpio_write(%struct.tqmx86_gpio_data*, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
