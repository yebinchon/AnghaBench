; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_omap_iommu_domain_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_omap_iommu_domain_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.omap_iommu_domain = type { i32, %struct.omap_iommu_device*, i32 }
%struct.omap_iommu_device = type { %struct.omap_iommu* }
%struct.omap_iommu = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_iommu_domain_activate(%struct.iommu_domain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iommu_domain*, align 8
  %4 = alloca %struct.omap_iommu_domain*, align 8
  %5 = alloca %struct.omap_iommu_device*, align 8
  %6 = alloca %struct.omap_iommu*, align 8
  %7 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %3, align 8
  %8 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %9 = call %struct.omap_iommu_domain* @to_omap_domain(%struct.iommu_domain* %8)
  store %struct.omap_iommu_domain* %9, %struct.omap_iommu_domain** %4, align 8
  %10 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %4, align 8
  %11 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

15:                                               ; preds = %1
  %16 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %4, align 8
  %17 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %16, i32 0, i32 1
  %18 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %17, align 8
  store %struct.omap_iommu_device* %18, %struct.omap_iommu_device** %5, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %33, %15
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %4, align 8
  %22 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %5, align 8
  %27 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %26, i32 0, i32 0
  %28 = load %struct.omap_iommu*, %struct.omap_iommu** %27, align 8
  store %struct.omap_iommu* %28, %struct.omap_iommu** %6, align 8
  %29 = load %struct.omap_iommu*, %struct.omap_iommu** %6, align 8
  %30 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pm_runtime_get_sync(i32 %31)
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  %36 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %5, align 8
  %37 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %36, i32 1
  store %struct.omap_iommu_device* %37, %struct.omap_iommu_device** %5, align 8
  br label %19

38:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %14
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.omap_iommu_domain* @to_omap_domain(%struct.iommu_domain*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
