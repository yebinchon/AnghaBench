; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu-debug.c_omap_iommu_debugfs_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu-debug.c_omap_iommu_debugfs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_iommu = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_iommu_debugfs_remove(%struct.omap_iommu* %0) #0 {
  %2 = alloca %struct.omap_iommu*, align 8
  store %struct.omap_iommu* %0, %struct.omap_iommu** %2, align 8
  %3 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %4 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %13

8:                                                ; preds = %1
  %9 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %10 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @debugfs_remove_recursive(i32 %11)
  br label %13

13:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @debugfs_remove_recursive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
