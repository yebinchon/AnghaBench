; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_set_extend_sge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_set_extend_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_qp = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ib_send_wr = type { i32, %struct.ib_sge* }
%struct.ib_sge = type { i32 }
%struct.hns_roce_v2_wqe_data_seg = type { i32 }

@IB_QPT_RC = common dso_local global i64 0, align 8
@IB_QPT_UC = common dso_local global i64 0, align 8
@HNS_ROCE_V2_UC_RC_SGE_NUM_IN_WQE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_qp*, %struct.ib_send_wr*, i32*)* @set_extend_sge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_extend_sge(%struct.hns_roce_qp* %0, %struct.ib_send_wr* %1, i32* %2) #0 {
  %4 = alloca %struct.hns_roce_qp*, align 8
  %5 = alloca %struct.ib_send_wr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hns_roce_v2_wqe_data_seg*, align 8
  %8 = alloca %struct.ib_sge*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hns_roce_qp* %0, %struct.hns_roce_qp** %4, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %16 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IB_QPT_RC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %23 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IB_QPT_UC, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21, %3
  %29 = load i32, i32* @HNS_ROCE_V2_UC_RC_SGE_NUM_IN_WQE, align 4
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %28, %21
  %31 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %32 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %37 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %36, i32 0, i32 1
  %38 = load %struct.ib_sge*, %struct.ib_sge** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %38, i64 %40
  store %struct.ib_sge* %41, %struct.ib_sge** %8, align 8
  %42 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %43 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %13, align 4
  %46 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %50 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 1
  %54 = and i32 %48, %53
  %55 = call %struct.hns_roce_v2_wqe_data_seg* @get_send_extend_sge(%struct.hns_roce_qp* %46, i32 %54)
  store %struct.hns_roce_v2_wqe_data_seg* %55, %struct.hns_roce_v2_wqe_data_seg** %7, align 8
  %56 = load %struct.hns_roce_v2_wqe_data_seg*, %struct.hns_roce_v2_wqe_data_seg** %7, align 8
  %57 = ptrtoint %struct.hns_roce_v2_wqe_data_seg* %56 to i64
  %58 = load i32, i32* %13, align 4
  %59 = shl i32 1, %58
  %60 = call i64 @round_up(i64 %57, i32 %59)
  %61 = load %struct.hns_roce_v2_wqe_data_seg*, %struct.hns_roce_v2_wqe_data_seg** %7, align 8
  %62 = ptrtoint %struct.hns_roce_v2_wqe_data_seg* %61 to i64
  %63 = sub i64 %60, %62
  %64 = udiv i64 %63, 4
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %126

69:                                               ; preds = %30
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %73

73:                                               ; preds = %89, %69
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %73
  %78 = load %struct.hns_roce_v2_wqe_data_seg*, %struct.hns_roce_v2_wqe_data_seg** %7, align 8
  %79 = getelementptr inbounds %struct.hns_roce_v2_wqe_data_seg, %struct.hns_roce_v2_wqe_data_seg* %78, i32 1
  store %struct.hns_roce_v2_wqe_data_seg* %79, %struct.hns_roce_v2_wqe_data_seg** %7, align 8
  %80 = ptrtoint %struct.hns_roce_v2_wqe_data_seg* %78 to i32
  %81 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %81, i64 %83
  %85 = call i32 @set_data_seg_v2(i32 %80, %struct.ib_sge* %84)
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %86, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %77
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %73

92:                                               ; preds = %73
  %93 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %97 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 %99, 1
  %101 = and i32 %95, %100
  %102 = call %struct.hns_roce_v2_wqe_data_seg* @get_send_extend_sge(%struct.hns_roce_qp* %93, i32 %101)
  store %struct.hns_roce_v2_wqe_data_seg* %102, %struct.hns_roce_v2_wqe_data_seg** %7, align 8
  store i32 0, i32* %14, align 4
  br label %103

103:                                              ; preds = %122, %92
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %125

107:                                              ; preds = %103
  %108 = load %struct.hns_roce_v2_wqe_data_seg*, %struct.hns_roce_v2_wqe_data_seg** %7, align 8
  %109 = getelementptr inbounds %struct.hns_roce_v2_wqe_data_seg, %struct.hns_roce_v2_wqe_data_seg* %108, i32 1
  store %struct.hns_roce_v2_wqe_data_seg* %109, %struct.hns_roce_v2_wqe_data_seg** %7, align 8
  %110 = ptrtoint %struct.hns_roce_v2_wqe_data_seg* %108 to i32
  %111 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %111, i64 %113
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %114, i64 %116
  %118 = call i32 @set_data_seg_v2(i32 %110, %struct.ib_sge* %117)
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %119, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %107
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %14, align 4
  br label %103

125:                                              ; preds = %103
  br label %147

126:                                              ; preds = %30
  store i32 0, i32* %14, align 4
  br label %127

127:                                              ; preds = %143, %126
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %146

131:                                              ; preds = %127
  %132 = load %struct.hns_roce_v2_wqe_data_seg*, %struct.hns_roce_v2_wqe_data_seg** %7, align 8
  %133 = getelementptr inbounds %struct.hns_roce_v2_wqe_data_seg, %struct.hns_roce_v2_wqe_data_seg* %132, i32 1
  store %struct.hns_roce_v2_wqe_data_seg* %133, %struct.hns_roce_v2_wqe_data_seg** %7, align 8
  %134 = ptrtoint %struct.hns_roce_v2_wqe_data_seg* %132 to i32
  %135 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %135, i64 %137
  %139 = call i32 @set_data_seg_v2(i32 %134, %struct.ib_sge* %138)
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* %140, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %131
  %144 = load i32, i32* %14, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %14, align 4
  br label %127

146:                                              ; preds = %127
  br label %147

147:                                              ; preds = %146, %125
  ret void
}

declare dso_local %struct.hns_roce_v2_wqe_data_seg* @get_send_extend_sge(%struct.hns_roce_qp*, i32) #1

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local i32 @set_data_seg_v2(i32, %struct.ib_sge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
