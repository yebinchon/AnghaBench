; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw.h_set_rx_fpdu_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw.h_set_rx_fpdu_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_qp = type { %struct.TYPE_2__, i32, i32*, i32 }
%struct.TYPE_2__ = type { i64 }

@RDMAP_RDMA_WRITE = common dso_local global i64 0, align 8
@RDMAP_RDMA_READ_RESP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.siw_qp*, i64)* @set_rx_fpdu_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rx_fpdu_context(%struct.siw_qp* %0, i64 %1) #0 {
  %3 = alloca %struct.siw_qp*, align 8
  %4 = alloca i64, align 8
  store %struct.siw_qp* %0, %struct.siw_qp** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @RDMAP_RDMA_WRITE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @RDMAP_RDMA_READ_RESP, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %8, %2
  %13 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %14 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %13, i32 0, i32 3
  %15 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %16 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %15, i32 0, i32 2
  store i32* %14, i32** %16, align 8
  br label %22

17:                                               ; preds = %8
  %18 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %19 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %18, i32 0, i32 1
  %20 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %21 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %20, i32 0, i32 2
  store i32* %19, i32** %21, align 8
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %25 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
