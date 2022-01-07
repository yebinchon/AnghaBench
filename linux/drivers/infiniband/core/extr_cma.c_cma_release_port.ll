; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_release_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_release_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i32, %struct.TYPE_8__, %struct.rdma_bind_list* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.net* }
%struct.net = type { i32 }
%struct.rdma_bind_list = type { i32, i32, i32 }

@lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_id_private*)* @cma_release_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cma_release_port(%struct.rdma_id_private* %0) #0 {
  %2 = alloca %struct.rdma_id_private*, align 8
  %3 = alloca %struct.rdma_bind_list*, align 8
  %4 = alloca %struct.net*, align 8
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %2, align 8
  %5 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %6 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %5, i32 0, i32 2
  %7 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %6, align 8
  store %struct.rdma_bind_list* %7, %struct.rdma_bind_list** %3, align 8
  %8 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %9 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.net*, %struct.net** %13, align 8
  store %struct.net* %14, %struct.net** %4, align 8
  %15 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %3, align 8
  %16 = icmp ne %struct.rdma_bind_list* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %40

18:                                               ; preds = %1
  %19 = call i32 @mutex_lock(i32* @lock)
  %20 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %21 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %20, i32 0, i32 0
  %22 = call i32 @hlist_del(i32* %21)
  %23 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %3, align 8
  %24 = getelementptr inbounds %struct.rdma_bind_list, %struct.rdma_bind_list* %23, i32 0, i32 2
  %25 = call i64 @hlist_empty(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %18
  %28 = load %struct.net*, %struct.net** %4, align 8
  %29 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %3, align 8
  %30 = getelementptr inbounds %struct.rdma_bind_list, %struct.rdma_bind_list* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %3, align 8
  %33 = getelementptr inbounds %struct.rdma_bind_list, %struct.rdma_bind_list* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cma_ps_remove(%struct.net* %28, i32 %31, i32 %34)
  %36 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %3, align 8
  %37 = call i32 @kfree(%struct.rdma_bind_list* %36)
  br label %38

38:                                               ; preds = %27, %18
  %39 = call i32 @mutex_unlock(i32* @lock)
  br label %40

40:                                               ; preds = %38, %17
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i64 @hlist_empty(i32*) #1

declare dso_local i32 @cma_ps_remove(%struct.net*, i32, i32) #1

declare dso_local i32 @kfree(%struct.rdma_bind_list*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
