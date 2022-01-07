; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_domain_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_domain_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.viommu_domain = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_domain*)* @viommu_domain_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @viommu_domain_free(%struct.iommu_domain* %0) #0 {
  %2 = alloca %struct.iommu_domain*, align 8
  %3 = alloca %struct.viommu_domain*, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %2, align 8
  %4 = load %struct.iommu_domain*, %struct.iommu_domain** %2, align 8
  %5 = call %struct.viommu_domain* @to_viommu_domain(%struct.iommu_domain* %4)
  store %struct.viommu_domain* %5, %struct.viommu_domain** %3, align 8
  %6 = load %struct.iommu_domain*, %struct.iommu_domain** %2, align 8
  %7 = call i32 @iommu_put_dma_cookie(%struct.iommu_domain* %6)
  %8 = load %struct.viommu_domain*, %struct.viommu_domain** %3, align 8
  %9 = call i32 @viommu_del_mappings(%struct.viommu_domain* %8, i32 0, i32 0)
  %10 = load %struct.viommu_domain*, %struct.viommu_domain** %3, align 8
  %11 = getelementptr inbounds %struct.viommu_domain, %struct.viommu_domain* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.viommu_domain*, %struct.viommu_domain** %3, align 8
  %16 = getelementptr inbounds %struct.viommu_domain, %struct.viommu_domain* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.viommu_domain*, %struct.viommu_domain** %3, align 8
  %20 = getelementptr inbounds %struct.viommu_domain, %struct.viommu_domain* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ida_free(i32* %18, i32 %21)
  br label %23

23:                                               ; preds = %14, %1
  %24 = load %struct.viommu_domain*, %struct.viommu_domain** %3, align 8
  %25 = call i32 @kfree(%struct.viommu_domain* %24)
  ret void
}

declare dso_local %struct.viommu_domain* @to_viommu_domain(%struct.iommu_domain*) #1

declare dso_local i32 @iommu_put_dma_cookie(%struct.iommu_domain*) #1

declare dso_local i32 @viommu_del_mappings(%struct.viommu_domain*, i32, i32) #1

declare dso_local i32 @ida_free(i32*, i32) #1

declare dso_local i32 @kfree(%struct.viommu_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
