; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mxc.c_mxc_gpio_init_gc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mxc.c_mxc_gpio_init_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxc_gpio_port = type { i32, i32 }
%struct.irq_chip_generic = type { %struct.irq_chip_type*, %struct.mxc_gpio_port* }
%struct.irq_chip_type = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"gpio-mxc\00", align 1
@handle_level_irq = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@irq_gc_ack_set_bit = common dso_local global i32 0, align 4
@irq_gc_mask_clr_bit = common dso_local global i32 0, align 4
@irq_gc_mask_set_bit = common dso_local global i32 0, align 4
@gpio_set_irq_type = common dso_local global i32 0, align 4
@gpio_set_wake_irq = common dso_local global i32 0, align 4
@IRQCHIP_MASK_ON_SUSPEND = common dso_local global i32 0, align 4
@GPIO_ISR = common dso_local global i32 0, align 4
@GPIO_IMR = common dso_local global i32 0, align 4
@IRQ_GC_INIT_NESTED_LOCK = common dso_local global i32 0, align 4
@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxc_gpio_port*, i32)* @mxc_gpio_init_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxc_gpio_init_gc(%struct.mxc_gpio_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mxc_gpio_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_chip_generic*, align 8
  %7 = alloca %struct.irq_chip_type*, align 8
  %8 = alloca i32, align 4
  store %struct.mxc_gpio_port* %0, %struct.mxc_gpio_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %4, align 8
  %10 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %4, align 8
  %14 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @handle_level_irq, align 4
  %17 = call %struct.irq_chip_generic* @devm_irq_alloc_generic_chip(i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1, i32 %12, i32 %15, i32 %16)
  store %struct.irq_chip_generic* %17, %struct.irq_chip_generic** %6, align 8
  %18 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %19 = icmp ne %struct.irq_chip_generic* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %71

23:                                               ; preds = %2
  %24 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %4, align 8
  %25 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %26 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %25, i32 0, i32 1
  store %struct.mxc_gpio_port* %24, %struct.mxc_gpio_port** %26, align 8
  %27 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %28 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %27, i32 0, i32 0
  %29 = load %struct.irq_chip_type*, %struct.irq_chip_type** %28, align 8
  store %struct.irq_chip_type* %29, %struct.irq_chip_type** %7, align 8
  %30 = load i32, i32* @irq_gc_ack_set_bit, align 4
  %31 = load %struct.irq_chip_type*, %struct.irq_chip_type** %7, align 8
  %32 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 5
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @irq_gc_mask_clr_bit, align 4
  %35 = load %struct.irq_chip_type*, %struct.irq_chip_type** %7, align 8
  %36 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @irq_gc_mask_set_bit, align 4
  %39 = load %struct.irq_chip_type*, %struct.irq_chip_type** %7, align 8
  %40 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @gpio_set_irq_type, align 4
  %43 = load %struct.irq_chip_type*, %struct.irq_chip_type** %7, align 8
  %44 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @gpio_set_wake_irq, align 4
  %47 = load %struct.irq_chip_type*, %struct.irq_chip_type** %7, align 8
  %48 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @IRQCHIP_MASK_ON_SUSPEND, align 4
  %51 = load %struct.irq_chip_type*, %struct.irq_chip_type** %7, align 8
  %52 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @GPIO_ISR, align 4
  %55 = load %struct.irq_chip_type*, %struct.irq_chip_type** %7, align 8
  %56 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @GPIO_IMR, align 4
  %59 = load %struct.irq_chip_type*, %struct.irq_chip_type** %7, align 8
  %60 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %4, align 8
  %63 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %66 = call i32 @IRQ_MSK(i32 32)
  %67 = load i32, i32* @IRQ_GC_INIT_NESTED_LOCK, align 4
  %68 = load i32, i32* @IRQ_NOREQUEST, align 4
  %69 = call i32 @devm_irq_setup_generic_chip(i32 %64, %struct.irq_chip_generic* %65, i32 %66, i32 %67, i32 %68, i32 0)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %23, %20
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.irq_chip_generic* @devm_irq_alloc_generic_chip(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @devm_irq_setup_generic_chip(i32, %struct.irq_chip_generic*, i32, i32, i32, i32) #1

declare dso_local i32 @IRQ_MSK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
