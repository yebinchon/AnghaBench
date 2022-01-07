; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-uniphier.c_uniphier_gpio_irq_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-uniphier.c_uniphier_gpio_irq_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.TYPE_2__*, %struct.uniphier_gpio_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.uniphier_gpio_priv = type { i32 }
%struct.irq_fwspec = type { i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @uniphier_gpio_irq_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_gpio_irq_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.uniphier_gpio_priv*, align 8
  %11 = alloca %struct.irq_fwspec, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %16 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %15, i32 0, i32 1
  %17 = load %struct.uniphier_gpio_priv*, %struct.uniphier_gpio_priv** %16, align 8
  store %struct.uniphier_gpio_priv* %17, %struct.uniphier_gpio_priv** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 1
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %81

26:                                               ; preds = %4
  %27 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @uniphier_gpio_irq_domain_translate(%struct.irq_domain* %27, i8* %28, i32* %12, i32* %13)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %5, align 4
  br label %81

34:                                               ; preds = %26
  %35 = load %struct.uniphier_gpio_priv*, %struct.uniphier_gpio_priv** %10, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @uniphier_gpio_irq_get_parent_hwirq(%struct.uniphier_gpio_priv* %35, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %5, align 4
  br label %81

42:                                               ; preds = %34
  %43 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %44 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 0
  store i32 2, i32* %49, align 8
  %50 = load i32, i32* %14, align 4
  %51 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  br label %61

59:                                               ; preds = %42
  %60 = load i32, i32* %13, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.uniphier_gpio_priv*, %struct.uniphier_gpio_priv** %10, align 8
  %70 = getelementptr inbounds %struct.uniphier_gpio_priv, %struct.uniphier_gpio_priv* %69, i32 0, i32 0
  %71 = load %struct.uniphier_gpio_priv*, %struct.uniphier_gpio_priv** %10, align 8
  %72 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* %66, i32 %67, i32 %68, i32* %70, %struct.uniphier_gpio_priv* %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %61
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %5, align 4
  br label %81

77:                                               ; preds = %61
  %78 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* %78, i32 %79, i32 1, %struct.irq_fwspec* %11)
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %77, %75, %40, %32, %23
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @uniphier_gpio_irq_domain_translate(%struct.irq_domain*, i8*, i32*, i32*) #1

declare dso_local i32 @uniphier_gpio_irq_get_parent_hwirq(%struct.uniphier_gpio_priv*, i32) #1

declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain*, i32, i32, i32*, %struct.uniphier_gpio_priv*) #1

declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain*, i32, i32, %struct.irq_fwspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
