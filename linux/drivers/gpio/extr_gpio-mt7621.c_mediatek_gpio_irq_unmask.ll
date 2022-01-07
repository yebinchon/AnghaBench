; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mt7621.c_mediatek_gpio_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mt7621.c_mediatek_gpio_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.mtk_gc = type { i32, i32, i32, i32, i32 }

@GPIO_REG_REDGE = common dso_local global i32 0, align 4
@GPIO_REG_FEDGE = common dso_local global i32 0, align 4
@GPIO_REG_HLVL = common dso_local global i32 0, align 4
@GPIO_REG_LLVL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @mediatek_gpio_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mediatek_gpio_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.mtk_gc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %11)
  store %struct.gpio_chip* %12, %struct.gpio_chip** %3, align 8
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %14 = call %struct.mtk_gc* @to_mediatek_gpio(%struct.gpio_chip* %13)
  store %struct.mtk_gc* %14, %struct.mtk_gc** %4, align 8
  %15 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %16 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.mtk_gc*, %struct.mtk_gc** %4, align 8
  %19 = getelementptr inbounds %struct.mtk_gc, %struct.mtk_gc* %18, i32 0, i32 4
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.mtk_gc*, %struct.mtk_gc** %4, align 8
  %23 = load i32, i32* @GPIO_REG_REDGE, align 4
  %24 = call i32 @mtk_gpio_r32(%struct.mtk_gc* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.mtk_gc*, %struct.mtk_gc** %4, align 8
  %26 = load i32, i32* @GPIO_REG_FEDGE, align 4
  %27 = call i32 @mtk_gpio_r32(%struct.mtk_gc* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.mtk_gc*, %struct.mtk_gc** %4, align 8
  %29 = load i32, i32* @GPIO_REG_HLVL, align 4
  %30 = call i32 @mtk_gpio_r32(%struct.mtk_gc* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.mtk_gc*, %struct.mtk_gc** %4, align 8
  %32 = load i32, i32* @GPIO_REG_LLVL, align 4
  %33 = call i32 @mtk_gpio_r32(%struct.mtk_gc* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.mtk_gc*, %struct.mtk_gc** %4, align 8
  %35 = load i32, i32* @GPIO_REG_REDGE, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = load %struct.mtk_gc*, %struct.mtk_gc** %4, align 8
  %40 = getelementptr inbounds %struct.mtk_gc, %struct.mtk_gc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %38, %41
  %43 = or i32 %36, %42
  %44 = call i32 @mtk_gpio_w32(%struct.mtk_gc* %34, i32 %35, i32 %43)
  %45 = load %struct.mtk_gc*, %struct.mtk_gc** %4, align 8
  %46 = load i32, i32* @GPIO_REG_FEDGE, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = load %struct.mtk_gc*, %struct.mtk_gc** %4, align 8
  %51 = getelementptr inbounds %struct.mtk_gc, %struct.mtk_gc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %49, %52
  %54 = or i32 %47, %53
  %55 = call i32 @mtk_gpio_w32(%struct.mtk_gc* %45, i32 %46, i32 %54)
  %56 = load %struct.mtk_gc*, %struct.mtk_gc** %4, align 8
  %57 = load i32, i32* @GPIO_REG_HLVL, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @BIT(i32 %59)
  %61 = load %struct.mtk_gc*, %struct.mtk_gc** %4, align 8
  %62 = getelementptr inbounds %struct.mtk_gc, %struct.mtk_gc* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %60, %63
  %65 = or i32 %58, %64
  %66 = call i32 @mtk_gpio_w32(%struct.mtk_gc* %56, i32 %57, i32 %65)
  %67 = load %struct.mtk_gc*, %struct.mtk_gc** %4, align 8
  %68 = load i32, i32* @GPIO_REG_LLVL, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @BIT(i32 %70)
  %72 = load %struct.mtk_gc*, %struct.mtk_gc** %4, align 8
  %73 = getelementptr inbounds %struct.mtk_gc, %struct.mtk_gc* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %71, %74
  %76 = or i32 %69, %75
  %77 = call i32 @mtk_gpio_w32(%struct.mtk_gc* %67, i32 %68, i32 %76)
  %78 = load %struct.mtk_gc*, %struct.mtk_gc** %4, align 8
  %79 = getelementptr inbounds %struct.mtk_gc, %struct.mtk_gc* %78, i32 0, i32 4
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.mtk_gc* @to_mediatek_gpio(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mtk_gpio_r32(%struct.mtk_gc*, i32) #1

declare dso_local i32 @mtk_gpio_w32(%struct.mtk_gc*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
