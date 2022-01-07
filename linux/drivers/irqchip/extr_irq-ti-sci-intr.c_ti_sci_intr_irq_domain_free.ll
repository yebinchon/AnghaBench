; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ti-sci-intr.c_ti_sci_intr_irq_domain_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ti-sci-intr.c_ti_sci_intr_irq_domain_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.irq_domain*, %struct.ti_sci_intr_irq_domain* }
%struct.ti_sci_intr_irq_domain = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*, i32, i32, i32, i32)* }
%struct.irq_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_domain*, i32, i32)* @ti_sci_intr_irq_domain_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_sci_intr_irq_domain_free(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ti_sci_intr_irq_domain*, align 8
  %8 = alloca %struct.irq_data*, align 8
  %9 = alloca %struct.irq_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %13 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %12, i32 0, i32 1
  %14 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %13, align 8
  store %struct.ti_sci_intr_irq_domain* %14, %struct.ti_sci_intr_irq_domain** %7, align 8
  %15 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %16 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %15, i32 0, i32 0
  %17 = load %struct.irq_domain*, %struct.irq_domain** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* %17, i32 %18)
  store %struct.irq_data* %19, %struct.irq_data** %9, align 8
  %20 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* %20, i32 %21)
  store %struct.irq_data* %22, %struct.irq_data** %8, align 8
  %23 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %24 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @HWIRQ_TO_IRQID(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %28 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @HWIRQ_TO_DEVID(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %7, align 8
  %32 = getelementptr inbounds %struct.ti_sci_intr_irq_domain, %struct.ti_sci_intr_irq_domain* %31, i32 0, i32 2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_6__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32, i32)** %36, align 8
  %38 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %7, align 8
  %39 = getelementptr inbounds %struct.ti_sci_intr_irq_domain, %struct.ti_sci_intr_irq_domain* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %7, align 8
  %44 = getelementptr inbounds %struct.ti_sci_intr_irq_domain, %struct.ti_sci_intr_irq_domain* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.irq_data*, %struct.irq_data** %9, align 8
  %47 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 %37(%struct.TYPE_6__* %40, i32 %41, i32 %42, i32 %45, i32 %48)
  %50 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %7, align 8
  %51 = getelementptr inbounds %struct.ti_sci_intr_irq_domain, %struct.ti_sci_intr_irq_domain* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.irq_data*, %struct.irq_data** %9, align 8
  %54 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ti_sci_release_resource(i32 %52, i32 %55)
  %57 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @irq_domain_free_irqs_parent(%struct.irq_domain* %57, i32 %58, i32 1)
  %60 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %61 = call i32 @irq_domain_reset_irq_data(%struct.irq_data* %60)
  ret void
}

declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain*, i32) #1

declare dso_local i32 @HWIRQ_TO_IRQID(i32) #1

declare dso_local i32 @HWIRQ_TO_DEVID(i32) #1

declare dso_local i32 @ti_sci_release_resource(i32, i32) #1

declare dso_local i32 @irq_domain_free_irqs_parent(%struct.irq_domain*, i32, i32) #1

declare dso_local i32 @irq_domain_reset_irq_data(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
