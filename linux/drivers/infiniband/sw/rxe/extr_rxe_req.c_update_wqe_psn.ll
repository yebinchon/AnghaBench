; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_req.c_update_wqe_psn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_req.c_update_wqe_psn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rxe_send_wqe = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rxe_pkt_info = type { i32 }

@RXE_START_MASK = common dso_local global i32 0, align 4
@BTH_PSN_MASK = common dso_local global i32 0, align 4
@RXE_READ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxe_qp*, %struct.rxe_send_wqe*, %struct.rxe_pkt_info*, i32)* @update_wqe_psn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_wqe_psn(%struct.rxe_qp* %0, %struct.rxe_send_wqe* %1, %struct.rxe_pkt_info* %2, i32 %3) #0 {
  %5 = alloca %struct.rxe_qp*, align 8
  %6 = alloca %struct.rxe_send_wqe*, align 8
  %7 = alloca %struct.rxe_pkt_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rxe_qp* %0, %struct.rxe_qp** %5, align 8
  store %struct.rxe_send_wqe* %1, %struct.rxe_send_wqe** %6, align 8
  store %struct.rxe_pkt_info* %2, %struct.rxe_pkt_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %11 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = add nsw i32 %13, %14
  %16 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %17 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %15, %18
  %20 = sub nsw i32 %19, 1
  %21 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %22 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %20, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  br label %28

28:                                               ; preds = %27, %4
  %29 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %7, align 8
  %30 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RXE_START_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %28
  %36 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %37 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %41 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %43 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %45, %46
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* @BTH_PSN_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %52 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %35, %28
  %54 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %7, align 8
  %55 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @RXE_READ_MASK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %53
  %61 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %62 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* @BTH_PSN_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %69 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  br label %82

71:                                               ; preds = %53
  %72 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %73 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* @BTH_PSN_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %80 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  br label %82

82:                                               ; preds = %71, %60
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
