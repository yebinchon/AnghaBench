; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_fill_evtq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_fill_evtq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viommu_dev = type { i32, %struct.viommu_event*, %struct.virtqueue** }
%struct.viommu_event = type { i32 }
%struct.virtqueue = type { i64 }
%struct.scatterlist = type { i32 }

@VIOMMU_EVENT_VQ = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.viommu_dev*)* @viommu_fill_evtq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viommu_fill_evtq(%struct.viommu_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.viommu_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [1 x %struct.scatterlist], align 4
  %7 = alloca %struct.viommu_event*, align 8
  %8 = alloca %struct.virtqueue*, align 8
  %9 = alloca i64, align 8
  store %struct.viommu_dev* %0, %struct.viommu_dev** %3, align 8
  %10 = load %struct.viommu_dev*, %struct.viommu_dev** %3, align 8
  %11 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %10, i32 0, i32 2
  %12 = load %struct.virtqueue**, %struct.virtqueue*** %11, align 8
  %13 = load i64, i64* @VIOMMU_EVENT_VQ, align 8
  %14 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %12, i64 %13
  %15 = load %struct.virtqueue*, %struct.virtqueue** %14, align 8
  store %struct.virtqueue* %15, %struct.virtqueue** %8, align 8
  %16 = load %struct.virtqueue*, %struct.virtqueue** %8, align 8
  %17 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load %struct.viommu_dev*, %struct.viommu_dev** %3, align 8
  %20 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.viommu_event* @devm_kmalloc_array(i32 %21, i64 %22, i32 4, i32 %23)
  store %struct.viommu_event* %24, %struct.viommu_event** %7, align 8
  %25 = load %struct.viommu_dev*, %struct.viommu_dev** %3, align 8
  %26 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %25, i32 0, i32 1
  store %struct.viommu_event* %24, %struct.viommu_event** %26, align 8
  %27 = load %struct.viommu_event*, %struct.viommu_event** %7, align 8
  %28 = icmp ne %struct.viommu_event* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %62

32:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %58, %32
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %9, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %33
  %39 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %6, i64 0, i64 0
  %40 = load %struct.viommu_event*, %struct.viommu_event** %7, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.viommu_event, %struct.viommu_event* %40, i64 %42
  %44 = call i32 @sg_init_one(%struct.scatterlist* %39, %struct.viommu_event* %43, i32 4)
  %45 = load %struct.virtqueue*, %struct.virtqueue** %8, align 8
  %46 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %6, i64 0, i64 0
  %47 = load %struct.viommu_event*, %struct.viommu_event** %7, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.viommu_event, %struct.viommu_event* %47, i64 %49
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32 @virtqueue_add_inbuf(%struct.virtqueue* %45, %struct.scatterlist* %46, i32 1, %struct.viommu_event* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %38
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %62

57:                                               ; preds = %38
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %33

61:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %55, %29
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.viommu_event* @devm_kmalloc_array(i32, i64, i32, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, %struct.viommu_event*, i32) #1

declare dso_local i32 @virtqueue_add_inbuf(%struct.virtqueue*, %struct.scatterlist*, i32, %struct.viommu_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
