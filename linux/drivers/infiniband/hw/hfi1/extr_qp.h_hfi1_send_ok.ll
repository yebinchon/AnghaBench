; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.h_hfi1_send_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.h_hfi1_send_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, %struct.hfi1_qp_priv* }
%struct.hfi1_qp_priv = type { i32 }

@RVT_S_BUSY = common dso_local global i32 0, align 4
@HFI1_S_ANY_WAIT_IO = common dso_local global i32 0, align 4
@RVT_S_RESP_PENDING = common dso_local global i32 0, align 4
@RVT_S_ANY_WAIT_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvt_qp*)* @hfi1_send_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_send_ok(%struct.rvt_qp* %0) #0 {
  %2 = alloca %struct.rvt_qp*, align 8
  %3 = alloca %struct.hfi1_qp_priv*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %2, align 8
  %4 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %5 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %4, i32 0, i32 1
  %6 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  store %struct.hfi1_qp_priv* %6, %struct.hfi1_qp_priv** %3, align 8
  %7 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %8 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @RVT_S_BUSY, align 4
  %11 = load i32, i32* @HFI1_S_ANY_WAIT_IO, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %1
  %16 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %17 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %16, i32 0, i32 0
  %18 = call i32 @iowait_get_ib_work(i32* %17)
  %19 = call i64 @verbs_txreq_queued(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %15
  %22 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %23 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @RVT_S_RESP_PENDING, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %21
  %29 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %30 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @RVT_S_ANY_WAIT_SEND, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %28, %21, %15
  %37 = phi i1 [ true, %21 ], [ true, %15 ], [ %35, %28 ]
  br label %38

38:                                               ; preds = %36, %1
  %39 = phi i1 [ false, %1 ], [ %37, %36 ]
  %40 = zext i1 %39 to i32
  ret i32 %40
}

declare dso_local i64 @verbs_txreq_queued(i32) #1

declare dso_local i32 @iowait_get_ib_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
