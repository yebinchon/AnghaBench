; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mt7621.c_mediatek_gpio_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mt7621.c_mediatek_gpio_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.mtk_gc = type { i32, i32, i32, i32 }

@IRQ_TYPE_PROBE = common dso_local global i32 0, align 4
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @mediatek_gpio_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mediatek_gpio_irq_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca %struct.mtk_gc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %11 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %10)
  store %struct.gpio_chip* %11, %struct.gpio_chip** %6, align 8
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %13 = call %struct.mtk_gc* @to_mediatek_gpio(%struct.gpio_chip* %12)
  store %struct.mtk_gc* %13, %struct.mtk_gc** %7, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %15 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @BIT(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @IRQ_TYPE_PROBE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %2
  %23 = load %struct.mtk_gc*, %struct.mtk_gc** %7, align 8
  %24 = getelementptr inbounds %struct.mtk_gc, %struct.mtk_gc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mtk_gc*, %struct.mtk_gc** %7, align 8
  %27 = getelementptr inbounds %struct.mtk_gc, %struct.mtk_gc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %25, %28
  %30 = load %struct.mtk_gc*, %struct.mtk_gc** %7, align 8
  %31 = getelementptr inbounds %struct.mtk_gc, %struct.mtk_gc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %29, %32
  %34 = load %struct.mtk_gc*, %struct.mtk_gc** %7, align 8
  %35 = getelementptr inbounds %struct.mtk_gc, %struct.mtk_gc* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %33, %36
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %107

42:                                               ; preds = %22
  store i32 131, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %2
  %44 = load i32, i32* %9, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.mtk_gc*, %struct.mtk_gc** %7, align 8
  %47 = getelementptr inbounds %struct.mtk_gc, %struct.mtk_gc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %9, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.mtk_gc*, %struct.mtk_gc** %7, align 8
  %53 = getelementptr inbounds %struct.mtk_gc, %struct.mtk_gc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* %9, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.mtk_gc*, %struct.mtk_gc** %7, align 8
  %59 = getelementptr inbounds %struct.mtk_gc, %struct.mtk_gc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %9, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.mtk_gc*, %struct.mtk_gc** %7, align 8
  %65 = getelementptr inbounds %struct.mtk_gc, %struct.mtk_gc* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %70 = and i32 %68, %69
  switch i32 %70, label %106 [
    i32 132, label %71
    i32 130, label %82
    i32 131, label %88
    i32 129, label %94
    i32 128, label %100
  ]

71:                                               ; preds = %43
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.mtk_gc*, %struct.mtk_gc** %7, align 8
  %74 = getelementptr inbounds %struct.mtk_gc, %struct.mtk_gc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.mtk_gc*, %struct.mtk_gc** %7, align 8
  %79 = getelementptr inbounds %struct.mtk_gc, %struct.mtk_gc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %106

82:                                               ; preds = %43
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.mtk_gc*, %struct.mtk_gc** %7, align 8
  %85 = getelementptr inbounds %struct.mtk_gc, %struct.mtk_gc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %106

88:                                               ; preds = %43
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.mtk_gc*, %struct.mtk_gc** %7, align 8
  %91 = getelementptr inbounds %struct.mtk_gc, %struct.mtk_gc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %106

94:                                               ; preds = %43
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.mtk_gc*, %struct.mtk_gc** %7, align 8
  %97 = getelementptr inbounds %struct.mtk_gc, %struct.mtk_gc* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %106

100:                                              ; preds = %43
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.mtk_gc*, %struct.mtk_gc** %7, align 8
  %103 = getelementptr inbounds %struct.mtk_gc, %struct.mtk_gc* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %43, %100, %94, %88, %82, %71
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %41
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.mtk_gc* @to_mediatek_gpio(%struct.gpio_chip*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
