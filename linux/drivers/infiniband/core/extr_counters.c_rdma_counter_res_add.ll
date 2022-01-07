; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c_rdma_counter_res_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c_rdma_counter_res_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_counter = type { i32 }
%struct.ib_qp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_counter*, %struct.ib_qp*)* @rdma_counter_res_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdma_counter_res_add(%struct.rdma_counter* %0, %struct.ib_qp* %1) #0 {
  %3 = alloca %struct.rdma_counter*, align 8
  %4 = alloca %struct.ib_qp*, align 8
  store %struct.rdma_counter* %0, %struct.rdma_counter** %3, align 8
  store %struct.ib_qp* %1, %struct.ib_qp** %4, align 8
  %5 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %6 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %5, i32 0, i32 0
  %7 = call i64 @rdma_is_kernel_res(%struct.TYPE_2__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load %struct.rdma_counter*, %struct.rdma_counter** %3, align 8
  %11 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %10, i32 0, i32 0
  %12 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %13 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @rdma_restrack_set_task(i32* %11, i32 %15)
  %17 = load %struct.rdma_counter*, %struct.rdma_counter** %3, align 8
  %18 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %17, i32 0, i32 0
  %19 = call i32 @rdma_restrack_kadd(i32* %18)
  br label %31

20:                                               ; preds = %2
  %21 = load %struct.rdma_counter*, %struct.rdma_counter** %3, align 8
  %22 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %21, i32 0, i32 0
  %23 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %24 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rdma_restrack_attach_task(i32* %22, i32 %26)
  %28 = load %struct.rdma_counter*, %struct.rdma_counter** %3, align 8
  %29 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %28, i32 0, i32 0
  %30 = call i32 @rdma_restrack_uadd(i32* %29)
  br label %31

31:                                               ; preds = %20, %9
  ret void
}

declare dso_local i64 @rdma_is_kernel_res(%struct.TYPE_2__*) #1

declare dso_local i32 @rdma_restrack_set_task(i32*, i32) #1

declare dso_local i32 @rdma_restrack_kadd(i32*) #1

declare dso_local i32 @rdma_restrack_attach_task(i32*, i32) #1

declare dso_local i32 @rdma_restrack_uadd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
