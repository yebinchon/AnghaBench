; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_remove_id_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_remove_id_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.rdma_cm_event*)* }
%struct.rdma_cm_event = type opaque
%struct.rdma_cm_event.0 = type { i32 }

@RDMA_CM_DEVICE_REMOVAL = common dso_local global i32 0, align 4
@RDMA_CM_DESTROYING = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_DEVICE_REMOVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*)* @cma_remove_id_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_remove_id_dev(%struct.rdma_id_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdma_id_private*, align 8
  %4 = alloca %struct.rdma_cm_event.0, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %3, align 8
  %7 = bitcast %struct.rdma_cm_event.0* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  store i32 0, i32* %6, align 4
  %8 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %9 = load i32, i32* @RDMA_CM_DEVICE_REMOVAL, align 4
  %10 = call i32 @cma_exch(%struct.rdma_id_private* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @RDMA_CM_DESTROYING, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

15:                                               ; preds = %1
  %16 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @cma_cancel_operation(%struct.rdma_id_private* %16, i32 %17)
  %19 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %20 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %23 = load i32, i32* @RDMA_CM_DEVICE_REMOVAL, align 4
  %24 = call i32 @cma_comp(%struct.rdma_id_private* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  br label %38

27:                                               ; preds = %15
  %28 = load i32, i32* @RDMA_CM_EVENT_DEVICE_REMOVAL, align 4
  %29 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %4, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %31 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_2__*, %struct.rdma_cm_event*)*, i32 (%struct.TYPE_2__*, %struct.rdma_cm_event*)** %32, align 8
  %34 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %35 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %34, i32 0, i32 1
  %36 = bitcast %struct.rdma_cm_event.0* %4 to %struct.rdma_cm_event*
  %37 = call i32 %33(%struct.TYPE_2__* %35, %struct.rdma_cm_event* %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %27, %26
  %39 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %40 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %14
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cma_exch(%struct.rdma_id_private*, i32) #2

declare dso_local i32 @cma_cancel_operation(%struct.rdma_id_private*, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @cma_comp(%struct.rdma_id_private*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
