; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_modify_irte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_modify_irte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_2_iommu = type { i32, i32, i32, %struct.intel_iommu* }
%struct.intel_iommu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.irte* }
%struct.irte = type { i32, i32, i32 }

@irq_2_ir_lock = common dso_local global i32 0, align 4
@IRQ_POSTING = common dso_local global i32 0, align 4
@IRQ_REMAPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_2_iommu*, %struct.irte*)* @modify_irte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modify_irte(%struct.irq_2_iommu* %0, %struct.irte* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_2_iommu*, align 8
  %5 = alloca %struct.irte*, align 8
  %6 = alloca %struct.intel_iommu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.irte*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.irq_2_iommu* %0, %struct.irq_2_iommu** %4, align 8
  store %struct.irte* %1, %struct.irte** %5, align 8
  %11 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %4, align 8
  %12 = icmp ne %struct.irq_2_iommu* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %68

14:                                               ; preds = %2
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @raw_spin_lock_irqsave(i32* @irq_2_ir_lock, i64 %15)
  %17 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %4, align 8
  %18 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %17, i32 0, i32 3
  %19 = load %struct.intel_iommu*, %struct.intel_iommu** %18, align 8
  store %struct.intel_iommu* %19, %struct.intel_iommu** %6, align 8
  %20 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %4, align 8
  %21 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %4, align 8
  %24 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %28 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.irte*, %struct.irte** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.irte, %struct.irte* %31, i64 %33
  store %struct.irte* %34, %struct.irte** %8, align 8
  %35 = load %struct.irte*, %struct.irte** %8, align 8
  %36 = getelementptr inbounds %struct.irte, %struct.irte* %35, i32 0, i32 2
  %37 = load %struct.irte*, %struct.irte** %5, align 8
  %38 = getelementptr inbounds %struct.irte, %struct.irte* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @set_64bit(i32* %36, i32 %39)
  %41 = load %struct.irte*, %struct.irte** %8, align 8
  %42 = getelementptr inbounds %struct.irte, %struct.irte* %41, i32 0, i32 1
  %43 = load %struct.irte*, %struct.irte** %5, align 8
  %44 = getelementptr inbounds %struct.irte, %struct.irte* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @set_64bit(i32* %42, i32 %45)
  %47 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %48 = load %struct.irte*, %struct.irte** %8, align 8
  %49 = call i32 @__iommu_flush_cache(%struct.intel_iommu* %47, %struct.irte* %48, i32 12)
  %50 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @qi_flush_iec(%struct.intel_iommu* %50, i32 %51, i32 0)
  store i32 %52, i32* %9, align 4
  %53 = load %struct.irte*, %struct.irte** %8, align 8
  %54 = getelementptr inbounds %struct.irte, %struct.irte* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %14
  %58 = load i32, i32* @IRQ_POSTING, align 4
  br label %61

59:                                               ; preds = %14
  %60 = load i32, i32* @IRQ_REMAPPING, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %4, align 8
  %64 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @raw_spin_unlock_irqrestore(i32* @irq_2_ir_lock, i64 %65)
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %61, %13
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_64bit(i32*, i32) #1

declare dso_local i32 @__iommu_flush_cache(%struct.intel_iommu*, %struct.irte*, i32) #1

declare dso_local i32 @qi_flush_iec(%struct.intel_iommu*, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
