; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_acknowledge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_acknowledge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.rxe_pkt_info = type { i32, i32 }

@IB_QPT_RC = common dso_local global i64 0, align 8
@RESPST_CLEANUP = common dso_local global i32 0, align 4
@AETH_ACK_UNLIMITED = common dso_local global i64 0, align 8
@RXE_ATOMIC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.rxe_pkt_info*)* @acknowledge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acknowledge(%struct.rxe_qp* %0, %struct.rxe_pkt_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rxe_qp*, align 8
  %5 = alloca %struct.rxe_pkt_info*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %4, align 8
  store %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info** %5, align 8
  %6 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %7 = call i64 @qp_type(%struct.rxe_qp* %6)
  %8 = load i64, i64* @IB_QPT_RC, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @RESPST_CLEANUP, align 4
  store i32 %11, i32* %3, align 4
  br label %58

12:                                               ; preds = %2
  %13 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %14 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AETH_ACK_UNLIMITED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %21 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %22 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %23 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %27 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @send_ack(%struct.rxe_qp* %20, %struct.rxe_pkt_info* %21, i64 %25, i32 %28)
  br label %56

30:                                               ; preds = %12
  %31 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %32 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RXE_ATOMIC_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %39 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %40 = load i64, i64* @AETH_ACK_UNLIMITED, align 8
  %41 = call i32 @send_atomic_ack(%struct.rxe_qp* %38, %struct.rxe_pkt_info* %39, i64 %40)
  br label %55

42:                                               ; preds = %30
  %43 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %44 = call i64 @bth_ack(%struct.rxe_pkt_info* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %48 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %49 = load i64, i64* @AETH_ACK_UNLIMITED, align 8
  %50 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %51 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @send_ack(%struct.rxe_qp* %47, %struct.rxe_pkt_info* %48, i64 %49, i32 %52)
  br label %54

54:                                               ; preds = %46, %42
  br label %55

55:                                               ; preds = %54, %37
  br label %56

56:                                               ; preds = %55, %19
  %57 = load i32, i32* @RESPST_CLEANUP, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %10
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @qp_type(%struct.rxe_qp*) #1

declare dso_local i32 @send_ack(%struct.rxe_qp*, %struct.rxe_pkt_info*, i64, i32) #1

declare dso_local i32 @send_atomic_ack(%struct.rxe_qp*, %struct.rxe_pkt_info*, i64) #1

declare dso_local i64 @bth_ack(%struct.rxe_pkt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
