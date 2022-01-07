; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_resolve_ib_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_resolve_ib_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cma_work = type { i32 }
%struct.sockaddr_ib = type { i32 }
%union.ib_gid = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cma_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*)* @cma_resolve_ib_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_resolve_ib_addr(%struct.rdma_id_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdma_id_private*, align 8
  %4 = alloca %struct.cma_work*, align 8
  %5 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.cma_work* @kzalloc(i32 4, i32 %6)
  store %struct.cma_work* %7, %struct.cma_work** %4, align 8
  %8 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %9 = icmp ne %struct.cma_work* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %51

13:                                               ; preds = %1
  %14 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %15 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %20 = call i32 @cma_resolve_ib_dev(%struct.rdma_id_private* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %47

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %13
  %26 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %27 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %32 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = bitcast i32* %35 to %struct.sockaddr_ib*
  %37 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %36, i32 0, i32 0
  %38 = bitcast i32* %37 to %union.ib_gid*
  %39 = call i32 @rdma_addr_set_dgid(i32* %30, %union.ib_gid* %38)
  %40 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %41 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %42 = call i32 @cma_init_resolve_addr_work(%struct.cma_work* %40, %struct.rdma_id_private* %41)
  %43 = load i32, i32* @cma_wq, align 4
  %44 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %45 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %44, i32 0, i32 0
  %46 = call i32 @queue_work(i32 %43, i32* %45)
  store i32 0, i32* %2, align 4
  br label %51

47:                                               ; preds = %23
  %48 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %49 = call i32 @kfree(%struct.cma_work* %48)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %25, %10
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.cma_work* @kzalloc(i32, i32) #1

declare dso_local i32 @cma_resolve_ib_dev(%struct.rdma_id_private*) #1

declare dso_local i32 @rdma_addr_set_dgid(i32*, %union.ib_gid*) #1

declare dso_local i32 @cma_init_resolve_addr_work(%struct.cma_work*, %struct.rdma_id_private*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @kfree(%struct.cma_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
