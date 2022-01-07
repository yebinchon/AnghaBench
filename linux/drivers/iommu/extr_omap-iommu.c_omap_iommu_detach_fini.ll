; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_omap_iommu_detach_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_omap_iommu_detach_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_iommu_domain = type { i32, %struct.omap_iommu_device* }
%struct.omap_iommu_device = type { %struct.omap_iommu_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_iommu_domain*)* @omap_iommu_detach_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_iommu_detach_fini(%struct.omap_iommu_domain* %0) #0 {
  %2 = alloca %struct.omap_iommu_domain*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_iommu_device*, align 8
  store %struct.omap_iommu_domain* %0, %struct.omap_iommu_domain** %2, align 8
  %5 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %2, align 8
  %6 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %5, i32 0, i32 1
  %7 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %6, align 8
  store %struct.omap_iommu_device* %7, %struct.omap_iommu_device** %4, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %24, %1
  %9 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %4, align 8
  %10 = icmp ne %struct.omap_iommu_device* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %2, align 8
  %14 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi i1 [ false, %8 ], [ %16, %11 ]
  br i1 %18, label %19, label %29

19:                                               ; preds = %17
  %20 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %4, align 8
  %21 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %20, i32 0, i32 0
  %22 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %21, align 8
  %23 = call i32 @kfree(%struct.omap_iommu_device* %22)
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  %27 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %4, align 8
  %28 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %27, i32 1
  store %struct.omap_iommu_device* %28, %struct.omap_iommu_device** %4, align 8
  br label %8

29:                                               ; preds = %17
  %30 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %2, align 8
  %31 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %30, i32 0, i32 1
  %32 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %31, align 8
  %33 = call i32 @kfree(%struct.omap_iommu_device* %32)
  %34 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %2, align 8
  %35 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %2, align 8
  %37 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %36, i32 0, i32 1
  store %struct.omap_iommu_device* null, %struct.omap_iommu_device** %37, align 8
  ret void
}

declare dso_local i32 @kfree(%struct.omap_iommu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
