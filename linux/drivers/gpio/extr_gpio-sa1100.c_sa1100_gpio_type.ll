; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sa1100.c_sa1100_gpio_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sa1100.c_sa1100_gpio_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.sa1100_gpio_chip = type { i32, i32 }

@IRQ_TYPE_PROBE = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @sa1100_gpio_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_gpio_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sa1100_gpio_chip*, align 8
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %9 = call %struct.sa1100_gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.sa1100_gpio_chip* %9, %struct.sa1100_gpio_chip** %6, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %11 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @BIT(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @IRQ_TYPE_PROBE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load %struct.sa1100_gpio_chip*, %struct.sa1100_gpio_chip** %6, align 8
  %19 = getelementptr inbounds %struct.sa1100_gpio_chip, %struct.sa1100_gpio_chip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sa1100_gpio_chip*, %struct.sa1100_gpio_chip** %6, align 8
  %22 = getelementptr inbounds %struct.sa1100_gpio_chip, %struct.sa1100_gpio_chip* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %20, %23
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %72

29:                                               ; preds = %17
  %30 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %31 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %29, %2
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.sa1100_gpio_chip*, %struct.sa1100_gpio_chip** %6, align 8
  %41 = getelementptr inbounds %struct.sa1100_gpio_chip, %struct.sa1100_gpio_chip* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %51

44:                                               ; preds = %33
  %45 = load i32, i32* %7, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.sa1100_gpio_chip*, %struct.sa1100_gpio_chip** %6, align 8
  %48 = getelementptr inbounds %struct.sa1100_gpio_chip, %struct.sa1100_gpio_chip* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %44, %38
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.sa1100_gpio_chip*, %struct.sa1100_gpio_chip** %6, align 8
  %59 = getelementptr inbounds %struct.sa1100_gpio_chip, %struct.sa1100_gpio_chip* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %69

62:                                               ; preds = %51
  %63 = load i32, i32* %7, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.sa1100_gpio_chip*, %struct.sa1100_gpio_chip** %6, align 8
  %66 = getelementptr inbounds %struct.sa1100_gpio_chip, %struct.sa1100_gpio_chip* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %62, %56
  %70 = load %struct.sa1100_gpio_chip*, %struct.sa1100_gpio_chip** %6, align 8
  %71 = call i32 @sa1100_update_edge_regs(%struct.sa1100_gpio_chip* %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %28
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.sa1100_gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @sa1100_update_edge_regs(%struct.sa1100_gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
