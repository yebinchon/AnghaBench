; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v2m.c_gicv2m_irq_gic_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v2m.c_gicv2m_irq_gic_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.irq_fwspec = type { i32, i8**, i32 }
%struct.irq_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.irq_data*, i8*)* }

@IRQ_TYPE_EDGE_RISING = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i8*)* @gicv2m_irq_gic_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gicv2m_irq_gic_domain_alloc(%struct.irq_domain* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.irq_fwspec, align 8
  %9 = alloca %struct.irq_data*, align 8
  %10 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %12 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @is_of_node(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %3
  %19 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %20 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %8, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %8, i32 0, i32 0
  store i32 3, i32* %25, align 8
  %26 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %8, i32 0, i32 1
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  store i8* null, i8** %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr i8, i8* %29, i64 -32
  %31 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %8, i32 0, i32 1
  %32 = load i8**, i8*** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  store i8* %30, i8** %33, align 8
  %34 = load i8*, i8** @IRQ_TYPE_EDGE_RISING, align 8
  %35 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %8, i32 0, i32 1
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 2
  store i8* %34, i8** %37, align 8
  br label %66

38:                                               ; preds = %3
  %39 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %40 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @is_fwnode_irqchip(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %38
  %47 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %48 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %8, i32 0, i32 2
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %8, i32 0, i32 0
  store i32 2, i32* %53, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %8, i32 0, i32 1
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  store i8* %54, i8** %57, align 8
  %58 = load i8*, i8** @IRQ_TYPE_EDGE_RISING, align 8
  %59 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %8, i32 0, i32 1
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  store i8* %58, i8** %61, align 8
  br label %65

62:                                               ; preds = %38
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %88

65:                                               ; preds = %46
  br label %66

66:                                               ; preds = %65, %18
  %67 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* %67, i32 %68, i32 1, %struct.irq_fwspec* %8)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %4, align 4
  br label %88

74:                                               ; preds = %66
  %75 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %76 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.TYPE_4__* %77, i32 %78)
  store %struct.irq_data* %79, %struct.irq_data** %9, align 8
  %80 = load %struct.irq_data*, %struct.irq_data** %9, align 8
  %81 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32 (%struct.irq_data*, i8*)*, i32 (%struct.irq_data*, i8*)** %83, align 8
  %85 = load %struct.irq_data*, %struct.irq_data** %9, align 8
  %86 = load i8*, i8** @IRQ_TYPE_EDGE_RISING, align 8
  %87 = call i32 %84(%struct.irq_data* %85, i8* %86)
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %74, %72, %62
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i64 @is_of_node(i32) #1

declare dso_local i64 @is_fwnode_irqchip(i32) #1

declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain*, i32, i32, %struct.irq_fwspec*) #1

declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
