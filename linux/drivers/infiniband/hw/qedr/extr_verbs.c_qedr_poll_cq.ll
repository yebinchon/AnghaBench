; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_poll_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i32* }
%struct.qedr_dev = type { i32 }
%struct.qedr_cq = type { i64, i32, i32, i64, i32, %union.rdma_cqe*, i32, i64 }
%union.rdma_cqe = type { i32 }
%struct.qedr_qp = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"warning: poll was invoked after destroy for cq %p (icid=%d)\0A\00", align 1
@QEDR_CQ_TYPE_GSI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Error: CQE QP pointer is NULL. CQE=%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Error: invalid CQE type = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedr_poll_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_wc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_cq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_wc*, align 8
  %8 = alloca %struct.qedr_dev*, align 8
  %9 = alloca %struct.qedr_cq*, align 8
  %10 = alloca %union.rdma_cqe*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.qedr_qp*, align 8
  %17 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %7, align 8
  %18 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %19 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.qedr_dev* @get_qedr_dev(i32 %20)
  store %struct.qedr_dev* %21, %struct.qedr_dev** %8, align 8
  %22 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %23 = call %struct.qedr_cq* @get_qedr_cq(%struct.ib_cq* %22)
  store %struct.qedr_cq* %23, %struct.qedr_cq** %9, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %24 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %25 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %24, i32 0, i32 7
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %30 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %31 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %32 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_ERR(%struct.qedr_dev* %29, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), %struct.qedr_cq* %30, i32 %33)
  store i32 0, i32* %4, align 4
  br label %163

35:                                               ; preds = %3
  %36 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %37 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @QEDR_CQ_TYPE_GSI, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %45 = call i32 @qedr_gsi_poll_cq(%struct.ib_cq* %42, i32 %43, %struct.ib_wc* %44)
  store i32 %45, i32* %4, align 4
  br label %163

46:                                               ; preds = %35
  %47 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %48 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %47, i32 0, i32 1
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %52 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %51, i32 0, i32 5
  %53 = load %union.rdma_cqe*, %union.rdma_cqe** %52, align 8
  store %union.rdma_cqe* %53, %union.rdma_cqe** %10, align 8
  %54 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %55 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %54, i32 0, i32 4
  %56 = call i64 @qed_chain_get_cons_idx_u32(i32* %55)
  store i64 %56, i64* %11, align 8
  br label %57

57:                                               ; preds = %121, %46
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %62 = load %union.rdma_cqe*, %union.rdma_cqe** %10, align 8
  %63 = call i64 @is_valid_cqe(%struct.qedr_cq* %61, %union.rdma_cqe* %62)
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %60, %57
  %66 = phi i1 [ false, %57 ], [ %64, %60 ]
  br i1 %66, label %67, label %134

67:                                               ; preds = %65
  store i32 0, i32* %17, align 4
  %68 = call i32 (...) @rmb()
  %69 = load %union.rdma_cqe*, %union.rdma_cqe** %10, align 8
  %70 = call %struct.qedr_qp* @cqe_get_qp(%union.rdma_cqe* %69)
  store %struct.qedr_qp* %70, %struct.qedr_qp** %16, align 8
  %71 = load %struct.qedr_qp*, %struct.qedr_qp** %16, align 8
  %72 = icmp ne %struct.qedr_qp* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load %union.rdma_cqe*, %union.rdma_cqe** %10, align 8
  %75 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), %union.rdma_cqe* %74)
  br label %134

76:                                               ; preds = %67
  %77 = load %struct.qedr_qp*, %struct.qedr_qp** %16, align 8
  %78 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %77, i32 0, i32 0
  %79 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %80 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %79, i32 0, i32 0
  store i32* %78, i32** %80, align 8
  %81 = load %union.rdma_cqe*, %union.rdma_cqe** %10, align 8
  %82 = call i32 @cqe_get_type(%union.rdma_cqe* %81)
  switch i32 %82, label %116 [
    i32 130, label %83
    i32 129, label %97
    i32 128, label %106
    i32 131, label %115
  ]

83:                                               ; preds = %76
  %84 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %85 = load %struct.qedr_qp*, %struct.qedr_qp** %16, align 8
  %86 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %89 = load %union.rdma_cqe*, %union.rdma_cqe** %10, align 8
  %90 = bitcast %union.rdma_cqe* %89 to i32*
  %91 = call i32 @qedr_poll_cq_req(%struct.qedr_dev* %84, %struct.qedr_qp* %85, %struct.qedr_cq* %86, i32 %87, %struct.ib_wc* %88, i32* %90)
  store i32 %91, i32* %17, align 4
  %92 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %93 = load %struct.qedr_qp*, %struct.qedr_qp** %16, align 8
  %94 = load %union.rdma_cqe*, %union.rdma_cqe** %10, align 8
  %95 = bitcast %union.rdma_cqe* %94 to i32*
  %96 = call i32 @try_consume_req_cqe(%struct.qedr_cq* %92, %struct.qedr_qp* %93, i32* %95, i32* %14)
  br label %121

