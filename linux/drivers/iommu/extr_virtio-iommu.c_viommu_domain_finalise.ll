; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_domain_finalise.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_domain_finalise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viommu_dev = type { i32, i32, i32, i32, i32, i32 }
%struct.iommu_domain = type { i32, i32 }
%struct.viommu_domain = type { i32, i32, %struct.viommu_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.viommu_dev*, %struct.iommu_domain*)* @viommu_domain_finalise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viommu_domain_finalise(%struct.viommu_dev* %0, %struct.iommu_domain* %1) #0 {
  %3 = alloca %struct.viommu_dev*, align 8
  %4 = alloca %struct.iommu_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.viommu_domain*, align 8
  store %struct.viommu_dev* %0, %struct.viommu_dev** %3, align 8
  store %struct.iommu_domain* %1, %struct.iommu_domain** %4, align 8
  %7 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %8 = call %struct.viommu_domain* @to_viommu_domain(%struct.iommu_domain* %7)
  store %struct.viommu_domain* %8, %struct.viommu_domain** %6, align 8
  %9 = load %struct.viommu_dev*, %struct.viommu_dev** %3, align 8
  %10 = load %struct.viommu_domain*, %struct.viommu_domain** %6, align 8
  %11 = getelementptr inbounds %struct.viommu_domain, %struct.viommu_domain* %10, i32 0, i32 2
  store %struct.viommu_dev* %9, %struct.viommu_dev** %11, align 8
  %12 = load %struct.viommu_dev*, %struct.viommu_dev** %3, align 8
  %13 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.viommu_domain*, %struct.viommu_domain** %6, align 8
  %16 = getelementptr inbounds %struct.viommu_domain, %struct.viommu_domain* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.viommu_dev*, %struct.viommu_dev** %3, align 8
  %18 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %21 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.viommu_dev*, %struct.viommu_dev** %3, align 8
  %23 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %26 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.viommu_dev*, %struct.viommu_dev** %3, align 8
  %28 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %27, i32 0, i32 2
  %29 = load %struct.viommu_dev*, %struct.viommu_dev** %3, align 8
  %30 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.viommu_dev*, %struct.viommu_dev** %3, align 8
  %33 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32 @ida_alloc_range(i32* %28, i32 %31, i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %2
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.viommu_domain*, %struct.viommu_domain** %6, align 8
  %42 = getelementptr inbounds %struct.viommu_domain, %struct.viommu_domain* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %2
  %44 = load i32, i32* %5, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %46
  %50 = phi i32 [ 0, %46 ], [ %48, %47 ]
  ret i32 %50
}

declare dso_local %struct.viommu_domain* @to_viommu_domain(%struct.iommu_domain*) #1

declare dso_local i32 @ida_alloc_range(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
