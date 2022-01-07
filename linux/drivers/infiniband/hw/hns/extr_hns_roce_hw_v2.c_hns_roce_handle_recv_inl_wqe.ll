; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_handle_recv_inl_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_handle_recv_inl_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_v2_cqe = type { i32 }
%struct.hns_roce_qp = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.hns_roce_rinl_sge* }
%struct.hns_roce_rinl_sge = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ib_wc = type { i32, i32 }

@V2_CQE_BYTE_4_WQE_INDX_M = common dso_local global i32 0, align 4
@V2_CQE_BYTE_4_WQE_INDX_S = common dso_local global i32 0, align 4
@IB_WC_LOC_LEN_ERR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_v2_cqe*, %struct.hns_roce_qp**, %struct.ib_wc*)* @hns_roce_handle_recv_inl_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_handle_recv_inl_wqe(%struct.hns_roce_v2_cqe* %0, %struct.hns_roce_qp** %1, %struct.ib_wc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_v2_cqe*, align 8
  %6 = alloca %struct.hns_roce_qp**, align 8
  %7 = alloca %struct.ib_wc*, align 8
  %8 = alloca %struct.hns_roce_rinl_sge*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.hns_roce_v2_cqe* %0, %struct.hns_roce_v2_cqe** %5, align 8
  store %struct.hns_roce_qp** %1, %struct.hns_roce_qp*** %6, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %7, align 8
  %16 = load %struct.hns_roce_v2_cqe*, %struct.hns_roce_v2_cqe** %5, align 8
  %17 = getelementptr inbounds %struct.hns_roce_v2_cqe, %struct.hns_roce_v2_cqe* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @V2_CQE_BYTE_4_WQE_INDX_M, align 4
  %20 = load i32, i32* @V2_CQE_BYTE_4_WQE_INDX_S, align 4
  %21 = call i32 @roce_get_field(i32 %18, i32 %19, i32 %20)
  %22 = and i32 %21, 65535
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.hns_roce_qp**, %struct.hns_roce_qp*** %6, align 8
  %25 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %24, align 8
  %26 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %23, %29
  store i32 %30, i32* %10, align 4
  %31 = load %struct.hns_roce_qp**, %struct.hns_roce_qp*** %6, align 8
  %32 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %31, align 8
  %33 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load %struct.hns_roce_rinl_sge*, %struct.hns_roce_rinl_sge** %39, align 8
  store %struct.hns_roce_rinl_sge* %40, %struct.hns_roce_rinl_sge** %8, align 8
  %41 = load %struct.hns_roce_qp**, %struct.hns_roce_qp*** %6, align 8
  %42 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %41, align 8
  %43 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %11, align 4
  %51 = load %struct.hns_roce_qp**, %struct.hns_roce_qp*** %6, align 8
  %52 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i8* @get_recv_wqe(%struct.hns_roce_qp* %52, i32 %53)
  store i8* %54, i8** %15, align 8
  %55 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %56 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %93, %3
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i1 [ false, %58 ], [ %64, %62 ]
  br i1 %66, label %67, label %96

67:                                               ; preds = %65
  %68 = load %struct.hns_roce_rinl_sge*, %struct.hns_roce_rinl_sge** %8, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.hns_roce_rinl_sge, %struct.hns_roce_rinl_sge* %68, i64 %70
  %72 = getelementptr inbounds %struct.hns_roce_rinl_sge, %struct.hns_roce_rinl_sge* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @min(i32 %73, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load %struct.hns_roce_rinl_sge*, %struct.hns_roce_rinl_sge** %8, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.hns_roce_rinl_sge, %struct.hns_roce_rinl_sge* %76, i64 %78
  %80 = getelementptr inbounds %struct.hns_roce_rinl_sge, %struct.hns_roce_rinl_sge* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = load i8*, i8** %15, align 8
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @memcpy(i8* %82, i8* %83, i32 %84)
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %13, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i8*, i8** %15, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr i8, i8* %90, i64 %91
  store i8* %92, i8** %15, align 8
  br label %93

93:                                               ; preds = %67
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %58

96:                                               ; preds = %65
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* @IB_WC_LOC_LEN_ERR, align 4
  %101 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %102 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @EAGAIN, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %106

105:                                              ; preds = %96
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %99
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @roce_get_field(i32, i32, i32) #1

declare dso_local i8* @get_recv_wqe(%struct.hns_roce_qp*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
