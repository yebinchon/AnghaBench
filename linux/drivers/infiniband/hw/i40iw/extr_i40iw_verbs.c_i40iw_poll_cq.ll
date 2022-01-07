; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_poll_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i32, i32, i32, %struct.ib_qp*, %struct.TYPE_7__, i8*, i32, i32, i64 }
%struct.ib_qp = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.i40iw_cq = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.i40iw_cq_uk }
%struct.i40iw_cq_uk = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.i40iw_cq_uk.0*, %struct.i40iw_cq_poll_info*)* }
%struct.i40iw_cq_uk.0 = type opaque
%struct.i40iw_cq_poll_info = type opaque
%struct.i40iw_cq_poll_info.1 = type { i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.i40iw_sc_qp = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.i40iw_qp = type { i64, i32, i32 }

@I40IW_ERR_QUEUE_EMPTY = common dso_local global i32 0, align 4
@I40IW_ERR_QUEUE_DESTROYED = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@IB_WC_RDMA_WRITE = common dso_local global i8* null, align 8
@IB_WC_RDMA_READ = common dso_local global i8* null, align 8
@IB_WC_SEND = common dso_local global i8* null, align 8
@IB_WC_RECV = common dso_local global i8* null, align 8
@I40IW_QP_STATE_RTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cq*, i32, %struct.ib_wc*)* @i40iw_poll_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_poll_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_wc* %2) #0 {
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_wc*, align 8
  %7 = alloca %struct.i40iw_cq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40iw_cq_poll_info.1, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.i40iw_cq_uk*, align 8
  %12 = alloca %struct.i40iw_sc_qp*, align 8
  %13 = alloca %struct.i40iw_qp*, align 8
  %14 = alloca i64, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %16 = bitcast %struct.ib_cq* %15 to %struct.i40iw_cq*
  store %struct.i40iw_cq* %16, %struct.i40iw_cq** %7, align 8
  %17 = load %struct.i40iw_cq*, %struct.i40iw_cq** %7, align 8
  %18 = getelementptr inbounds %struct.i40iw_cq, %struct.i40iw_cq* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.i40iw_cq_uk* %19, %struct.i40iw_cq_uk** %11, align 8
  %20 = load %struct.i40iw_cq*, %struct.i40iw_cq** %7, align 8
  %21 = getelementptr inbounds %struct.i40iw_cq, %struct.i40iw_cq* %20, i32 0, i32 0
  %22 = load i64, i64* %14, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  br label %24

24:                                               ; preds = %154, %45, %3
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %163