97:                                               ; preds = %76
  %98 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %99 = load %struct.qedr_qp*, %struct.qedr_qp** %16, align 8
  %100 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %103 = load %union.rdma_cqe*, %union.rdma_cqe** %10, align 8
  %104 = bitcast %union.rdma_cqe* %103 to i32*
  %105 = call i32 @qedr_poll_cq_resp(%struct.qedr_dev* %98, %struct.qedr_qp* %99, %struct.qedr_cq* %100, i32 %101, %struct.ib_wc* %102, i32* %104, i32* %14)
  store i32 %105, i32* %17, align 4
  br label %121

106:                                              ; preds = %76
  %107 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %108 = load %struct.qedr_qp*, %struct.qedr_qp** %16, align 8
  %109 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %112 = load %union.rdma_cqe*, %union.rdma_cqe** %10, align 8
  %113 = bitcast %union.rdma_cqe* %112 to i32*
  %114 = call i32 @qedr_poll_cq_resp_srq(%struct.qedr_dev* %107, %struct.qedr_qp* %108, %struct.qedr_cq* %109, i32 %110, %struct.ib_wc* %111, i32* %113)
  store i32 %114, i32* %17, align 4
  store i32 1, i32* %14, align 4
  br label %121

115:                                              ; preds = %76
  br label %116

116:                                              ; preds = %76, %115
  %117 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %118 = load %union.rdma_cqe*, %union.rdma_cqe** %10, align 8
  %119 = call i32 @cqe_get_type(%union.rdma_cqe* %118)
  %120 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_ERR(%struct.qedr_dev* %117, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %116, %106, %97, %83
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %6, align 4
  %124 = sub nsw i32 %123, %122
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %17, align 4
  %126 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %126, i64 %127
  store %struct.ib_wc* %128, %struct.ib_wc** %7, align 8
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %15, align 4
  %132 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %133 = call %union.rdma_cqe* @get_cqe(%struct.qedr_cq* %132)
  store %union.rdma_cqe* %133, %union.rdma_cqe** %10, align 8
  br label %57

134:                                              ; preds = %73, %65
  %135 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %136 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %135, i32 0, i32 4
  %137 = call i64 @qed_chain_get_cons_idx_u32(i32* %136)
  store i64 %137, i64* %12, align 8
  %138 = load i64, i64* %12, align 8
  %139 = load i64, i64* %11, align 8
  %140 = sub nsw i64 %138, %139
  %141 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %142 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, %140
  store i64 %144, i64* %142, align 8
  %145 = load i32, i32* %14, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %134
  %148 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %149 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %150 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %151, 1
  %153 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %154 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @doorbell_cq(%struct.qedr_cq* %148, i64 %152, i32 %155)
  br label %157

157:                                              ; preds = %147, %134
  %158 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %159 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %158, i32 0, i32 1
  %160 = load i64, i64* %13, align 8
  %161 = call i32 @spin_unlock_irqrestore(i32* %159, i64 %160)
  %162 = load i32, i32* %15, align 4
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %157, %41, %28
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local %struct.qedr_dev* @get_qedr_dev(i32) #1

declare dso_local %struct.qedr_cq* @get_qedr_cq(%struct.ib_cq*) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, ...) #1

declare dso_local i32 @qedr_gsi_poll_cq(%struct.ib_cq*, i32, %struct.ib_wc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @qed_chain_get_cons_idx_u32(i32*) #1

declare dso_local i64 @is_valid_cqe(%struct.qedr_cq*, %union.rdma_cqe*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local %struct.qedr_qp* @cqe_get_qp(%union.rdma_cqe*) #1

declare dso_local i32 @WARN(i32, i8*, %union.rdma_cqe*) #1

declare dso_local i32 @cqe_get_type(%union.rdma_cqe*) #1

declare dso_local i32 @qedr_poll_cq_req(%struct.qedr_dev*, %struct.qedr_qp*, %struct.qedr_cq*, i32, %struct.ib_wc*, i32*) #1

declare dso_local i32 @try_consume_req_cqe(%struct.qedr_cq*, %struct.qedr_qp*, i32*, i32*) #1

declare dso_local i32 @qedr_poll_cq_resp(%struct.qedr_dev*, %struct.qedr_qp*, %struct.qedr_cq*, i32, %struct.ib_wc*, i32*, i32*) #1

declare dso_local i32 @qedr_poll_cq_resp_srq(%struct.qedr_dev*, %struct.qedr_qp*, %struct.qedr_cq*, i32, %struct.ib_wc*, i32*) #1

declare dso_local %union.rdma_cqe* @get_cqe(%struct.qedr_cq*) #1

declare dso_local i32 @doorbell_cq(%struct.qedr_cq*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
