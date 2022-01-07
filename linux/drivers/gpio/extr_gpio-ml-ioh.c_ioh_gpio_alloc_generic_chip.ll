; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ml-ioh.c_ioh_gpio_alloc_generic_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ml-ioh.c_ioh_gpio_alloc_generic_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioh_gpio = type { i32, i32 }
%struct.irq_chip_generic = type { %struct.irq_chip_type*, %struct.ioh_gpio* }
%struct.irq_chip_type = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"ioh_gpio\00", align 1
@handle_simple_irq = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ioh_irq_mask = common dso_local global i32 0, align 4
@ioh_irq_unmask = common dso_local global i32 0, align 4
@ioh_irq_type = common dso_local global i32 0, align 4
@ioh_irq_disable = common dso_local global i32 0, align 4
@ioh_irq_enable = common dso_local global i32 0, align 4
@IRQ_GC_INIT_MASK_CACHE = common dso_local global i32 0, align 4
@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@IRQ_NOPROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioh_gpio*, i32, i32)* @ioh_gpio_alloc_generic_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioh_gpio_alloc_generic_chip(%struct.ioh_gpio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ioh_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.irq_chip_generic*, align 8
  %9 = alloca %struct.irq_chip_type*, align 8
  %10 = alloca i32, align 4
  store %struct.ioh_gpio* %0, %struct.ioh_gpio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ioh_gpio*, %struct.ioh_gpio** %5, align 8
  %12 = getelementptr inbounds %struct.ioh_gpio, %struct.ioh_gpio* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ioh_gpio*, %struct.ioh_gpio** %5, align 8
  %16 = getelementptr inbounds %struct.ioh_gpio, %struct.ioh_gpio* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @handle_simple_irq, align 4
  %19 = call %struct.irq_chip_generic* @devm_irq_alloc_generic_chip(i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1, i32 %14, i32 %17, i32 %18)
  store %struct.irq_chip_generic* %19, %struct.irq_chip_generic** %8, align 8
  %20 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %8, align 8
  %21 = icmp ne %struct.irq_chip_generic* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %64

25:                                               ; preds = %3
  %26 = load %struct.ioh_gpio*, %struct.ioh_gpio** %5, align 8
  %27 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %8, align 8
  %28 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %27, i32 0, i32 1
  store %struct.ioh_gpio* %26, %struct.ioh_gpio** %28, align 8
  %29 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %8, align 8
  %30 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %29, i32 0, i32 0
  %31 = load %struct.irq_chip_type*, %struct.irq_chip_type** %30, align 8
  store %struct.irq_chip_type* %31, %struct.irq_chip_type** %9, align 8
  %32 = load i32, i32* @ioh_irq_mask, align 4
  %33 = load %struct.irq_chip_type*, %struct.irq_chip_type** %9, align 8
  %34 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @ioh_irq_unmask, align 4
  %37 = load %struct.irq_chip_type*, %struct.irq_chip_type** %9, align 8
  %38 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @ioh_irq_type, align 4
  %41 = load %struct.irq_chip_type*, %struct.irq_chip_type** %9, align 8
  %42 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @ioh_irq_disable, align 4
  %45 = load %struct.irq_chip_type*, %struct.irq_chip_type** %9, align 8
  %46 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @ioh_irq_enable, align 4
  %49 = load %struct.irq_chip_type*, %struct.irq_chip_type** %9, align 8
  %50 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.ioh_gpio*, %struct.ioh_gpio** %5, align 8
  %53 = getelementptr inbounds %struct.ioh_gpio, %struct.ioh_gpio* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %8, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @IRQ_MSK(i32 %56)
  %58 = load i32, i32* @IRQ_GC_INIT_MASK_CACHE, align 4
  %59 = load i32, i32* @IRQ_NOREQUEST, align 4
  %60 = load i32, i32* @IRQ_NOPROBE, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @devm_irq_setup_generic_chip(i32 %54, %struct.irq_chip_generic* %55, i32 %57, i32 %58, i32 %61, i32 0)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %25, %22
  %65 = load i32, i32* %4, align 4
  ret i32 %65
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
