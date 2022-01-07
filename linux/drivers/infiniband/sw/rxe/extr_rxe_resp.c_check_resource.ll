; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_check_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_check_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, %struct.rxe_srq* }
%struct.TYPE_6__ = type { i64, i8*, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.rxe_srq = type { i32 }
%struct.rxe_pkt_info = type { i32 }

@QP_STATE_ERROR = common dso_local global i64 0, align 8
@IB_WC_WR_FLUSH_ERR = common dso_local global i8* null, align 8
@RESPST_COMPLETE = common dso_local global i32 0, align 4
@RESPST_EXIT = common dso_local global i32 0, align 4
@RXE_READ_OR_ATOMIC = common dso_local global i32 0, align 4
@RESPST_CHK_LENGTH = common dso_local global i32 0, align 4
@RESPST_ERR_TOO_MANY_RDMA_ATM_REQ = common dso_local global i32 0, align 4
@RXE_RWR_MASK = common dso_local global i32 0, align 4
@RESPST_ERR_RNR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.rxe_pkt_info*)* @check_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_resource(%struct.rxe_qp* %0, %struct.rxe_pkt_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rxe_qp*, align 8
  %5 = alloca %struct.rxe_pkt_info*, align 8
  %6 = alloca %struct.rxe_srq*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %4, align 8
  store %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info** %5, align 8
  %7 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %8 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %7, i32 0, i32 3
  %9 = load %struct.rxe_srq*, %struct.rxe_srq** %8, align 8
  store %struct.rxe_srq* %9, %struct.rxe_srq** %6, align 8
  %10 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %11 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @QP_STATE_ERROR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %2
  %17 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %18 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i8*, i8** @IB_WC_WR_FLUSH_ERR, align 8
  %24 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %25 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  store i8* %23, i8** %26, align 8
  %27 = load i32, i32* @RESPST_COMPLETE, align 4
  store i32 %27, i32* %3, align 4
  br label %110

28:                                               ; preds = %16
  %29 = load %struct.rxe_srq*, %struct.rxe_srq** %6, align 8
  %30 = icmp ne %struct.rxe_srq* %29, null
  br i1 %30, label %53, label %31

31:                                               ; preds = %28
  %32 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %33 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @queue_head(i32 %35)
  %37 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %38 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i8* %36, i8** %39, align 8
  %40 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %41 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %31
  %46 = load i8*, i8** @IB_WC_WR_FLUSH_ERR, align 8
  %47 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %48 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store i8* %46, i8** %49, align 8
  %50 = load i32, i32* @RESPST_COMPLETE, align 4
  store i32 %50, i32* %3, align 4
  br label %110

51:                                               ; preds = %31
  %52 = load i32, i32* @RESPST_EXIT, align 4
  store i32 %52, i32* %3, align 4
  br label %110

53:                                               ; preds = %28
  %54 = load i32, i32* @RESPST_EXIT, align 4
  store i32 %54, i32* %3, align 4
  br label %110

55:                                               ; preds = %2
  %56 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %57 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @RXE_READ_OR_ATOMIC, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %64 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i64 @likely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* @RESPST_CHK_LENGTH, align 4
  store i32 %72, i32* %3, align 4
  br label %110

73:                                               ; preds = %62
  %74 = load i32, i32* @RESPST_ERR_TOO_MANY_RDMA_ATM_REQ, align 4
  store i32 %74, i32* %3, align 4
  br label %110

75:                                               ; preds = %55
  %76 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %77 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @RXE_RWR_MASK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %108

82:                                               ; preds = %75
  %83 = load %struct.rxe_srq*, %struct.rxe_srq** %6, align 8
  %84 = icmp ne %struct.rxe_srq* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %87 = call i32 @get_srq_wqe(%struct.rxe_qp* %86)
  store i32 %87, i32* %3, align 4
  br label %110

88:                                               ; preds = %82
  %89 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %90 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i8* @queue_head(i32 %92)
  %94 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %95 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  store i8* %93, i8** %96, align 8
  %97 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %98 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %88
  %103 = load i32, i32* @RESPST_CHK_LENGTH, align 4
  br label %106

104:                                              ; preds = %88
  %105 = load i32, i32* @RESPST_ERR_RNR, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  store i32 %107, i32* %3, align 4
  br label %110

108:                                              ; preds = %75
  %109 = load i32, i32* @RESPST_CHK_LENGTH, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %106, %85, %73, %71, %53, %51, %45, %22
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i8* @queue_head(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @get_srq_wqe(%struct.rxe_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
