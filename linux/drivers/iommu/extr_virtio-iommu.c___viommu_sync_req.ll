; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c___viommu_sync_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c___viommu_sync_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viommu_dev = type { i32, i32, %struct.virtqueue** }
%struct.virtqueue = type { i32 }
%struct.viommu_request = type { i64, i64, i64, i32, i64 }

@VIOMMU_REQUEST_VQ = common dso_local global i64 0, align 8
@VIRTIO_IOMMU_S_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.viommu_dev*)* @__viommu_sync_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__viommu_sync_req(%struct.viommu_dev* %0) #0 {
  %2 = alloca %struct.viommu_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.viommu_request*, align 8
  %7 = alloca %struct.virtqueue*, align 8
  store %struct.viommu_dev* %0, %struct.viommu_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.viommu_dev*, %struct.viommu_dev** %2, align 8
  %9 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %8, i32 0, i32 2
  %10 = load %struct.virtqueue**, %struct.virtqueue*** %9, align 8
  %11 = load i64, i64* @VIOMMU_REQUEST_VQ, align 8
  %12 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %10, i64 %11
  %13 = load %struct.virtqueue*, %struct.virtqueue** %12, align 8
  store %struct.virtqueue* %13, %struct.virtqueue** %7, align 8
  %14 = load %struct.viommu_dev*, %struct.viommu_dev** %2, align 8
  %15 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %14, i32 0, i32 1
  %16 = call i32 @assert_spin_locked(i32* %15)
  %17 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %18 = call i32 @virtqueue_kick(%struct.virtqueue* %17)
  br label %19

19:                                               ; preds = %73, %30, %1
  %20 = load %struct.viommu_dev*, %struct.viommu_dev** %2, align 8
  %21 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %20, i32 0, i32 0
  %22 = call i32 @list_empty(i32* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %79

25:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  %26 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %27 = call %struct.viommu_request* @virtqueue_get_buf(%struct.virtqueue* %26, i32* %4)
  store %struct.viommu_request* %27, %struct.viommu_request** %6, align 8
  %28 = load %struct.viommu_request*, %struct.viommu_request** %6, align 8
  %29 = icmp ne %struct.viommu_request* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %19

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %31
  %35 = load %struct.viommu_request*, %struct.viommu_request** %6, align 8
  %36 = getelementptr inbounds %struct.viommu_request, %struct.viommu_request* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.viommu_request*, %struct.viommu_request** %6, align 8
  %39 = getelementptr inbounds %struct.viommu_request, %struct.viommu_request* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @VIRTIO_IOMMU_S_IOERR, align 4
  %42 = call i32 @viommu_set_req_status(i64 %37, i64 %40, i32 %41)
  br label %43

43:                                               ; preds = %34, %31
  %44 = load %struct.viommu_request*, %struct.viommu_request** %6, align 8
  %45 = getelementptr inbounds %struct.viommu_request, %struct.viommu_request* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.viommu_request*, %struct.viommu_request** %6, align 8
  %48 = getelementptr inbounds %struct.viommu_request, %struct.viommu_request* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %46, %49
  store i64 %50, i64* %5, align 8
  %51 = load %struct.viommu_request*, %struct.viommu_request** %6, align 8
  %52 = getelementptr inbounds %struct.viommu_request, %struct.viommu_request* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %43
  %56 = load i32, i32* %4, align 4
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %5, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %55
  %61 = load %struct.viommu_request*, %struct.viommu_request** %6, align 8
  %62 = getelementptr inbounds %struct.viommu_request, %struct.viommu_request* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.viommu_request*, %struct.viommu_request** %6, align 8
  %65 = getelementptr inbounds %struct.viommu_request, %struct.viommu_request* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.viommu_request*, %struct.viommu_request** %6, align 8
  %68 = getelementptr inbounds %struct.viommu_request, %struct.viommu_request* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %66, %69
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @memcpy(i64 %63, i64 %70, i64 %71)
  br label %73

73:                                               ; preds = %60, %55, %43
  %74 = load %struct.viommu_request*, %struct.viommu_request** %6, align 8
  %75 = getelementptr inbounds %struct.viommu_request, %struct.viommu_request* %74, i32 0, i32 3
  %76 = call i32 @list_del(i32* %75)
  %77 = load %struct.viommu_request*, %struct.viommu_request** %6, align 8
  %78 = call i32 @kfree(%struct.viommu_request* %77)
  br label %19

79:                                               ; preds = %19
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @virtqueue_kick(%struct.virtqueue*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.viommu_request* @virtqueue_get_buf(%struct.virtqueue*, i32*) #1

declare dso_local i32 @viommu_set_req_status(i64, i64, i32) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.viommu_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
