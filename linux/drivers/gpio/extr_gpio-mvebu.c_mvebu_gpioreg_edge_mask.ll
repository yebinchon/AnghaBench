; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mvebu.c_mvebu_gpioreg_edge_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mvebu.c_mvebu_gpioreg_edge_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_gpio_chip = type { i32, i32, %struct.regmap*, %struct.regmap* }
%struct.regmap = type { i32 }

@GPIO_EDGE_MASK_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvebu_gpio_chip*, %struct.regmap**, i32*)* @mvebu_gpioreg_edge_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvebu_gpioreg_edge_mask(%struct.mvebu_gpio_chip* %0, %struct.regmap** %1, i32* %2) #0 {
  %4 = alloca %struct.mvebu_gpio_chip*, align 8
  %5 = alloca %struct.regmap**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.mvebu_gpio_chip* %0, %struct.mvebu_gpio_chip** %4, align 8
  store %struct.regmap** %1, %struct.regmap*** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %9 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %40 [
    i32 128, label %11
    i32 131, label %11
    i32 129, label %22
    i32 130, label %31
  ]

11:                                               ; preds = %3, %3
  %12 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %13 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %12, i32 0, i32 3
  %14 = load %struct.regmap*, %struct.regmap** %13, align 8
  %15 = load %struct.regmap**, %struct.regmap*** %5, align 8
  store %struct.regmap* %14, %struct.regmap** %15, align 8
  %16 = load i32, i32* @GPIO_EDGE_MASK_OFF, align 4
  %17 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %18 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add i32 %16, %19
  %21 = load i32*, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  br label %42

22:                                               ; preds = %3
  %23 = call i32 (...) @smp_processor_id()
  store i32 %23, i32* %7, align 4
  %24 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %25 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %24, i32 0, i32 3
  %26 = load %struct.regmap*, %struct.regmap** %25, align 8
  %27 = load %struct.regmap**, %struct.regmap*** %5, align 8
  store %struct.regmap* %26, %struct.regmap** %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @GPIO_EDGE_MASK_MV78200_OFF(i32 %28)
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  br label %42

31:                                               ; preds = %3
  %32 = call i32 (...) @smp_processor_id()
  store i32 %32, i32* %7, align 4
  %33 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %4, align 8
  %34 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %33, i32 0, i32 2
  %35 = load %struct.regmap*, %struct.regmap** %34, align 8
  %36 = load %struct.regmap**, %struct.regmap*** %5, align 8
  store %struct.regmap* %35, %struct.regmap** %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @GPIO_EDGE_MASK_ARMADAXP_OFF(i32 %37)
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  br label %42

40:                                               ; preds = %3
  %41 = call i32 (...) @BUG()
  br label %42

42:                                               ; preds = %40, %31, %22, %11
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @GPIO_EDGE_MASK_MV78200_OFF(i32) #1

declare dso_local i32 @GPIO_EDGE_MASK_ARMADAXP_OFF(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
