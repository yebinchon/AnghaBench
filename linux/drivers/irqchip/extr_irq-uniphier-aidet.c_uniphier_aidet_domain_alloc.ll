; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-uniphier-aidet.c_uniphier_aidet_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-uniphier-aidet.c_uniphier_aidet_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.irq_fwspec = type { i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@UNIPHIER_AIDET_NR_IRQS = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@uniphier_aidet_irq_chip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @uniphier_aidet_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_aidet_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.irq_fwspec, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %77

19:                                               ; preds = %4
  %20 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @uniphier_aidet_domain_translate(%struct.irq_domain* %20, i8* %21, i64* %11, i32* %12)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %5, align 4
  br label %77

27:                                               ; preds = %19
  %28 = load i32, i32* %12, align 4
  switch i32 %28, label %32 [
    i32 130, label %29
    i32 129, label %29
    i32 131, label %30
    i32 128, label %31
  ]

29:                                               ; preds = %27, %27
  br label %35

30:                                               ; preds = %27
  store i32 130, i32* %12, align 4
  br label %35

31:                                               ; preds = %27
  store i32 129, i32* %12, align 4
  br label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %77

35:                                               ; preds = %31, %30, %29
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @UNIPHIER_AIDET_NR_IRQS, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @ENXIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %77

42:                                               ; preds = %35
  %43 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i64, i64* %11, align 8
  %46 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %47 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* %43, i32 %44, i64 %45, i32* @uniphier_aidet_irq_chip, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %5, align 4
  br label %77

54:                                               ; preds = %42
  %55 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %56 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %10, i32 0, i32 2
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %10, i32 0, i32 0
  store i32 3, i32* %61, align 8
  %62 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %10, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 0, i32* %64, align 4
  %65 = load i64, i64* %11, align 8
  %66 = trunc i64 %65 to i32
  %67 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %10, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* %12, align 4
  %71 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %10, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32 %70, i32* %73, align 4
  %74 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* %74, i32 %75, i32 1, %struct.irq_fwspec* %10)
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %54, %52, %39, %32, %25, %16
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @uniphier_aidet_domain_translate(%struct.irq_domain*, i8*, i64*, i32*) #1

declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain*, i32, i64, i32*, i32) #1

declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain*, i32, i32, %struct.irq_fwspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
