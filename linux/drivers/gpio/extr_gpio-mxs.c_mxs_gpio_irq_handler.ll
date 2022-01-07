; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mxs.c_mxs_gpio_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mxs.c_mxs_gpio_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }
%struct.mxs_gpio_port = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @mxs_gpio_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_gpio_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mxs_gpio_port*, align 8
  %5 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %6 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %7 = call %struct.mxs_gpio_port* @irq_desc_get_handler_data(%struct.irq_desc* %6)
  store %struct.mxs_gpio_port* %7, %struct.mxs_gpio_port** %4, align 8
  %8 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %9 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %12, align 8
  %14 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %15 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %14, i32 0, i32 0
  %16 = call i32 %13(%struct.TYPE_4__* %15)
  %17 = load %struct.mxs_gpio_port*, %struct.mxs_gpio_port** %4, align 8
  %18 = getelementptr inbounds %struct.mxs_gpio_port, %struct.mxs_gpio_port* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mxs_gpio_port*, %struct.mxs_gpio_port** %4, align 8
  %21 = call i64 @PINCTRL_IRQSTAT(%struct.mxs_gpio_port* %20)
  %22 = add nsw i64 %19, %21
  %23 = call i32 @readl(i64 %22)
  %24 = load %struct.mxs_gpio_port*, %struct.mxs_gpio_port** %4, align 8
  %25 = getelementptr inbounds %struct.mxs_gpio_port, %struct.mxs_gpio_port* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.mxs_gpio_port*, %struct.mxs_gpio_port** %4, align 8
  %28 = call i64 @PINCTRL_IRQEN(%struct.mxs_gpio_port* %27)
  %29 = add nsw i64 %26, %28
  %30 = call i32 @readl(i64 %29)
  %31 = and i32 %23, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %50, %1
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @fls(i32 %36)
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  %39 = load %struct.mxs_gpio_port*, %struct.mxs_gpio_port** %4, align 8
  %40 = getelementptr inbounds %struct.mxs_gpio_port, %struct.mxs_gpio_port* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = shl i32 1, %42
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load %struct.mxs_gpio_port*, %struct.mxs_gpio_port** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @mxs_flip_edge(%struct.mxs_gpio_port* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %35
  %51 = load %struct.mxs_gpio_port*, %struct.mxs_gpio_port** %4, align 8
  %52 = getelementptr inbounds %struct.mxs_gpio_port, %struct.mxs_gpio_port* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @irq_find_mapping(i32 %53, i32 %54)
  %56 = call i32 @generic_handle_irq(i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = shl i32 1, %57
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %3, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %3, align 4
  br label %32

62:                                               ; preds = %32
  ret void
}

declare dso_local %struct.mxs_gpio_port* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @PINCTRL_IRQSTAT(%struct.mxs_gpio_port*) #1

declare dso_local i64 @PINCTRL_IRQEN(%struct.mxs_gpio_port*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @mxs_flip_edge(%struct.mxs_gpio_port*, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
