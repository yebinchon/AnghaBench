; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lpc18xx.c_lpc18xx_gpio_pin_ic_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lpc18xx.c_lpc18xx_gpio_pin_ic_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.TYPE_2__*, %struct.lpc18xx_gpio_pin_ic* }
%struct.TYPE_2__ = type { i32 }
%struct.lpc18xx_gpio_pin_ic = type { i32 }
%struct.irq_fwspec = type { i64*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NR_LPC18XX_GPIO_PIN_IC_IRQS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"failed to allocate parent irq %u: %d\0A\00", align 1
@lpc18xx_gpio_pin_ic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @lpc18xx_gpio_pin_ic_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_gpio_pin_ic_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.irq_fwspec, align 8
  %11 = alloca %struct.irq_fwspec*, align 8
  %12 = alloca %struct.lpc18xx_gpio_pin_ic*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.irq_fwspec*
  store %struct.irq_fwspec* %16, %struct.irq_fwspec** %11, align 8
  %17 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %18 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %17, i32 0, i32 1
  %19 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %18, align 8
  store %struct.lpc18xx_gpio_pin_ic* %19, %struct.lpc18xx_gpio_pin_ic** %12, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %69

25:                                               ; preds = %4
  %26 = load %struct.irq_fwspec*, %struct.irq_fwspec** %11, align 8
  %27 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* @NR_LPC18XX_GPIO_PIN_IC_IRQS, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %69

37:                                               ; preds = %25
  %38 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %39 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %10, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %10, i32 0, i32 1
  store i32 1, i32* %44, align 8
  %45 = load i64, i64* %13, align 8
  %46 = add nsw i64 %45, 32
  %47 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %10, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  store i64 %46, i64* %49, align 8
  %50 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* %50, i32 %51, i32 1, %struct.irq_fwspec* %10)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %37
  %56 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %10, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %59, i32 %60)
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %5, align 4
  br label %69

63:                                               ; preds = %37
  %64 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i64, i64* %13, align 8
  %67 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %12, align 8
  %68 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* %64, i32 %65, i64 %66, i32* @lpc18xx_gpio_pin_ic, %struct.lpc18xx_gpio_pin_ic* %67)
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %63, %55, %34, %22
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain*, i32, i32, %struct.irq_fwspec*) #1

declare dso_local i32 @pr_err(i8*, i64, i32) #1

declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain*, i32, i64, i32*, %struct.lpc18xx_gpio_pin_ic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
