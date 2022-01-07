; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_add_resv_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_add_resv_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viommu_endpoint = type { i32, i32 }
%struct.virtio_iommu_probe_resv_mem = type { i32, i32, i32 }
%struct.iommu_resv_region = type { i32 }

@IOMMU_WRITE = common dso_local global i64 0, align 8
@IOMMU_NOEXEC = common dso_local global i64 0, align 8
@IOMMU_MMIO = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unknown resv mem subtype 0x%x\0A\00", align 1
@IOMMU_RESV_RESERVED = common dso_local global i32 0, align 4
@IOMMU_RESV_MSI = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.viommu_endpoint*, %struct.virtio_iommu_probe_resv_mem*, i64)* @viommu_add_resv_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viommu_add_resv_mem(%struct.viommu_endpoint* %0, %struct.virtio_iommu_probe_resv_mem* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.viommu_endpoint*, align 8
  %6 = alloca %struct.virtio_iommu_probe_resv_mem*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iommu_resv_region*, align 8
  %14 = alloca i64, align 8
  store %struct.viommu_endpoint* %0, %struct.viommu_endpoint** %5, align 8
  store %struct.virtio_iommu_probe_resv_mem* %1, %struct.virtio_iommu_probe_resv_mem** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.iommu_resv_region* null, %struct.iommu_resv_region** %13, align 8
  %15 = load i64, i64* @IOMMU_WRITE, align 8
  %16 = load i64, i64* @IOMMU_NOEXEC, align 8
  %17 = or i64 %15, %16
  %18 = load i64, i64* @IOMMU_MMIO, align 8
  %19 = or i64 %17, %18
  store i64 %19, i64* %14, align 8
  %20 = load %struct.virtio_iommu_probe_resv_mem*, %struct.virtio_iommu_probe_resv_mem** %6, align 8
  %21 = getelementptr inbounds %struct.virtio_iommu_probe_resv_mem, %struct.virtio_iommu_probe_resv_mem* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le64_to_cpu(i32 %22)
  store i32 %23, i32* %9, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.virtio_iommu_probe_resv_mem*, %struct.virtio_iommu_probe_resv_mem** %6, align 8
  %25 = getelementptr inbounds %struct.virtio_iommu_probe_resv_mem, %struct.virtio_iommu_probe_resv_mem* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le64_to_cpu(i32 %26)
  store i32 %27, i32* %10, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %28, %29
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %8, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %47, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = icmp ult i64 %41, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40, %36, %3
  %48 = load i32, i32* @EOVERFLOW, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %91

50:                                               ; preds = %40
  %51 = load i64, i64* %7, align 8
  %52 = icmp ult i64 %51, 12
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %91

56:                                               ; preds = %50
  %57 = load %struct.virtio_iommu_probe_resv_mem*, %struct.virtio_iommu_probe_resv_mem** %6, align 8
  %58 = getelementptr inbounds %struct.virtio_iommu_probe_resv_mem, %struct.virtio_iommu_probe_resv_mem* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %60 [
    i32 128, label %68
    i32 129, label %73
  ]

60:                                               ; preds = %56
  %61 = load %struct.viommu_endpoint*, %struct.viommu_endpoint** %5, align 8
  %62 = getelementptr inbounds %struct.viommu_endpoint, %struct.viommu_endpoint* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.virtio_iommu_probe_resv_mem*, %struct.virtio_iommu_probe_resv_mem** %6, align 8
  %65 = getelementptr inbounds %struct.virtio_iommu_probe_resv_mem, %struct.virtio_iommu_probe_resv_mem* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_warn(i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %56, %60
  %69 = load i32, i32* %11, align 4
  %70 = load i64, i64* %8, align 8
  %71 = load i32, i32* @IOMMU_RESV_RESERVED, align 4
  %72 = call %struct.iommu_resv_region* @iommu_alloc_resv_region(i32 %69, i64 %70, i64 0, i32 %71)
  store %struct.iommu_resv_region* %72, %struct.iommu_resv_region** %13, align 8
  br label %79

73:                                               ; preds = %56
  %74 = load i32, i32* %11, align 4
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %14, align 8
  %77 = load i32, i32* @IOMMU_RESV_MSI, align 4
  %78 = call %struct.iommu_resv_region* @iommu_alloc_resv_region(i32 %74, i64 %75, i64 %76, i32 %77)
  store %struct.iommu_resv_region* %78, %struct.iommu_resv_region** %13, align 8
  br label %79

79:                                               ; preds = %73, %68
  %80 = load %struct.iommu_resv_region*, %struct.iommu_resv_region** %13, align 8
  %81 = icmp ne %struct.iommu_resv_region* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %91

85:                                               ; preds = %79
  %86 = load %struct.viommu_endpoint*, %struct.viommu_endpoint** %5, align 8
  %87 = getelementptr inbounds %struct.viommu_endpoint, %struct.viommu_endpoint* %86, i32 0, i32 0
  %88 = load %struct.iommu_resv_region*, %struct.iommu_resv_region** %13, align 8
  %89 = getelementptr inbounds %struct.iommu_resv_region, %struct.iommu_resv_region* %88, i32 0, i32 0
  %90 = call i32 @list_add(i32* %87, i32* %89)
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %85, %82, %53, %47
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local %struct.iommu_resv_region* @iommu_alloc_resv_region(i32, i64, i64, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
