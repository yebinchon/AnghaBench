; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_get_iopte_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_get_iopte_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iotlb_entry = type { i32, i32, i32, i64 }

@MMU_CAM_PGSZ_4K = common dso_local global i64 0, align 8
@MMU_CAM_PGSZ_64K = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iotlb_entry*)* @get_iopte_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_iopte_attr(%struct.iotlb_entry* %0) #0 {
  %2 = alloca %struct.iotlb_entry*, align 8
  %3 = alloca i32, align 4
  store %struct.iotlb_entry* %0, %struct.iotlb_entry** %2, align 8
  %4 = load %struct.iotlb_entry*, %struct.iotlb_entry** %2, align 8
  %5 = getelementptr inbounds %struct.iotlb_entry, %struct.iotlb_entry* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = shl i32 %6, 5
  store i32 %7, i32* %3, align 4
  %8 = load %struct.iotlb_entry*, %struct.iotlb_entry** %2, align 8
  %9 = getelementptr inbounds %struct.iotlb_entry, %struct.iotlb_entry* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load %struct.iotlb_entry*, %struct.iotlb_entry** %2, align 8
  %14 = getelementptr inbounds %struct.iotlb_entry, %struct.iotlb_entry* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = ashr i32 %15, 3
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.iotlb_entry*, %struct.iotlb_entry** %2, align 8
  %20 = getelementptr inbounds %struct.iotlb_entry, %struct.iotlb_entry* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MMU_CAM_PGSZ_4K, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load %struct.iotlb_entry*, %struct.iotlb_entry** %2, align 8
  %26 = getelementptr inbounds %struct.iotlb_entry, %struct.iotlb_entry* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MMU_CAM_PGSZ_64K, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %24, %1
  %31 = phi i1 [ true, %1 ], [ %29, %24 ]
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 0, i32 6
  %34 = load i32, i32* %3, align 4
  %35 = shl i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
