; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_qp_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_qp_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_packet = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@ib_rvt_state_ops = common dso_local global i32* null, align 8
@RVT_PROCESS_RECV_OK = common dso_local global i32 0, align 4
@RVT_OPCODE_QP_MASK = common dso_local global i32 0, align 4
@IB_OPCODE_CNP = common dso_local global i32 0, align 4
@opcode_handler_tbl = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hfi1_packet*)* @qp_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @qp_ok(%struct.hfi1_packet* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.hfi1_packet*, align 8
  store %struct.hfi1_packet* %0, %struct.hfi1_packet** %3, align 8
  %4 = load i32*, i32** @ib_rvt_state_ops, align 8
  %5 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %6 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds i32, i32* %4, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @RVT_PROCESS_RECV_OK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %43

16:                                               ; preds = %1
  %17 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %18 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RVT_OPCODE_QP_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %23 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %21, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %16
  %29 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %30 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IB_OPCODE_CNP, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28, %16
  %35 = load i32**, i32*** @opcode_handler_tbl, align 8
  %36 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %37 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %35, i64 %39
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %2, align 8
  br label %43

42:                                               ; preds = %28
  store i32* null, i32** %2, align 8
  br label %43

43:                                               ; preds = %42, %34, %15
  %44 = load i32*, i32** %2, align 8
  ret i32* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
