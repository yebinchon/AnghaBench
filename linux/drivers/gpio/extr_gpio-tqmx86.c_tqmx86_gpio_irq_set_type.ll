; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tqmx86.c_tqmx86_gpio_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tqmx86.c_tqmx86_gpio_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.tqmx86_gpio_data = type { i32*, i32 }

@TQMX86_NGPO = common dso_local global i32 0, align 4
@IRQF_TRIGGER_MASK = common dso_local global i32 0, align 4
@TQMX86_GPII_RISING = common dso_local global i32 0, align 4
@TQMX86_GPII_FALLING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TQMX86_GPIIC = common dso_local global i32 0, align 4
@TQMX86_GPII_MASK = common dso_local global i32 0, align 4
@TQMX86_GPII_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @tqmx86_gpio_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tqmx86_gpio_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tqmx86_gpio_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %13 = call i32 @irq_data_get_irq_chip_data(%struct.irq_data* %12)
  %14 = call %struct.tqmx86_gpio_data* @gpiochip_get_data(i32 %13)
  store %struct.tqmx86_gpio_data* %14, %struct.tqmx86_gpio_data** %6, align 8
  %15 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %16 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @TQMX86_NGPO, align 4
  %19 = sub i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @IRQF_TRIGGER_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %32 [
    i32 128, label %24
    i32 129, label %26
    i32 130, label %28
  ]

24:                                               ; preds = %2
  %25 = load i32, i32* @TQMX86_GPII_RISING, align 4
  store i32 %25, i32* %10, align 4
  br label %35

26:                                               ; preds = %2
  %27 = load i32, i32* @TQMX86_GPII_FALLING, align 4
  store i32 %27, i32* %10, align 4
  br label %35

28:                                               ; preds = %2
  %29 = load i32, i32* @TQMX86_GPII_FALLING, align 4
  %30 = load i32, i32* @TQMX86_GPII_RISING, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %10, align 4
  br label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %73

35:                                               ; preds = %28, %26, %24
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.tqmx86_gpio_data*, %struct.tqmx86_gpio_data** %6, align 8
  %38 = getelementptr inbounds %struct.tqmx86_gpio_data, %struct.tqmx86_gpio_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  %43 = load %struct.tqmx86_gpio_data*, %struct.tqmx86_gpio_data** %6, align 8
  %44 = getelementptr inbounds %struct.tqmx86_gpio_data, %struct.tqmx86_gpio_data* %43, i32 0, i32 1
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @raw_spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.tqmx86_gpio_data*, %struct.tqmx86_gpio_data** %6, align 8
  %48 = load i32, i32* @TQMX86_GPIIC, align 4
  %49 = call i32 @tqmx86_gpio_read(%struct.tqmx86_gpio_data* %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* @TQMX86_GPII_MASK, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @TQMX86_GPII_BITS, align 4
  %53 = mul i32 %51, %52
  %54 = shl i32 %50, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %11, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @TQMX86_GPII_BITS, align 4
  %61 = mul i32 %59, %60
  %62 = shl i32 %58, %61
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %11, align 4
  %65 = load %struct.tqmx86_gpio_data*, %struct.tqmx86_gpio_data** %6, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @TQMX86_GPIIC, align 4
  %68 = call i32 @tqmx86_gpio_write(%struct.tqmx86_gpio_data* %65, i32 %66, i32 %67)
  %69 = load %struct.tqmx86_gpio_data*, %struct.tqmx86_gpio_data** %6, align 8
  %70 = getelementptr inbounds %struct.tqmx86_gpio_data, %struct.tqmx86_gpio_data* %69, i32 0, i32 1
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @raw_spin_unlock_irqrestore(i32* %70, i64 %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %35, %32
  %74 = load i32, i32* %3, align 4
  ret i32 %74
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
