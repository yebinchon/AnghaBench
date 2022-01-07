; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-rza1.c_rza1_irqc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-rza1.c_rza1_irqc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.rza1_irqc_priv* }
%struct.rza1_irqc_priv = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.irq_fwspec = type { i32*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @rza1_irqc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rza1_irqc_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rza1_irqc_priv*, align 8
  %11 = alloca %struct.irq_fwspec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.irq_fwspec, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %17 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %16, i32 0, i32 0
  %18 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %17, align 8
  store %struct.rza1_irqc_priv* %18, %struct.rza1_irqc_priv** %10, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.irq_fwspec*
  store %struct.irq_fwspec* %20, %struct.irq_fwspec** %11, align 8
  %21 = load %struct.irq_fwspec*, %struct.irq_fwspec** %11, align 8
  %22 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %10, align 8
  %30 = getelementptr inbounds %struct.rza1_irqc_priv, %struct.rza1_irqc_priv* %29, i32 0, i32 2
  %31 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %10, align 8
  %32 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* %26, i32 %27, i32 %28, i32* %30, %struct.rza1_irqc_priv* %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %5, align 4
  br label %85

37:                                               ; preds = %4
  %38 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %10, align 8
  %39 = getelementptr inbounds %struct.rza1_irqc_priv, %struct.rza1_irqc_priv* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %13, i32 0, i32 2
  store i32* %43, i32** %44, align 8
  %45 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %10, align 8
  %46 = getelementptr inbounds %struct.rza1_irqc_priv, %struct.rza1_irqc_priv* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %13, i32 0, i32 1
  store i32 %52, i32* %53, align 8
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %77, %37
  %55 = load i32, i32* %14, align 4
  %56 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %13, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ult i32 %55, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %54
  %60 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %10, align 8
  %61 = getelementptr inbounds %struct.rza1_irqc_priv, %struct.rza1_irqc_priv* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %13, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %71, i32* %76, align 4
  br label %77

77:                                               ; preds = %59
  %78 = load i32, i32* %14, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %14, align 4
  br label %54

80:                                               ; preds = %54
  %81 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* %81, i32 %82, i32 %83, %struct.irq_fwspec* %13)
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %80, %35
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain*, i32, i32, i32*, %struct.rza1_irqc_priv*) #1

declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain*, i32, i32, %struct.irq_fwspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