28:                                               ; preds = %24
  %29 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %11, align 8
  %30 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32 (%struct.i40iw_cq_uk.0*, %struct.i40iw_cq_poll_info*)*, i32 (%struct.i40iw_cq_uk.0*, %struct.i40iw_cq_poll_info*)** %31, align 8
  %33 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %11, align 8
  %34 = bitcast %struct.i40iw_cq_uk* %33 to %struct.i40iw_cq_uk.0*
  %35 = bitcast %struct.i40iw_cq_poll_info.1* %9 to %struct.i40iw_cq_poll_info*
  %36 = call i32 %32(%struct.i40iw_cq_uk.0* %34, %struct.i40iw_cq_poll_info* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @I40IW_ERR_QUEUE_EMPTY, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %163

41:                                               ; preds = %28
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @I40IW_ERR_QUEUE_DESTROYED, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %24

46:                                               ; preds = %41
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i32 -1, i32* %8, align 4
  br label %53

53:                                               ; preds = %52, %49
  br label %163

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %58 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %57, i32 0, i32 8
  store i64 0, i64* %58, align 8
  %59 = getelementptr inbounds %struct.i40iw_cq_poll_info.1, %struct.i40iw_cq_poll_info.1* %9, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %62 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 4
  %63 = getelementptr inbounds %struct.i40iw_cq_poll_info.1, %struct.i40iw_cq_poll_info.1* %9, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %56
  %67 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %68 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %69 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = getelementptr inbounds %struct.i40iw_cq_poll_info.1, %struct.i40iw_cq_poll_info.1* %9, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = shl i32 %71, 16
  %73 = getelementptr inbounds %struct.i40iw_cq_poll_info.1, %struct.i40iw_cq_poll_info.1* %9, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %72, %74
  %76 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %77 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %82

78:                                               ; preds = %56
  %79 = load i32, i32* @IB_WC_SUCCESS, align 4
  %80 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %81 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %78, %66
  %83 = getelementptr inbounds %struct.i40iw_cq_poll_info.1, %struct.i40iw_cq_poll_info.1* %9, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  switch i32 %84, label %101 [
    i32 133, label %85
    i32 134, label %89
    i32 135, label %89
    i32 129, label %93
    i32 128, label %93
    i32 130, label %93
    i32 131, label %93
    i32 132, label %97
  ]

85:                                               ; preds = %82
  %86 = load i8*, i8** @IB_WC_RDMA_WRITE, align 8
  %87 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %88 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %87, i32 0, i32 5
  store i8* %86, i8** %88, align 8
  br label %105

89:                                               ; preds = %82, %82
  %90 = load i8*, i8** @IB_WC_RDMA_READ, align 8
  %91 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %92 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %91, i32 0, i32 5
  store i8* %90, i8** %92, align 8
  br label %105

93:                                               ; preds = %82, %82, %82, %82
  %94 = load i8*, i8** @IB_WC_SEND, align 8
  %95 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %96 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %95, i32 0, i32 5
  store i8* %94, i8** %96, align 8
  br label %105

97:                                               ; preds = %82
  %98 = load i8*, i8** @IB_WC_RECV, align 8
  %99 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %100 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %99, i32 0, i32 5
  store i8* %98, i8** %100, align 8
  br label %105

101:                                              ; preds = %82
  %102 = load i8*, i8** @IB_WC_RECV, align 8
  %103 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %104 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %103, i32 0, i32 5
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %101, %97, %93, %89, %85
  %106 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %107 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  %109 = getelementptr inbounds %struct.i40iw_cq_poll_info.1, %struct.i40iw_cq_poll_info.1* %9, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to %struct.i40iw_sc_qp*
  store %struct.i40iw_sc_qp* %111, %struct.i40iw_sc_qp** %12, align 8
  %112 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %12, align 8
  %113 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to %struct.ib_qp*
  %116 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %117 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %116, i32 0, i32 3
  store %struct.ib_qp* %115, %struct.ib_qp** %117, align 8
  %118 = getelementptr inbounds %struct.i40iw_cq_poll_info.1, %struct.i40iw_cq_poll_info.1* %9, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %121 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %12, align 8
  %123 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to %struct.i40iw_qp*
  store %struct.i40iw_qp* %125, %struct.i40iw_qp** %13, align 8
  %126 = load %struct.i40iw_qp*, %struct.i40iw_qp** %13, align 8
  %127 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @I40IW_QP_STATE_RTS, align 8
  %130 = icmp sgt i64 %128, %129
  br i1 %130, label %131, label %154

131:                                              ; preds = %105
  %132 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %12, align 8
  %133 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @I40IW_RING_MORE_WORK(i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %131
  %139 = load %struct.i40iw_qp*, %struct.i40iw_qp** %13, align 8
  %140 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %139, i32 0, i32 2
  %141 = call i32 @complete(i32* %140)
  br label %142

142:                                              ; preds = %138, %131
  %143 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %12, align 8
  %144 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @I40IW_RING_MORE_WORK(i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %142
  %150 = load %struct.i40iw_qp*, %struct.i40iw_qp** %13, align 8
  %151 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %150, i32 0, i32 1
  %152 = call i32 @complete(i32* %151)
  br label %153

153:                                              ; preds = %149, %142
  br label %154

154:                                              ; preds = %153, %105
  %155 = getelementptr inbounds %struct.i40iw_cq_poll_info.1, %struct.i40iw_cq_poll_info.1* %9, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %158 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %160 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %159, i32 1
  store %struct.ib_wc* %160, %struct.ib_wc** %6, align 8
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %24

163:                                              ; preds = %53, %40, %24
  %164 = load %struct.i40iw_cq*, %struct.i40iw_cq** %7, align 8
  %165 = getelementptr inbounds %struct.i40iw_cq, %struct.i40iw_cq* %164, i32 0, i32 0
  %166 = load i64, i64* %14, align 8
  %167 = call i32 @spin_unlock_irqrestore(i32* %165, i64 %166)
  %168 = load i32, i32* %8, align 4
  ret i32 %168
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @I40IW_RING_MORE_WORK(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
