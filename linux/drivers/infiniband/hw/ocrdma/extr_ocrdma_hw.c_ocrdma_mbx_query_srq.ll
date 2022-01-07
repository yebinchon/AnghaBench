; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_query_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_query_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_srq = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ib_srq_attr = type { i32, i32, i32 }
%struct.ocrdma_query_srq = type { i32 }
%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_query_srq_rsp = type { i32, i32 }
%struct.ocrdma_mqe = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_CMD_QUERY_SRQ = common dso_local global i32 0, align 4
@OCRDMA_QUERY_SRQ_RSP_MAX_SGE_RECV_MASK = common dso_local global i32 0, align 4
@OCRDMA_QUERY_SRQ_RSP_MAX_RQE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QUERY_SRQ_RSP_SRQ_LIMIT_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_mbx_query_srq(%struct.ocrdma_srq* %0, %struct.ib_srq_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocrdma_srq*, align 8
  %5 = alloca %struct.ib_srq_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocrdma_query_srq*, align 8
  %8 = alloca %struct.ocrdma_dev*, align 8
  %9 = alloca %struct.ocrdma_query_srq_rsp*, align 8
  store %struct.ocrdma_srq* %0, %struct.ocrdma_srq** %4, align 8
  store %struct.ib_srq_attr* %1, %struct.ib_srq_attr** %5, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %13 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ocrdma_dev* @get_ocrdma_dev(i32 %15)
  store %struct.ocrdma_dev* %16, %struct.ocrdma_dev** %8, align 8
  %17 = load i32, i32* @OCRDMA_CMD_QUERY_SRQ, align 4
  %18 = call %struct.ocrdma_query_srq* @ocrdma_init_emb_mqe(i32 %17, i32 4)
  store %struct.ocrdma_query_srq* %18, %struct.ocrdma_query_srq** %7, align 8
  %19 = load %struct.ocrdma_query_srq*, %struct.ocrdma_query_srq** %7, align 8
  %20 = icmp ne %struct.ocrdma_query_srq* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %64

23:                                               ; preds = %2
  %24 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %25 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ocrdma_query_srq*, %struct.ocrdma_query_srq** %7, align 8
  %29 = getelementptr inbounds %struct.ocrdma_query_srq, %struct.ocrdma_query_srq* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %31 = load %struct.ocrdma_query_srq*, %struct.ocrdma_query_srq** %7, align 8
  %32 = bitcast %struct.ocrdma_query_srq* %31 to %struct.ocrdma_mqe*
  %33 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %30, %struct.ocrdma_mqe* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %23
  %37 = load %struct.ocrdma_query_srq*, %struct.ocrdma_query_srq** %7, align 8
  %38 = bitcast %struct.ocrdma_query_srq* %37 to %struct.ocrdma_query_srq_rsp*
  store %struct.ocrdma_query_srq_rsp* %38, %struct.ocrdma_query_srq_rsp** %9, align 8
  %39 = load %struct.ocrdma_query_srq_rsp*, %struct.ocrdma_query_srq_rsp** %9, align 8
  %40 = getelementptr inbounds %struct.ocrdma_query_srq_rsp, %struct.ocrdma_query_srq_rsp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @OCRDMA_QUERY_SRQ_RSP_MAX_SGE_RECV_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %45 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ocrdma_query_srq_rsp*, %struct.ocrdma_query_srq_rsp** %9, align 8
  %47 = getelementptr inbounds %struct.ocrdma_query_srq_rsp, %struct.ocrdma_query_srq_rsp* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @OCRDMA_QUERY_SRQ_RSP_MAX_RQE_SHIFT, align 4
  %50 = ashr i32 %48, %49
  %51 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %52 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ocrdma_query_srq_rsp*, %struct.ocrdma_query_srq_rsp** %9, align 8
  %54 = getelementptr inbounds %struct.ocrdma_query_srq_rsp, %struct.ocrdma_query_srq_rsp* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @OCRDMA_QUERY_SRQ_RSP_SRQ_LIMIT_SHIFT, align 4
  %57 = ashr i32 %55, %56
  %58 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %59 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %36, %23
  %61 = load %struct.ocrdma_query_srq*, %struct.ocrdma_query_srq** %7, align 8
  %62 = call i32 @kfree(%struct.ocrdma_query_srq* %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %21
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(i32) #1

declare dso_local %struct.ocrdma_query_srq* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @kfree(%struct.ocrdma_query_srq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
