; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_get_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_get_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rxe_pkt_info = type { i32 }
%struct.rxe_send_wqe = type { i64 }

@wqe_state_posted = common dso_local global i64 0, align 8
@COMPST_DONE = common dso_local global i32 0, align 4
@COMPST_EXIT = common dso_local global i32 0, align 4
@wqe_state_done = common dso_local global i64 0, align 8
@COMPST_COMP_WQE = common dso_local global i32 0, align 4
@wqe_state_error = common dso_local global i64 0, align 8
@COMPST_ERROR = common dso_local global i32 0, align 4
@COMPST_CHECK_PSN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.rxe_pkt_info*, %struct.rxe_send_wqe**)* @get_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_wqe(%struct.rxe_qp* %0, %struct.rxe_pkt_info* %1, %struct.rxe_send_wqe** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxe_qp*, align 8
  %6 = alloca %struct.rxe_pkt_info*, align 8
  %7 = alloca %struct.rxe_send_wqe**, align 8
  %8 = alloca %struct.rxe_send_wqe*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %5, align 8
  store %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info** %6, align 8
  store %struct.rxe_send_wqe** %2, %struct.rxe_send_wqe*** %7, align 8
  %9 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %10 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.rxe_send_wqe* @queue_head(i32 %12)
  store %struct.rxe_send_wqe* %13, %struct.rxe_send_wqe** %8, align 8
  %14 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %8, align 8
  %15 = load %struct.rxe_send_wqe**, %struct.rxe_send_wqe*** %7, align 8
  store %struct.rxe_send_wqe* %14, %struct.rxe_send_wqe** %15, align 8
  %16 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %8, align 8
  %17 = icmp ne %struct.rxe_send_wqe* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %8, align 8
  %20 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @wqe_state_posted, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %18, %3
  %25 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %26 = icmp ne %struct.rxe_pkt_info* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @COMPST_DONE, align 4
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @COMPST_EXIT, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %4, align 4
  br label %58

33:                                               ; preds = %18
  %34 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %8, align 8
  %35 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @wqe_state_done, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @COMPST_COMP_WQE, align 4
  store i32 %40, i32* %4, align 4
  br label %58

41:                                               ; preds = %33
  %42 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %8, align 8
  %43 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @wqe_state_error, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @COMPST_ERROR, align 4
  store i32 %48, i32* %4, align 4
  br label %58

49:                                               ; preds = %41
  %50 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %51 = icmp ne %struct.rxe_pkt_info* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @COMPST_CHECK_PSN, align 4
  br label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @COMPST_EXIT, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %47, %39, %31
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.rxe_send_wqe* @queue_head(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
