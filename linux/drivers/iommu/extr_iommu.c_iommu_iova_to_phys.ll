; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_iova_to_phys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_iova_to_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iommu_iova_to_phys(%struct.iommu_domain* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iommu_domain*, align 8
  %5 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %7 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to i32 (%struct.iommu_domain*, i32)**
  %11 = load i32 (%struct.iommu_domain*, i32)*, i32 (%struct.iommu_domain*, i32)** %10, align 8
  %12 = icmp eq i32 (%struct.iommu_domain*, i32)* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

17:                                               ; preds = %2
  %18 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %19 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.iommu_domain*, i32)**
  %23 = load i32 (%struct.iommu_domain*, i32)*, i32 (%struct.iommu_domain*, i32)** %22, align 8
  %24 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 %23(%struct.iommu_domain* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %17, %16
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
