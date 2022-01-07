; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.viommu_dev* }
%struct.viommu_dev = type { i32 }
%struct.scatterlist = type { i32 }
%struct.viommu_event = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"invalid event buffer (len %u != %zu)\0A\00", align 1
@VIOMMU_FAULT_RESV_MASK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"could not add event buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @viommu_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @viommu_event_handler(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1 x %struct.scatterlist], align 4
  %6 = alloca %struct.viommu_event*, align 8
  %7 = alloca %struct.viommu_dev*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %8 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %9 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.viommu_dev*, %struct.viommu_dev** %11, align 8
  store %struct.viommu_dev* %12, %struct.viommu_dev** %7, align 8
  br label %13

13:                                               ; preds = %56, %1
  %14 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %15 = call %struct.viommu_event* @virtqueue_get_buf(%struct.virtqueue* %14, i32* %4)
  store %struct.viommu_event* %15, %struct.viommu_event** %6, align 8
  %16 = icmp ne %struct.viommu_event* %15, null
  br i1 %16, label %17, label %57

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = icmp ugt i64 %19, 8
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load %struct.viommu_dev*, %struct.viommu_dev** %7, align 8
  %23 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (i32, i8*, ...) @dev_err(i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %25, i64 8)
  br label %40

27:                                               ; preds = %17
  %28 = load %struct.viommu_event*, %struct.viommu_event** %6, align 8
  %29 = getelementptr inbounds %struct.viommu_event, %struct.viommu_event* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @VIOMMU_FAULT_RESV_MASK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = load %struct.viommu_dev*, %struct.viommu_dev** %7, align 8
  %36 = load %struct.viommu_event*, %struct.viommu_event** %6, align 8
  %37 = getelementptr inbounds %struct.viommu_event, %struct.viommu_event* %36, i32 0, i32 1
  %38 = call i32 @viommu_fault_handler(%struct.viommu_dev* %35, i32* %37)
  br label %39

39:                                               ; preds = %34, %27
  br label %40

40:                                               ; preds = %39, %21
  %41 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %5, i64 0, i64 0
  %42 = load %struct.viommu_event*, %struct.viommu_event** %6, align 8
  %43 = call i32 @sg_init_one(%struct.scatterlist* %41, %struct.viommu_event* %42, i32 8)
  %44 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %45 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %5, i64 0, i64 0
  %46 = load %struct.viommu_event*, %struct.viommu_event** %6, align 8
  %47 = load i32, i32* @GFP_ATOMIC, align 4
  %48 = call i32 @virtqueue_add_inbuf(%struct.virtqueue* %44, %struct.scatterlist* %45, i32 1, %struct.viommu_event* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load %struct.viommu_dev*, %struct.viommu_dev** %7, align 8
  %53 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, ...) @dev_err(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %51, %40
  br label %13

57:                                               ; preds = %13
  %58 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %59 = call i32 @virtqueue_kick(%struct.virtqueue* %58)
  ret void
}

declare dso_local %struct.viommu_event* @virtqueue_get_buf(%struct.virtqueue*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @viommu_fault_handler(%struct.viommu_dev*, i32*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, %struct.viommu_event*, i32) #1

declare dso_local i32 @virtqueue_add_inbuf(%struct.virtqueue*, %struct.scatterlist*, i32, %struct.viommu_event*, i32) #1

declare dso_local i32 @virtqueue_kick(%struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
