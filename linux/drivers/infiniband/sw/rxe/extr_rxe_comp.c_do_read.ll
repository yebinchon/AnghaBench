; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_do_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_do_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { i32 }
%struct.rxe_pkt_info = type { i32 }
%struct.rxe_send_wqe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@to_mem_obj = common dso_local global i32 0, align 4
@COMPST_ERROR = common dso_local global i32 0, align 4
@RXE_END_MASK = common dso_local global i32 0, align 4
@COMPST_COMP_ACK = common dso_local global i32 0, align 4
@COMPST_UPDATE_COMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.rxe_pkt_info*, %struct.rxe_send_wqe*)* @do_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_read(%struct.rxe_qp* %0, %struct.rxe_pkt_info* %1, %struct.rxe_send_wqe* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxe_qp*, align 8
  %6 = alloca %struct.rxe_pkt_info*, align 8
  %7 = alloca %struct.rxe_send_wqe*, align 8
  %8 = alloca i32, align 4
  store %struct.rxe_qp* %0, %struct.rxe_qp** %5, align 8
  store %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info** %6, align 8
  store %struct.rxe_send_wqe* %2, %struct.rxe_send_wqe** %7, align 8
  %9 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %10 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %13 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %14 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %13, i32 0, i32 0
  %15 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %16 = call i32 @payload_addr(%struct.rxe_pkt_info* %15)
  %17 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %18 = call i32 @payload_size(%struct.rxe_pkt_info* %17)
  %19 = load i32, i32* @to_mem_obj, align 4
  %20 = call i32 @copy_data(i32 %11, i32 %12, %struct.TYPE_2__* %14, i32 %16, i32 %18, i32 %19, i32* null)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @COMPST_ERROR, align 4
  store i32 %24, i32* %4, align 4
  br label %42

25:                                               ; preds = %3
  %26 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %27 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %33 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @RXE_END_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @COMPST_COMP_ACK, align 4
  store i32 %39, i32* %4, align 4
  br label %42

40:                                               ; preds = %31, %25
  %41 = load i32, i32* @COMPST_UPDATE_COMP, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %38, %23
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @copy_data(i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32*) #1

declare dso_local i32 @payload_addr(%struct.rxe_pkt_info*) #1

declare dso_local i32 @payload_size(%struct.rxe_pkt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
