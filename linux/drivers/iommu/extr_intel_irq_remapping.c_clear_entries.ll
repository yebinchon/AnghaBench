; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_clear_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_clear_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_2_iommu = type { i32, i32, %struct.intel_iommu*, i64 }
%struct.intel_iommu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.irte* }
%struct.irte = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_2_iommu*)* @clear_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_entries(%struct.irq_2_iommu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_2_iommu*, align 8
  %4 = alloca %struct.irte*, align 8
  %5 = alloca %struct.irte*, align 8
  %6 = alloca %struct.irte*, align 8
  %7 = alloca %struct.intel_iommu*, align 8
  %8 = alloca i32, align 4
  store %struct.irq_2_iommu* %0, %struct.irq_2_iommu** %3, align 8
  %9 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %3, align 8
  %10 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

14:                                               ; preds = %1
  %15 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %3, align 8
  %16 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %15, i32 0, i32 2
  %17 = load %struct.intel_iommu*, %struct.intel_iommu** %16, align 8
  store %struct.intel_iommu* %17, %struct.intel_iommu** %7, align 8
  %18 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %3, align 8
  %19 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %22 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.irte*, %struct.irte** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.irte, %struct.irte* %25, i64 %27
  store %struct.irte* %28, %struct.irte** %4, align 8
  %29 = load %struct.irte*, %struct.irte** %4, align 8
  %30 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %3, align 8
  %31 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 1, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.irte, %struct.irte* %29, i64 %34
  store %struct.irte* %35, %struct.irte** %6, align 8
  %36 = load %struct.irte*, %struct.irte** %4, align 8
  store %struct.irte* %36, %struct.irte** %5, align 8
  br label %37

37:                                               ; preds = %48, %14
  %38 = load %struct.irte*, %struct.irte** %5, align 8
  %39 = load %struct.irte*, %struct.irte** %6, align 8
  %40 = icmp ult %struct.irte* %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load %struct.irte*, %struct.irte** %5, align 8
  %43 = getelementptr inbounds %struct.irte, %struct.irte* %42, i32 0, i32 1
  %44 = call i32 @set_64bit(i32* %43, i32 0)
  %45 = load %struct.irte*, %struct.irte** %5, align 8
  %46 = getelementptr inbounds %struct.irte, %struct.irte* %45, i32 0, i32 0
  %47 = call i32 @set_64bit(i32* %46, i32 0)
  br label %48

48:                                               ; preds = %41
  %49 = load %struct.irte*, %struct.irte** %5, align 8
  %50 = getelementptr inbounds %struct.irte, %struct.irte* %49, i32 1
  store %struct.irte* %50, %struct.irte** %5, align 8
  br label %37

51:                                               ; preds = %37
  %52 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %53 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %3, align 8
  %59 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @bitmap_release_region(i32 %56, i32 %57, i32 %60)
  %62 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %3, align 8
  %65 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @qi_flush_iec(%struct.intel_iommu* %62, i32 %63, i32 %66)
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %51, %13
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @set_64bit(i32*, i32) #1

declare dso_local i32 @bitmap_release_region(i32, i32, i32) #1

declare dso_local i32 @qi_flush_iec(%struct.intel_iommu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
