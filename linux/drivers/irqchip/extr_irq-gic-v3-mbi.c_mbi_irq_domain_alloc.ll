; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-mbi.c_mbi_irq_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-mbi.c_mbi_irq_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbi_range = type { i32, i32, i32 }
%struct.irq_domain = type { i32 }
%struct.TYPE_2__ = type { i32 }

@mbi_lock = common dso_local global i32 0, align 4
@mbi_range_nr = common dso_local global i32 0, align 4
@mbi_ranges = common dso_local global %struct.mbi_range* null, align 8
@ENOSPC = common dso_local global i32 0, align 4
@mbi_phys_base = common dso_local global i64 0, align 8
@GICD_SETSPI_NSR = common dso_local global i64 0, align 8
@mbi_irq_chip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @mbi_irq_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbi_irq_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca %struct.mbi_range*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %10, align 8
  store %struct.mbi_range* null, %struct.mbi_range** %11, align 8
  store i32 0, i32* %15, align 4
  %18 = call i32 @mutex_lock(i32* @mbi_lock)
  store i32 0, i32* %14, align 4
  br label %19

19:                                               ; preds = %47, %4
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* @mbi_range_nr, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %19
  %24 = load %struct.mbi_range*, %struct.mbi_range** @mbi_ranges, align 8
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mbi_range, %struct.mbi_range* %24, i64 %26
  %28 = getelementptr inbounds %struct.mbi_range, %struct.mbi_range* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mbi_range*, %struct.mbi_range** @mbi_ranges, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.mbi_range, %struct.mbi_range* %30, i64 %32
  %34 = getelementptr inbounds %struct.mbi_range, %struct.mbi_range* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @get_count_order(i32 %36)
  %38 = call i32 @bitmap_find_free_region(i32 %29, i32 %35, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %23
  %42 = load %struct.mbi_range*, %struct.mbi_range** @mbi_ranges, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.mbi_range, %struct.mbi_range* %42, i64 %44
  store %struct.mbi_range* %45, %struct.mbi_range** %11, align 8
  br label %50

46:                                               ; preds = %23
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %14, align 4
  br label %19

50:                                               ; preds = %41, %19
  %51 = call i32 @mutex_unlock(i32* @mbi_lock)
  %52 = load %struct.mbi_range*, %struct.mbi_range** %11, align 8
  %53 = icmp ne %struct.mbi_range* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @ENOSPC, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %115

57:                                               ; preds = %50
  %58 = load %struct.mbi_range*, %struct.mbi_range** %11, align 8
  %59 = getelementptr inbounds %struct.mbi_range, %struct.mbi_range* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %12, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* @mbi_phys_base, align 8
  %67 = load i64, i64* @GICD_SETSPI_NSR, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @iommu_dma_prepare_msi(i32 %65, i64 %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %57
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %5, align 4
  br label %115

74:                                               ; preds = %57
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %101, %74
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %75
  %80 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %14, align 4
  %83 = add i32 %81, %82
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %84, %85
  %87 = call i32 @mbi_irq_gic_domain_alloc(%struct.irq_domain* %80, i32 %83, i32 %86)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %105

91:                                               ; preds = %79
  %92 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %14, align 4
  %95 = add i32 %93, %94
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %96, %97
  %99 = load %struct.mbi_range*, %struct.mbi_range** %11, align 8
  %100 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* %92, i32 %95, i32 %98, i32* @mbi_irq_chip, %struct.mbi_range* %99)
  br label %101

101:                                              ; preds = %91
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %14, align 4
  br label %75

104:                                              ; preds = %75
  store i32 0, i32* %5, align 4
  br label %115

105:                                              ; preds = %90
  %106 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @irq_domain_free_irqs_parent(%struct.irq_domain* %106, i32 %107, i32 %108)
  %110 = load %struct.mbi_range*, %struct.mbi_range** %11, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @mbi_free_msi(%struct.mbi_range* %110, i32 %111, i32 %112)
  %114 = load i32, i32* %15, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %105, %104, %72, %54
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bitmap_find_free_region(i32, i32, i32) #1

declare dso_local i32 @get_count_order(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iommu_dma_prepare_msi(i32, i64) #1

declare dso_local i32 @mbi_irq_gic_domain_alloc(%struct.irq_domain*, i32, i32) #1

declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain*, i32, i32, i32*, %struct.mbi_range*) #1

declare dso_local i32 @irq_domain_free_irqs_parent(%struct.irq_domain*, i32, i32) #1

declare dso_local i32 @mbi_free_msi(%struct.mbi_range*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
