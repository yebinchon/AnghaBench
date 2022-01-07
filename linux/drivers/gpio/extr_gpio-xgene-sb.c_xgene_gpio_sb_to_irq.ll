; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xgene-sb.c_xgene_gpio_sb_to_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xgene-sb.c_xgene_gpio_sb_to_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xgene_gpio_sb = type { i64, i32 }
%struct.irq_fwspec = type { i32, i32*, i32 }

@ENXIO = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i64)* @xgene_gpio_sb_to_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_gpio_sb_to_irq(%struct.gpio_chip* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.xgene_gpio_sb*, align 8
  %7 = alloca %struct.irq_fwspec, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = call %struct.xgene_gpio_sb* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.xgene_gpio_sb* %9, %struct.xgene_gpio_sb** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.xgene_gpio_sb*, %struct.xgene_gpio_sb** %6, align 8
  %12 = getelementptr inbounds %struct.xgene_gpio_sb, %struct.xgene_gpio_sb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.xgene_gpio_sb*, %struct.xgene_gpio_sb** %6, align 8
  %18 = load %struct.xgene_gpio_sb*, %struct.xgene_gpio_sb** %6, align 8
  %19 = getelementptr inbounds %struct.xgene_gpio_sb, %struct.xgene_gpio_sb* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @HWIRQ_TO_GPIO(%struct.xgene_gpio_sb* %17, i32 %20)
  %22 = icmp sgt i64 %16, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %15, %2
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %45

26:                                               ; preds = %15
  %27 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %28 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %7, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %7, i32 0, i32 0
  store i32 2, i32* %33, align 8
  %34 = load %struct.xgene_gpio_sb*, %struct.xgene_gpio_sb** %6, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @GPIO_TO_HWIRQ(%struct.xgene_gpio_sb* %34, i64 %35)
  %37 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %7, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %41 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %7, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %40, i32* %43, align 4
  %44 = call i32 @irq_create_fwspec_mapping(%struct.irq_fwspec* %7)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %26, %23
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.xgene_gpio_sb* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @HWIRQ_TO_GPIO(%struct.xgene_gpio_sb*, i32) #1

declare dso_local i32 @GPIO_TO_HWIRQ(%struct.xgene_gpio_sb*, i64) #1

declare dso_local i32 @irq_create_fwspec_mapping(%struct.irq_fwspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
