; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_poll_success_rcqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_poll_success_rcqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i64, %struct.TYPE_8__, i32*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.ocrdma_cqe = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ib_wc = type { i32, i32, %struct.TYPE_5__, i32, i8*, i32, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.ocrdma_dev = type { i32 }

@IB_WC_RECV = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i64 0, align 8
@IB_QPT_GSI = common dso_local global i64 0, align 8
@IB_WC_WITH_IMM = common dso_local global i32 0, align 4
@IB_WC_RECV_RDMA_WITH_IMM = common dso_local global i32 0, align 4
@IB_WC_WITH_INVALIDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_qp*, %struct.ocrdma_cqe*, %struct.ib_wc*)* @ocrdma_poll_success_rcqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_poll_success_rcqe(%struct.ocrdma_qp* %0, %struct.ocrdma_cqe* %1, %struct.ib_wc* %2) #0 {
  %4 = alloca %struct.ocrdma_qp*, align 8
  %5 = alloca %struct.ocrdma_cqe*, align 8
  %6 = alloca %struct.ib_wc*, align 8
  %7 = alloca %struct.ocrdma_dev*, align 8
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %4, align 8
  store %struct.ocrdma_cqe* %1, %struct.ocrdma_cqe** %5, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %6, align 8
  %8 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %9 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.ocrdma_dev* @get_ocrdma_dev(i32 %11)
  store %struct.ocrdma_dev* %12, %struct.ocrdma_dev** %7, align 8
  %13 = load i32, i32* @IB_WC_RECV, align 4
  %14 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %15 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %17 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %16, i32 0, i32 3
  %18 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %19 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %18, i32 0, i32 6
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %19, align 8
  %20 = load i32, i32* @IB_WC_SUCCESS, align 4
  %21 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %22 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %24 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IB_QPT_UD, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %3
  %29 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %30 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IB_QPT_GSI, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28, %3
  %35 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %36 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %37 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %5, align 8
  %38 = call i32 @ocrdma_update_ud_rcqe(%struct.ocrdma_dev* %35, %struct.ib_wc* %36, %struct.ocrdma_cqe* %37)
  br label %47

39:                                               ; preds = %28
  %40 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %5, align 8
  %41 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @le32_to_cpu(i32 %43)
  %45 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %46 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %39, %34
  %48 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %5, align 8
  %49 = call i64 @is_cqe_imm(%struct.ocrdma_cqe* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %5, align 8
  %53 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @le32_to_cpu(i32 %55)
  %57 = call i8* @htonl(i8* %56)
  %58 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %59 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i8* %57, i8** %60, align 8
  %61 = load i32, i32* @IB_WC_WITH_IMM, align 4
  %62 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %63 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %108

66:                                               ; preds = %47
  %67 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %5, align 8
  %68 = call i64 @is_cqe_wr_imm(%struct.ocrdma_cqe* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %66
  %71 = load i32, i32* @IB_WC_RECV_RDMA_WITH_IMM, align 4
  %72 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %73 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %5, align 8
  %75 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @le32_to_cpu(i32 %77)
  %79 = call i8* @htonl(i8* %78)
  %80 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %81 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i8* %79, i8** %82, align 8
  %83 = load i32, i32* @IB_WC_WITH_IMM, align 4
  %84 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %85 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %107

88:                                               ; preds = %66
  %89 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %5, align 8
  %90 = call i64 @is_cqe_invalidated(%struct.ocrdma_cqe* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %88
  %93 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %5, align 8
  %94 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @le32_to_cpu(i32 %96)
  %98 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %99 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store i8* %97, i8** %100, align 8
  %101 = load i32, i32* @IB_WC_WITH_INVALIDATE, align 4
  %102 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %103 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %92, %88
  br label %107

107:                                              ; preds = %106, %70
  br label %108

108:                                              ; preds = %107, %51
  %109 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %110 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %116 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %5, align 8
  %117 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %118 = call i32 @ocrdma_update_free_srq_cqe(%struct.ib_wc* %115, %struct.ocrdma_cqe* %116, %struct.ocrdma_qp* %117)
  br label %134

119:                                              ; preds = %108
  %120 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %121 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %124 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %130 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %132 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %131, i32 0, i32 1
  %133 = call i32 @ocrdma_hwq_inc_tail(%struct.TYPE_8__* %132)
  br label %134

134:                                              ; preds = %119, %114
  ret void
}

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(i32) #1

declare dso_local i32 @ocrdma_update_ud_rcqe(%struct.ocrdma_dev*, %struct.ib_wc*, %struct.ocrdma_cqe*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @is_cqe_imm(%struct.ocrdma_cqe*) #1

declare dso_local i8* @htonl(i8*) #1

declare dso_local i64 @is_cqe_wr_imm(%struct.ocrdma_cqe*) #1

declare dso_local i64 @is_cqe_invalidated(%struct.ocrdma_cqe*) #1

declare dso_local i32 @ocrdma_update_free_srq_cqe(%struct.ib_wc*, %struct.ocrdma_cqe*, %struct.ocrdma_qp*) #1

declare dso_local i32 @ocrdma_hwq_inc_tail(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
