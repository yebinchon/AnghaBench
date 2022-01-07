; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_fault_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_fault_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viommu_dev = type { i32 }
%struct.virtio_iommu_fault = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"page\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@VIRTIO_IOMMU_FAULT_F_ADDRESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"%s fault from EP %u at %#llx [%s%s%s]\0A\00", align 1
@VIRTIO_IOMMU_FAULT_F_READ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VIRTIO_IOMMU_FAULT_F_WRITE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@VIRTIO_IOMMU_FAULT_F_EXEC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"%s fault from EP %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.viommu_dev*, %struct.virtio_iommu_fault*)* @viommu_fault_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viommu_fault_handler(%struct.viommu_dev* %0, %struct.virtio_iommu_fault* %1) #0 {
  %3 = alloca %struct.viommu_dev*, align 8
  %4 = alloca %struct.virtio_iommu_fault*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.viommu_dev* %0, %struct.viommu_dev** %3, align 8
  store %struct.virtio_iommu_fault* %1, %struct.virtio_iommu_fault** %4, align 8
  %10 = load %struct.virtio_iommu_fault*, %struct.virtio_iommu_fault** %4, align 8
  %11 = getelementptr inbounds %struct.virtio_iommu_fault, %struct.virtio_iommu_fault* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.virtio_iommu_fault*, %struct.virtio_iommu_fault** %4, align 8
  %14 = getelementptr inbounds %struct.virtio_iommu_fault, %struct.virtio_iommu_fault* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.virtio_iommu_fault*, %struct.virtio_iommu_fault** %4, align 8
  %18 = getelementptr inbounds %struct.virtio_iommu_fault, %struct.virtio_iommu_fault* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.virtio_iommu_fault*, %struct.virtio_iommu_fault** %4, align 8
  %22 = getelementptr inbounds %struct.virtio_iommu_fault, %struct.virtio_iommu_fault* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le64_to_cpu(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %29 [
    i32 130, label %26
    i32 129, label %27
    i32 128, label %28
  ]

26:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %30

27:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %30

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %2, %28
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %30

30:                                               ; preds = %29, %27, %26
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @VIRTIO_IOMMU_FAULT_F_ADDRESS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = load %struct.viommu_dev*, %struct.viommu_dev** %3, align 8
  %37 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @VIRTIO_IOMMU_FAULT_F_READ, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @VIRTIO_IOMMU_FAULT_F_WRITE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @VIRTIO_IOMMU_FAULT_F_EXEC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %60 = call i32 (i32, i8*, i8*, i32, ...) @dev_err_ratelimited(i32 %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %39, i32 %40, i32 %41, i8* %47, i8* %53, i8* %59)
  br label %68

61:                                               ; preds = %30
  %62 = load %struct.viommu_dev*, %struct.viommu_dev** %3, align 8
  %63 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (i32, i8*, i8*, i32, ...) @dev_err_ratelimited(i32 %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %65, i32 %66)
  br label %68

68:                                               ; preds = %61, %35
  ret i32 0
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
