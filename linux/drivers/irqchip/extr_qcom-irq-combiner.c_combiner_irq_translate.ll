; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_qcom-irq-combiner.c_combiner_irq_translate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_qcom-irq-combiner.c_combiner_irq_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.combiner* }
%struct.combiner = type { i32 }
%struct.irq_fwspec = type { i32, i32*, i32 }

@IORESOURCE_IRQ_LOWEDGE = common dso_local global i32 0, align 4
@IORESOURCE_IRQ_HIGHEDGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* @combiner_irq_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @combiner_irq_translate(%struct.irq_domain* %0, %struct.irq_fwspec* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca %struct.irq_fwspec*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.combiner*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store %struct.irq_fwspec* %1, %struct.irq_fwspec** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %12 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %11, i32 0, i32 0
  %13 = load %struct.combiner*, %struct.combiner** %12, align 8
  store %struct.combiner* %13, %struct.combiner** %10, align 8
  %14 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %15 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @is_acpi_node(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %74

19:                                               ; preds = %4
  %20 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %21 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 2
  br i1 %23, label %52, label %24

24:                                               ; preds = %19
  %25 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %26 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.combiner*, %struct.combiner** %10, align 8
  %31 = getelementptr inbounds %struct.combiner, %struct.combiner* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %29, %32
  br i1 %33, label %52, label %34

34:                                               ; preds = %24
  %35 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %36 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IORESOURCE_IRQ_LOWEDGE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %34
  %44 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %45 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IORESOURCE_IRQ_HIGHEDGE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %43, %34, %24, %19
  %53 = phi i1 [ true, %34 ], [ true, %24 ], [ true, %19 ], [ %51, %43 ]
  %54 = zext i1 %53 to i32
  %55 = call i64 @WARN_ON(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %77

60:                                               ; preds = %52
  %61 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %62 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64*, i64** %8, align 8
  store i64 %66, i64* %67, align 8
  %68 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %69 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  store i32 0, i32* %5, align 4
  br label %77

74:                                               ; preds = %4
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %60, %57
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i64 @is_acpi_node(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
