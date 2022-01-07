; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_tid_qp_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_tid_qp_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_packet = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@IB_QPT_RC = common dso_local global i64 0, align 8
@ib_rvt_state_ops = common dso_local global i32* null, align 8
@RVT_PROCESS_RECV_OK = common dso_local global i32 0, align 4
@RVT_OPCODE_QP_MASK = common dso_local global i32 0, align 4
@IB_OPCODE_TID_RDMA = common dso_local global i32 0, align 4
@opcode_handler_tbl = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct.hfi1_packet*)* @tid_qp_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tid_qp_ok(i32 %0, %struct.hfi1_packet* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_packet*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.hfi1_packet* %1, %struct.hfi1_packet** %5, align 8
  %6 = load %struct.hfi1_packet*, %struct.hfi1_packet** %5, align 8
  %7 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IB_QPT_RC, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = load i32*, i32** @ib_rvt_state_ops, align 8
  %16 = load %struct.hfi1_packet*, %struct.hfi1_packet** %5, align 8
  %17 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %15, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @RVT_PROCESS_RECV_OK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %14, %2
  store i32* null, i32** %3, align 8
  br label %40

27:                                               ; preds = %14
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @RVT_OPCODE_QP_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @IB_OPCODE_TID_RDMA, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i32**, i32*** @opcode_handler_tbl, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %3, align 8
  br label %40

39:                                               ; preds = %27
  store i32* null, i32** %3, align 8
  br label %40

40:                                               ; preds = %39, %33, %26
  %41 = load i32*, i32** %3, align 8
  ret i32* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
