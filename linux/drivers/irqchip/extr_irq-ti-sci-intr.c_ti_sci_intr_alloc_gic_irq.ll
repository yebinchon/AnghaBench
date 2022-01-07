; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ti-sci-intr.c_ti_sci_intr_alloc_gic_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ti-sci-intr.c_ti_sci_intr_alloc_gic_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.TYPE_5__*, %struct.ti_sci_intr_irq_domain* }
%struct.TYPE_5__ = type { i32 }
%struct.ti_sci_intr_irq_domain = type { i32, i32, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_8__*, i64, i64, i32, i64)* }
%struct.irq_fwspec = type { i32, i64*, i32 }

@TI_SCI_RESOURCE_NULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32)* @ti_sci_intr_alloc_gic_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_intr_alloc_gic_irq(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ti_sci_intr_irq_domain*, align 8
  %9 = alloca %struct.irq_fwspec, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %15 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %14, i32 0, i32 1
  %16 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %15, align 8
  store %struct.ti_sci_intr_irq_domain* %16, %struct.ti_sci_intr_irq_domain** %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @HWIRQ_TO_DEVID(i32 %17)
  store i64 %18, i64* %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @HWIRQ_TO_IRQID(i32 %19)
  store i64 %20, i64* %11, align 8
  %21 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %8, align 8
  %22 = getelementptr inbounds %struct.ti_sci_intr_irq_domain, %struct.ti_sci_intr_irq_domain* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @ti_sci_get_free_resource(i32 %23)
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @TI_SCI_RESOURCE_NULL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %92

31:                                               ; preds = %3
  %32 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %33 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %9, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %9, i32 0, i32 0
  store i32 3, i32* %38, align 8
  %39 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %9, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* %12, align 8
  %43 = sub nsw i64 %42, 32
  %44 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %9, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  store i64 %43, i64* %46, align 8
  %47 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %8, align 8
  %48 = getelementptr inbounds %struct.ti_sci_intr_irq_domain, %struct.ti_sci_intr_irq_domain* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %9, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 2
  store i64 %49, i64* %52, align 8
  %53 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* %53, i32 %54, i32 1, %struct.irq_fwspec* %9)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %31
  br label %85

59:                                               ; preds = %31
  %60 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %8, align 8
  %61 = getelementptr inbounds %struct.ti_sci_intr_irq_domain, %struct.ti_sci_intr_irq_domain* %60, i32 0, i32 2
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_8__*, i64, i64, i32, i64)*, i32 (%struct.TYPE_8__*, i64, i64, i32, i64)** %65, align 8
  %67 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %8, align 8
  %68 = getelementptr inbounds %struct.ti_sci_intr_irq_domain, %struct.ti_sci_intr_irq_domain* %67, i32 0, i32 2
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %8, align 8
  %73 = getelementptr inbounds %struct.ti_sci_intr_irq_domain, %struct.ti_sci_intr_irq_domain* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* %12, align 8
  %76 = call i32 %66(%struct.TYPE_8__* %69, i64 %70, i64 %71, i32 %74, i64 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %59
  br label %81

80:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %92

81:                                               ; preds = %79
  %82 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @irq_domain_free_irqs_parent(%struct.irq_domain* %82, i32 %83, i32 1)
  br label %85

85:                                               ; preds = %81, %58
  %86 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %8, align 8
  %87 = getelementptr inbounds %struct.ti_sci_intr_irq_domain, %struct.ti_sci_intr_irq_domain* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* %12, align 8
  %90 = call i32 @ti_sci_release_resource(i32 %88, i64 %89)
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %85, %80, %28
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @HWIRQ_TO_DEVID(i32) #1

declare dso_local i64 @HWIRQ_TO_IRQID(i32) #1

declare dso_local i64 @ti_sci_get_free_resource(i32) #1

declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain*, i32, i32, %struct.irq_fwspec*) #1

declare dso_local i32 @irq_domain_free_irqs_parent(%struct.irq_domain*, i32, i32) #1

declare dso_local i32 @ti_sci_release_resource(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
