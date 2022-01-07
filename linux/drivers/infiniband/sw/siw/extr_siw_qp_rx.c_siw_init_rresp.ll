; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_rx.c_siw_init_rresp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_rx.c_siw_init_rresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_qp = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.siw_rx_stream = type { i64*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.siw_wqe = type { i64, %struct.siw_sqe, i32**, i64 }
%struct.siw_sqe = type { i32, i32, i64, i8*, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64, i64, i8* }

@RDMAP_UNTAGGED_QN_RDMA_READ = common dso_local global i64 0, align 8
@TERM_ERROR_LAYER_DDP = common dso_local global i32 0, align 4
@DDP_ETYPE_UNTAGGED_BUF = common dso_local global i32 0, align 4
@DDP_ECODE_UT_INVALID_MSN_RANGE = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@SIW_WR_IDLE = common dso_local global i64 0, align 8
@SIW_WR_QUEUED = common dso_local global i64 0, align 8
@SIW_OP_READ_RESPONSE = common dso_local global i32 0, align 4
@SIW_WQE_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"siw: [QP %u]: irq %d exceeded %d\0A\00", align 1
@TERM_ERROR_LAYER_RDMAP = common dso_local global i32 0, align 4
@RDMAP_ETYPE_REMOTE_OPERATION = common dso_local global i32 0, align 4
@RDMAP_ECODE_CATASTROPHIC_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siw_qp*, %struct.siw_rx_stream*)* @siw_init_rresp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_init_rresp(%struct.siw_qp* %0, %struct.siw_rx_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.siw_qp*, align 8
  %5 = alloca %struct.siw_rx_stream*, align 8
  %6 = alloca %struct.siw_wqe*, align 8
  %7 = alloca %struct.siw_sqe*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.siw_qp* %0, %struct.siw_qp** %4, align 8
  store %struct.siw_rx_stream* %1, %struct.siw_rx_stream** %5, align 8
  %17 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %18 = call %struct.siw_wqe* @tx_wqe(%struct.siw_qp* %17)
  store %struct.siw_wqe* %18, %struct.siw_wqe** %6, align 8
  %19 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %5, align 8
  %20 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @be64_to_cpu(i32 %23)
  store i8* %24, i8** %8, align 8
  %25 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %5, align 8
  %26 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @be64_to_cpu(i32 %29)
  store i8* %30, i8** %9, align 8
  %31 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %5, align 8
  %32 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @be32_to_cpu(i32 %35)
  store i64 %36, i64* %10, align 8
  %37 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %5, align 8
  %38 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @be32_to_cpu(i32 %41)
  store i64 %42, i64* %11, align 8
  %43 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %5, align 8
  %44 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @be32_to_cpu(i32 %47)
  store i64 %48, i64* %12, align 8
  %49 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %5, align 8
  %50 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @be32_to_cpu(i32 %53)
  store i64 %54, i64* %13, align 8
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %55 = load i64, i64* %13, align 8
  %56 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %5, align 8
  %57 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @RDMAP_UNTAGGED_QN_RDMA_READ, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %55, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %2
  %67 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %68 = load i32, i32* @TERM_ERROR_LAYER_DDP, align 4
  %69 = load i32, i32* @DDP_ETYPE_UNTAGGED_BUF, align 4
  %70 = load i32, i32* @DDP_ECODE_UT_INVALID_MSN_RANGE, align 4
  %71 = call i32 @siw_init_terminate(%struct.siw_qp* %67, i32 %68, i32 %69, i32 %70, i32 0)
  %72 = load i32, i32* @EPROTO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %183

74:                                               ; preds = %2
  %75 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %76 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %75, i32 0, i32 1
  %77 = load i64, i64* %16, align 8
  %78 = call i32 @spin_lock_irqsave(i32* %76, i64 %77)
  %79 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %80 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SIW_WR_IDLE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %74
  %85 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %86 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  %87 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %88 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %87, i32 0, i32 2
  %89 = load i32**, i32*** %88, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 0
  store i32* null, i32** %90, align 8
  %91 = load i64, i64* @SIW_WR_QUEUED, align 8
  %92 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %93 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %95 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %94, i32 0, i32 1
  store %struct.siw_sqe* %95, %struct.siw_sqe** %7, align 8
  br label %99

96:                                               ; preds = %74
  %97 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %98 = call %struct.siw_sqe* @irq_alloc_free(%struct.siw_qp* %97)
  store %struct.siw_sqe* %98, %struct.siw_sqe** %7, align 8
  store i32 0, i32* %14, align 4
  br label %99

99:                                               ; preds = %96, %84
  %100 = load %struct.siw_sqe*, %struct.siw_sqe** %7, align 8
  %101 = call i64 @likely(%struct.siw_sqe* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %148

103:                                              ; preds = %99
  %104 = load i32, i32* @SIW_OP_READ_RESPONSE, align 4
  %105 = load %struct.siw_sqe*, %struct.siw_sqe** %7, align 8
  %106 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load %struct.siw_sqe*, %struct.siw_sqe** %7, align 8
  %109 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %108, i32 0, i32 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  store i64 %107, i64* %112, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = load %struct.siw_sqe*, %struct.siw_sqe** %7, align 8
  %115 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %114, i32 0, i32 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  store i8* %113, i8** %118, align 8
  %119 = load i64, i64* %11, align 8
  %120 = load %struct.siw_sqe*, %struct.siw_sqe** %7, align 8
  %121 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %120, i32 0, i32 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  store i64 %119, i64* %124, align 8
  %125 = load i64, i64* %13, align 8
  %126 = load %struct.siw_sqe*, %struct.siw_sqe** %7, align 8
  %127 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %126, i32 0, i32 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 1
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  store i64 %125, i64* %130, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = load %struct.siw_sqe*, %struct.siw_sqe** %7, align 8
  %133 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %132, i32 0, i32 3
  store i8* %131, i8** %133, align 8
  %134 = load i64, i64* %12, align 8
  %135 = load %struct.siw_sqe*, %struct.siw_sqe** %7, align 8
  %136 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %135, i32 0, i32 2
  store i64 %134, i64* %136, align 8
  %137 = load i64, i64* %10, align 8
  %138 = icmp ne i64 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 1, i32 0
  %141 = load %struct.siw_sqe*, %struct.siw_sqe** %7, align 8
  %142 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.siw_sqe*, %struct.siw_sqe** %7, align 8
  %144 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @SIW_WQE_VALID, align 4
  %147 = call i32 @smp_store_mb(i32 %145, i32 %146)
  br label %171

148:                                              ; preds = %99
  %149 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %150 = call i32 @qp_id(%struct.siw_qp* %149)
  %151 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %152 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %155 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = srem i32 %153, %157
  %159 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %160 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %150, i32 %158, i32 %162)
  %164 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %165 = load i32, i32* @TERM_ERROR_LAYER_RDMAP, align 4
  %166 = load i32, i32* @RDMAP_ETYPE_REMOTE_OPERATION, align 4
  %167 = load i32, i32* @RDMAP_ECODE_CATASTROPHIC_STREAM, align 4
  %168 = call i32 @siw_init_terminate(%struct.siw_qp* %164, i32 %165, i32 %166, i32 %167, i32 0)
  %169 = load i32, i32* @EPROTO, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %15, align 4
  br label %171

171:                                              ; preds = %148, %103
  %172 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %173 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %172, i32 0, i32 1
  %174 = load i64, i64* %16, align 8
  %175 = call i32 @spin_unlock_irqrestore(i32* %173, i64 %174)
  %176 = load i32, i32* %14, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %171
  %179 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %180 = call i32 @siw_sq_start(%struct.siw_qp* %179)
  store i32 %180, i32* %15, align 4
  br label %181

181:                                              ; preds = %178, %171
  %182 = load i32, i32* %15, align 4
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %181, %66
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local %struct.siw_wqe* @tx_wqe(%struct.siw_qp*) #1

declare dso_local i8* @be64_to_cpu(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @siw_init_terminate(%struct.siw_qp*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.siw_sqe* @irq_alloc_free(%struct.siw_qp*) #1

declare dso_local i64 @likely(%struct.siw_sqe*) #1

declare dso_local i32 @smp_store_mb(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32) #1

declare dso_local i32 @qp_id(%struct.siw_qp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @siw_sq_start(%struct.siw_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
