; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_get_write_desc_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_get_write_desc_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viommu_dev = type { i64 }
%struct.virtio_iommu_req_head = type { i64 }

@VIRTIO_IOMMU_T_PROBE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.viommu_dev*, %struct.virtio_iommu_req_head*, i64)* @viommu_get_write_desc_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @viommu_get_write_desc_offset(%struct.viommu_dev* %0, %struct.virtio_iommu_req_head* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.viommu_dev*, align 8
  %6 = alloca %struct.virtio_iommu_req_head*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.viommu_dev* %0, %struct.viommu_dev** %5, align 8
  store %struct.virtio_iommu_req_head* %1, %struct.virtio_iommu_req_head** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 4, i64* %8, align 8
  %9 = load %struct.virtio_iommu_req_head*, %struct.virtio_iommu_req_head** %6, align 8
  %10 = getelementptr inbounds %struct.virtio_iommu_req_head, %struct.virtio_iommu_req_head* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VIRTIO_IOMMU_T_PROBE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.viommu_dev*, %struct.viommu_dev** %5, align 8
  %17 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub i64 %15, %18
  %20 = load i64, i64* %8, align 8
  %21 = sub i64 %19, %20
  store i64 %21, i64* %4, align 8
  br label %26

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = sub i64 %23, %24
  store i64 %25, i64* %4, align 8
  br label %26

26:                                               ; preds = %22, %14
  %27 = load i64, i64* %4, align 8
  ret i64 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
