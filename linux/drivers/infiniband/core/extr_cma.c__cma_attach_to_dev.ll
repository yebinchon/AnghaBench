; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c__cma_attach_to_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c__cma_attach_to_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_13__, i32, %struct.TYPE_12__, %struct.cma_device* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.cma_device = type { i32, %struct.TYPE_11__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_id_private*, %struct.cma_device*)* @_cma_attach_to_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_cma_attach_to_dev(%struct.rdma_id_private* %0, %struct.cma_device* %1) #0 {
  %3 = alloca %struct.rdma_id_private*, align 8
  %4 = alloca %struct.cma_device*, align 8
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %3, align 8
  store %struct.cma_device* %1, %struct.cma_device** %4, align 8
  %5 = load %struct.cma_device*, %struct.cma_device** %4, align 8
  %6 = call i32 @cma_ref_dev(%struct.cma_device* %5)
  %7 = load %struct.cma_device*, %struct.cma_device** %4, align 8
  %8 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %9 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %8, i32 0, i32 3
  store %struct.cma_device* %7, %struct.cma_device** %9, align 8
  %10 = load %struct.cma_device*, %struct.cma_device** %4, align 8
  %11 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %14 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %15, align 8
  %16 = load %struct.cma_device*, %struct.cma_device** %4, align 8
  %17 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @rdma_node_get_transport(i32 %20)
  %22 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %23 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i32 %21, i32* %27, align 8
  %28 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %29 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %28, i32 0, i32 1
  %30 = load %struct.cma_device*, %struct.cma_device** %4, align 8
  %31 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %30, i32 0, i32 0
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  %33 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %34 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %2
  %39 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %40 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %39, i32 0, i32 0
  %41 = call i32 @rdma_restrack_kadd(%struct.TYPE_13__* %40)
  br label %46

42:                                               ; preds = %2
  %43 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %44 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %43, i32 0, i32 0
  %45 = call i32 @rdma_restrack_uadd(%struct.TYPE_13__* %44)
  br label %46

46:                                               ; preds = %42, %38
  ret void
}

declare dso_local i32 @cma_ref_dev(%struct.cma_device*) #1

declare dso_local i32 @rdma_node_get_transport(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @rdma_restrack_kadd(%struct.TYPE_13__*) #1

declare dso_local i32 @rdma_restrack_uadd(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
