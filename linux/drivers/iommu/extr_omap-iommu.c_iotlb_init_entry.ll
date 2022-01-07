; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_iotlb_init_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_iotlb_init_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iotlb_entry = type { i32, i64, i32, i32, i32, i8*, i8* }

@MMU_CAM_V = common dso_local global i32 0, align 4
@MMU_RAM_ENDIAN_LITTLE = common dso_local global i32 0, align 4
@MMU_RAM_ELSZ_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.iotlb_entry*, i8*, i8*, i32)* @iotlb_init_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @iotlb_init_entry(%struct.iotlb_entry* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.iotlb_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.iotlb_entry* %0, %struct.iotlb_entry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.iotlb_entry*, %struct.iotlb_entry** %5, align 8
  %10 = call i32 @memset(%struct.iotlb_entry* %9, i32 0, i32 48)
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.iotlb_entry*, %struct.iotlb_entry** %5, align 8
  %13 = getelementptr inbounds %struct.iotlb_entry, %struct.iotlb_entry* %12, i32 0, i32 6
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct.iotlb_entry*, %struct.iotlb_entry** %5, align 8
  %16 = getelementptr inbounds %struct.iotlb_entry, %struct.iotlb_entry* %15, i32 0, i32 5
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* @MMU_CAM_V, align 4
  %18 = load %struct.iotlb_entry*, %struct.iotlb_entry** %5, align 8
  %19 = getelementptr inbounds %struct.iotlb_entry, %struct.iotlb_entry* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.iotlb_entry*, %struct.iotlb_entry** %5, align 8
  %22 = getelementptr inbounds %struct.iotlb_entry, %struct.iotlb_entry* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @MMU_RAM_ENDIAN_LITTLE, align 4
  %24 = load %struct.iotlb_entry*, %struct.iotlb_entry** %5, align 8
  %25 = getelementptr inbounds %struct.iotlb_entry, %struct.iotlb_entry* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @MMU_RAM_ELSZ_8, align 4
  %27 = load %struct.iotlb_entry*, %struct.iotlb_entry** %5, align 8
  %28 = getelementptr inbounds %struct.iotlb_entry, %struct.iotlb_entry* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.iotlb_entry*, %struct.iotlb_entry** %5, align 8
  %30 = getelementptr inbounds %struct.iotlb_entry, %struct.iotlb_entry* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.iotlb_entry*, %struct.iotlb_entry** %5, align 8
  %32 = getelementptr inbounds %struct.iotlb_entry, %struct.iotlb_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @iopgsz_to_bytes(i32 %33)
  ret i8* %34
}

declare dso_local i32 @memset(%struct.iotlb_entry*, i32, i32) #1

declare dso_local i8* @iopgsz_to_bytes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
