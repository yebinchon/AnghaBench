; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_resolve_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_resolve_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.cma_work = type { i32 }
%union.ib_gid = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cma_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*)* @cma_resolve_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_resolve_loopback(%struct.rdma_id_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdma_id_private*, align 8
  %4 = alloca %struct.cma_work*, align 8
  %5 = alloca %union.ib_gid, align 4
  %6 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.cma_work* @kzalloc(i32 4, i32 %7)
  store %struct.cma_work* %8, %struct.cma_work** %4, align 8
  %9 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %10 = icmp ne %struct.cma_work* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %50

14:                                               ; preds = %1
  %15 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %16 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %21 = call i32 @cma_bind_loopback(%struct.rdma_id_private* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %46

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %14
  %27 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %28 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @rdma_addr_get_sgid(i32* %31, %union.ib_gid* %5)
  %33 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %34 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @rdma_addr_set_dgid(i32* %37, %union.ib_gid* %5)
  %39 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %40 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %41 = call i32 @cma_init_resolve_addr_work(%struct.cma_work* %39, %struct.rdma_id_private* %40)
  %42 = load i32, i32* @cma_wq, align 4
  %43 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %44 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %43, i32 0, i32 0
  %45 = call i32 @queue_work(i32 %42, i32* %44)
  store i32 0, i32* %2, align 4
  br label %50

46:                                               ; preds = %24
  %47 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %48 = call i32 @kfree(%struct.cma_work* %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %26, %11
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.cma_work* @kzalloc(i32, i32) #1

declare dso_local i32 @cma_bind_loopback(%struct.rdma_id_private*) #1

declare dso_local i32 @rdma_addr_get_sgid(i32*, %union.ib_gid*) #1

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
