; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_make_send_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_make_send_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rxe_send_wqe = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.rxe_cqe = type { %struct.ib_uverbs_wc, %struct.ib_wc }
%struct.ib_uverbs_wc = type { i32, i32, i8*, i8*, i32, i32 }
%struct.ib_wc = type { %struct.TYPE_6__*, i32, i8*, i8*, i32, i32 }

@IB_WR_RDMA_WRITE_WITH_IMM = common dso_local global i64 0, align 8
@IB_WR_SEND_WITH_IMM = common dso_local global i64 0, align 8
@IB_WC_WITH_IMM = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxe_qp*, %struct.rxe_send_wqe*, %struct.rxe_cqe*)* @make_send_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_send_cqe(%struct.rxe_qp* %0, %struct.rxe_send_wqe* %1, %struct.rxe_cqe* %2) #0 {
  %4 = alloca %struct.rxe_qp*, align 8
  %5 = alloca %struct.rxe_send_wqe*, align 8
  %6 = alloca %struct.rxe_cqe*, align 8
  %7 = alloca %struct.ib_wc*, align 8
  %8 = alloca %struct.ib_uverbs_wc*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %4, align 8
  store %struct.rxe_send_wqe* %1, %struct.rxe_send_wqe** %5, align 8
  store %struct.rxe_cqe* %2, %struct.rxe_cqe** %6, align 8
  %9 = load %struct.rxe_cqe*, %struct.rxe_cqe** %6, align 8
  %10 = call i32 @memset(%struct.rxe_cqe* %9, i32 0, i32 72)
  %11 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %12 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %64, label %15

15:                                               ; preds = %3
  %16 = load %struct.rxe_cqe*, %struct.rxe_cqe** %6, align 8
  %17 = getelementptr inbounds %struct.rxe_cqe, %struct.rxe_cqe* %16, i32 0, i32 1
  store %struct.ib_wc* %17, %struct.ib_wc** %7, align 8
  %18 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %5, align 8
  %19 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %23 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %5, align 8
  %25 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %28 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %5, align 8
  %30 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i8* @wr_to_wc_opcode(i64 %32)
  %34 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %35 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %5, align 8
  %37 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IB_WR_RDMA_WRITE_WITH_IMM, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %15
  %43 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %5, align 8
  %44 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IB_WR_SEND_WITH_IMM, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %42, %15
  %50 = load i8*, i8** @IB_WC_WITH_IMM, align 8
  %51 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %52 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %49, %42
  %54 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %5, align 8
  %55 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %59 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %61 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %60, i32 0, i32 0
  %62 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %63 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %62, i32 0, i32 0
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %63, align 8
  br label %115

64:                                               ; preds = %3
  %65 = load %struct.rxe_cqe*, %struct.rxe_cqe** %6, align 8
  %66 = getelementptr inbounds %struct.rxe_cqe, %struct.rxe_cqe* %65, i32 0, i32 0
  store %struct.ib_uverbs_wc* %66, %struct.ib_uverbs_wc** %8, align 8
  %67 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %5, align 8
  %68 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ib_uverbs_wc*, %struct.ib_uverbs_wc** %8, align 8
  %72 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %5, align 8
  %74 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ib_uverbs_wc*, %struct.ib_uverbs_wc** %8, align 8
  %77 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %5, align 8
  %79 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i8* @wr_to_wc_opcode(i64 %81)
  %83 = load %struct.ib_uverbs_wc*, %struct.ib_uverbs_wc** %8, align 8
  %84 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %5, align 8
  %86 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @IB_WR_RDMA_WRITE_WITH_IMM, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %98, label %91

91:                                               ; preds = %64
  %92 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %5, align 8
  %93 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @IB_WR_SEND_WITH_IMM, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %91, %64
  %99 = load i8*, i8** @IB_WC_WITH_IMM, align 8
  %100 = load %struct.ib_uverbs_wc*, %struct.ib_uverbs_wc** %8, align 8
  %101 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %98, %91
  %103 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %5, align 8
  %104 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ib_uverbs_wc*, %struct.ib_uverbs_wc** %8, align 8
  %108 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %110 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ib_uverbs_wc*, %struct.ib_uverbs_wc** %8, align 8
  %114 = getelementptr inbounds %struct.ib_uverbs_wc, %struct.ib_uverbs_wc* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %102, %53
  ret void
}

declare dso_local i32 @memset(%struct.rxe_cqe*, i32, i32) #1

declare dso_local i8* @wr_to_wc_opcode(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
