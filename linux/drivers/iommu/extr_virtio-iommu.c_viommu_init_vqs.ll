; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_init_vqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_init_vqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viommu_dev = type { i32, i32 }
%struct.virtio_device = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"request\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@__const.viommu_init_vqs.names = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)], align 16
@viommu_event_handler = common dso_local global i32* null, align 8
@VIOMMU_NR_VQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.viommu_dev*)* @viommu_init_vqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viommu_init_vqs(%struct.viommu_dev* %0) #0 {
  %2 = alloca %struct.viommu_dev*, align 8
  %3 = alloca %struct.virtio_device*, align 8
  %4 = alloca [2 x i8*], align 16
  %5 = alloca [2 x i32*], align 16
  store %struct.viommu_dev* %0, %struct.viommu_dev** %2, align 8
  %6 = load %struct.viommu_dev*, %struct.viommu_dev** %2, align 8
  %7 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.virtio_device* @dev_to_virtio(i32 %8)
  store %struct.virtio_device* %9, %struct.virtio_device** %3, align 8
  %10 = bitcast [2 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([2 x i8*]* @__const.viommu_init_vqs.names to i8*), i64 16, i1 false)
  %11 = getelementptr inbounds [2 x i32*], [2 x i32*]* %5, i64 0, i64 0
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 1
  %13 = load i32*, i32** @viommu_event_handler, align 8
  store i32* %13, i32** %12, align 8
  %14 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %15 = load i32, i32* @VIOMMU_NR_VQS, align 4
  %16 = load %struct.viommu_dev*, %struct.viommu_dev** %2, align 8
  %17 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [2 x i32*], [2 x i32*]* %5, i64 0, i64 0
  %20 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %21 = call i32 @virtio_find_vqs(%struct.virtio_device* %14, i32 %15, i32 %18, i32** %19, i8** %20, i32* null)
  ret i32 %21
}

declare dso_local %struct.virtio_device* @dev_to_virtio(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @virtio_find_vqs(%struct.virtio_device*, i32, i32, i32**, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
