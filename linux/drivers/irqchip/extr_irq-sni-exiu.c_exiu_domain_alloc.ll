; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-sni-exiu.c_exiu_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-sni-exiu.c_exiu_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.TYPE_2__*, %struct.exiu_irq_data* }
%struct.TYPE_2__ = type { i32 }
%struct.exiu_irq_data = type { i64 }
%struct.irq_fwspec = type { i32, i64*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GIC_SPI = common dso_local global i64 0, align 8
@exiu_irq_chip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @exiu_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exiu_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.irq_fwspec*, align 8
  %11 = alloca %struct.irq_fwspec, align 8
  %12 = alloca %struct.exiu_irq_data*, align 8
  %13 = alloca i64, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.irq_fwspec*
  store %struct.irq_fwspec* %15, %struct.irq_fwspec** %10, align 8
  %16 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %17 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %16, i32 0, i32 1
  %18 = load %struct.exiu_irq_data*, %struct.exiu_irq_data** %17, align 8
  store %struct.exiu_irq_data* %18, %struct.exiu_irq_data** %12, align 8
  %19 = load %struct.irq_fwspec*, %struct.irq_fwspec** %10, align 8
  %20 = bitcast %struct.irq_fwspec* %11 to i8*
  %21 = bitcast %struct.irq_fwspec* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 24, i1 false)
  %22 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %23 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @is_of_node(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %4
  %30 = load %struct.irq_fwspec*, %struct.irq_fwspec** %10, align 8
  %31 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 3
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %93

37:                                               ; preds = %29
  %38 = load %struct.irq_fwspec*, %struct.irq_fwspec** %10, align 8
  %39 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @GIC_SPI, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %93

48:                                               ; preds = %37
  %49 = load %struct.irq_fwspec*, %struct.irq_fwspec** %10, align 8
  %50 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.exiu_irq_data*, %struct.exiu_irq_data** %12, align 8
  %55 = getelementptr inbounds %struct.exiu_irq_data, %struct.exiu_irq_data* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  store i64 %57, i64* %13, align 8
  br label %73

58:                                               ; preds = %4
  %59 = load %struct.irq_fwspec*, %struct.irq_fwspec** %10, align 8
  %60 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load %struct.exiu_irq_data*, %struct.exiu_irq_data** %12, align 8
  %66 = getelementptr inbounds %struct.exiu_irq_data, %struct.exiu_irq_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = add nsw i64 %68, 32
  %70 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  store i64 %69, i64* %72, align 8
  br label %73

73:                                               ; preds = %58, %48
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 1
  %76 = zext i1 %75 to i32
  %77 = call i32 @WARN_ON(i32 %76)
  %78 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i64, i64* %13, align 8
  %81 = load %struct.exiu_irq_data*, %struct.exiu_irq_data** %12, align 8
  %82 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* %78, i32 %79, i64 %80, i32* @exiu_irq_chip, %struct.exiu_irq_data* %81)
  %83 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %84 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 2
  store i32 %87, i32* %88, align 8
  %89 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* %89, i32 %90, i32 %91, %struct.irq_fwspec* %11)
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %73, %45, %34
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @is_of_node(i32) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain*, i32, i64, i32*, %struct.exiu_irq_data*) #2

declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain*, i32, i32, %struct.irq_fwspec*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
