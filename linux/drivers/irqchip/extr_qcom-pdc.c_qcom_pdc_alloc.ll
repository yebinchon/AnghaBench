; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_qcom-pdc.c_qcom_pdc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_qcom-pdc.c_qcom_pdc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.irq_fwspec = type { i32, i64*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@qcom_pdc_gic_chip = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_MASK = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @qcom_pdc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_pdc_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.irq_fwspec*, align 8
  %11 = alloca %struct.irq_fwspec, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.irq_fwspec*
  store %struct.irq_fwspec* %17, %struct.irq_fwspec** %10, align 8
  %18 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %19 = load %struct.irq_fwspec*, %struct.irq_fwspec** %10, align 8
  %20 = call i32 @qcom_pdc_translate(%struct.irq_domain* %18, %struct.irq_fwspec* %19, i64* %12, i32* %14)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %81

26:                                               ; preds = %4
  %27 = load i64, i64* %12, align 8
  %28 = call i64 @get_parent_hwirq(i64 %27)
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %13, align 8
  %30 = icmp eq i64 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %81

34:                                               ; preds = %26
  %35 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* %35, i32 %36, i64 %37, i32* @qcom_pdc_gic_chip, i32* null)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %5, align 4
  br label %81

43:                                               ; preds = %34
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  store i32 %49, i32* %14, align 4
  br label %50

50:                                               ; preds = %48, %43
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @IRQ_TYPE_LEVEL_MASK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %55, %50
  %58 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %59 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 2
  store i32 %62, i32* %63, align 8
  %64 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 0
  store i32 3, i32* %64, align 8
  %65 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  store i64 0, i64* %67, align 8
  %68 = load i64, i64* %13, align 8
  %69 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 1
  store i64 %68, i64* %71, align 8
  %72 = load i32, i32* %14, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 2
  store i64 %73, i64* %76, align 8
  %77 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* %77, i32 %78, i32 %79, %struct.irq_fwspec* %11)
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %57, %41, %31, %23
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @qcom_pdc_translate(%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*) #1

declare dso_local i64 @get_parent_hwirq(i64) #1

declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain*, i32, i64, i32*, i32*) #1

declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain*, i32, i32, %struct.irq_fwspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
