; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rw.c_rdma_rw_update_lkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rw.c_rdma_rw_update_lkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_rw_reg_ctx = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_rw_reg_ctx*, i32)* @rdma_rw_update_lkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdma_rw_update_lkey(%struct.rdma_rw_reg_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.rdma_rw_reg_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.rdma_rw_reg_ctx* %0, %struct.rdma_rw_reg_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 %5, i32* %9, align 4
  %10 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ib_inc_rkey(i32 %17)
  %19 = call i32 @ib_update_fast_reg_key(%struct.TYPE_6__* %12, i32 %18)
  %20 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  ret void
}

declare dso_local i32 @ib_update_fast_reg_key(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ib_inc_rkey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
