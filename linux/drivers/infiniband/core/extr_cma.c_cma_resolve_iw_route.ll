; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_resolve_iw_route.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_resolve_iw_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i32 }
%struct.cma_work = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cma_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*)* @cma_resolve_iw_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_resolve_iw_route(%struct.rdma_id_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdma_id_private*, align 8
  %4 = alloca %struct.cma_work*, align 8
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.cma_work* @kzalloc(i32 4, i32 %5)
  store %struct.cma_work* %6, %struct.cma_work** %4, align 8
  %7 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %8 = icmp ne %struct.cma_work* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %20

12:                                               ; preds = %1
  %13 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %14 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %15 = call i32 @cma_init_resolve_route_work(%struct.cma_work* %13, %struct.rdma_id_private* %14)
  %16 = load i32, i32* @cma_wq, align 4
  %17 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %18 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %17, i32 0, i32 0
  %19 = call i32 @queue_work(i32 %16, i32* %18)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %12, %9
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.cma_work* @kzalloc(i32, i32) #1

declare dso_local i32 @cma_init_resolve_route_work(%struct.cma_work*, %struct.rdma_id_private*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
