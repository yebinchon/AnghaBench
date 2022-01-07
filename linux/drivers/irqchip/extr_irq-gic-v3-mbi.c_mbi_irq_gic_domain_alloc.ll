; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-mbi.c_mbi_irq_gic_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-mbi.c_mbi_irq_gic_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.irq_fwspec = type { i32, i64*, i32 }
%struct.irq_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.irq_data*, i64)* }

@EINVAL = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i64)* @mbi_irq_gic_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbi_irq_gic_domain_alloc(%struct.irq_domain* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.irq_fwspec, align 8
  %9 = alloca %struct.irq_data*, align 8
  %10 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %12 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @is_of_node(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %62

21:                                               ; preds = %3
  %22 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %23 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %8, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %8, i32 0, i32 0
  store i32 3, i32* %28, align 8
  %29 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %8, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  store i64 0, i64* %31, align 8
  %32 = load i64, i64* %7, align 8
  %33 = sub nsw i64 %32, 32
  %34 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %8, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  store i64 %33, i64* %36, align 8
  %37 = load i64, i64* @IRQ_TYPE_EDGE_RISING, align 8
  %38 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %8, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 2
  store i64 %37, i64* %40, align 8
  %41 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* %41, i32 %42, i32 1, %struct.irq_fwspec* %8)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %21
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %62

48:                                               ; preds = %21
  %49 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %50 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.TYPE_4__* %51, i32 %52)
  store %struct.irq_data* %53, %struct.irq_data** %9, align 8
  %54 = load %struct.irq_data*, %struct.irq_data** %9, align 8
  %55 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32 (%struct.irq_data*, i64)*, i32 (%struct.irq_data*, i64)** %57, align 8
  %59 = load %struct.irq_data*, %struct.irq_data** %9, align 8
  %60 = load i64, i64* @IRQ_TYPE_EDGE_RISING, align 8
  %61 = call i32 %58(%struct.irq_data* %59, i64 %60)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %48, %46, %18
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @is_of_node(i32) #1

declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain*, i32, i32, %struct.irq_fwspec*) #1

declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
