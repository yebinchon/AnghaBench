; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_write_cqc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_write_cqc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i64 }
%struct.hns_roce_cq = type { i32, i32* }
%struct.hns_roce_cq_context = type { i32, i8*, i32, i8*, i32, i8*, i32 }
%struct.hns_roce_buf_list = type { i32, i64 }
%struct.hns_roce_v1_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hns_roce_buf_list }

@HNS_ROCE_V1_TPTR_ENTRY_SIZE = common dso_local global i32 0, align 4
@CQ_CONTEXT_CQC_BYTE_4_CQC_STATE_M = common dso_local global i32 0, align 4
@CQ_CONTEXT_CQC_BYTE_4_CQC_STATE_S = common dso_local global i32 0, align 4
@CQ_STATE_VALID = common dso_local global i32 0, align 4
@CQ_CONTEXT_CQC_BYTE_4_CQN_M = common dso_local global i32 0, align 4
@CQ_CONTEXT_CQC_BYTE_4_CQN_S = common dso_local global i32 0, align 4
@CQ_CONTEXT_CQC_BYTE_12_CQ_BT_H_M = common dso_local global i32 0, align 4
@CQ_CONTEXT_CQC_BYTE_12_CQ_BT_H_S = common dso_local global i32 0, align 4
@CQ_CONTEXT_CQC_BYTE_12_CQ_CQE_SHIFT_M = common dso_local global i32 0, align 4
@CQ_CONTEXT_CQC_BYTE_12_CQ_CQE_SHIFT_S = common dso_local global i32 0, align 4
@CQ_CONTEXT_CQC_BYTE_12_CEQN_M = common dso_local global i32 0, align 4
@CQ_CONTEXT_CQC_BYTE_12_CEQN_S = common dso_local global i32 0, align 4
@CQ_CONTEXT_CQC_BYTE_20_CUR_CQE_BA0_H_M = common dso_local global i32 0, align 4
@CQ_CONTEXT_CQC_BYTE_20_CUR_CQE_BA0_H_S = common dso_local global i32 0, align 4
@CQ_CONTEXT_CQC_BYTE_20_CQ_CUR_INDEX_M = common dso_local global i32 0, align 4
@CQ_CONTEXT_CQC_BYTE_20_CQ_CUR_INDEX_S = common dso_local global i32 0, align 4
@CQ_CONTEXT_CQC_BYTE_20_CQE_TPTR_ADDR_H_M = common dso_local global i32 0, align 4
@CQ_CONTEXT_CQC_BYTE_20_CQE_TPTR_ADDR_H_S = common dso_local global i32 0, align 4
@CQ_CONTEXT_CQC_BYTE_32_CUR_CQE_BA1_H_M = common dso_local global i32 0, align 4
@CQ_CONTEXT_CQC_BYTE_32_CUR_CQE_BA1_H_S = common dso_local global i32 0, align 4
@CQ_CONTEXT_CQC_BYTE_32_SE_FLAG_S = common dso_local global i32 0, align 4
@CQ_CONTEXT_CQC_BYTE_32_CE_FLAG_S = common dso_local global i32 0, align 4
@CQ_CONTEXT_CQC_BYTE_32_NOTIFICATION_FLAG_S = common dso_local global i32 0, align 4
@CQ_CQNTEXT_CQC_BYTE_32_TYPE_OF_COMPLETION_NOTIFICATION_S = common dso_local global i32 0, align 4
@CQ_CONTEXT_CQC_BYTE_32_CQ_CONS_IDX_M = common dso_local global i32 0, align 4
@CQ_CONTEXT_CQC_BYTE_32_CQ_CONS_IDX_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, %struct.hns_roce_cq*, i8*, i32*, i32, i32, i32)* @hns_roce_v1_write_cqc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_v1_write_cqc(%struct.hns_roce_dev* %0, %struct.hns_roce_cq* %1, i8* %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.hns_roce_dev*, align 8
  %9 = alloca %struct.hns_roce_cq*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hns_roce_cq_context*, align 8
  %16 = alloca %struct.hns_roce_buf_list*, align 8
  %17 = alloca %struct.hns_roce_v1_priv*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %8, align 8
  store %struct.hns_roce_cq* %1, %struct.hns_roce_cq** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store %struct.hns_roce_cq_context* null, %struct.hns_roce_cq_context** %15, align 8
  %20 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %21 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.hns_roce_v1_priv*
  store %struct.hns_roce_v1_priv* %23, %struct.hns_roce_v1_priv** %17, align 8
  %24 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %17, align 8
  %25 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.hns_roce_buf_list* %26, %struct.hns_roce_buf_list** %16, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = bitcast i8* %27 to %struct.hns_roce_cq_context*
  store %struct.hns_roce_cq_context* %28, %struct.hns_roce_cq_context** %15, align 8
  %29 = load %struct.hns_roce_cq_context*, %struct.hns_roce_cq_context** %15, align 8
  %30 = call i32 @memset(%struct.hns_roce_cq_context* %29, i32 0, i32 56)
  %31 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %9, align 8
  %32 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @HNS_ROCE_V1_TPTR_ENTRY_SIZE, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %19, align 4
  %36 = load %struct.hns_roce_buf_list*, %struct.hns_roce_buf_list** %16, align 8
  %37 = getelementptr inbounds %struct.hns_roce_buf_list, %struct.hns_roce_buf_list* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %19, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %18, align 4
  %41 = load %struct.hns_roce_buf_list*, %struct.hns_roce_buf_list** %16, align 8
  %42 = getelementptr inbounds %struct.hns_roce_buf_list, %struct.hns_roce_buf_list* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %19, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = inttoptr i64 %46 to i32*
  %48 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %9, align 8
  %49 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %48, i32 0, i32 1
  store i32* %47, i32** %49, align 8
  %50 = load %struct.hns_roce_cq_context*, %struct.hns_roce_cq_context** %15, align 8
  %51 = getelementptr inbounds %struct.hns_roce_cq_context, %struct.hns_roce_cq_context* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CQ_CONTEXT_CQC_BYTE_4_CQC_STATE_M, align 4
  %54 = load i32, i32* @CQ_CONTEXT_CQC_BYTE_4_CQC_STATE_S, align 4
  %55 = load i32, i32* @CQ_STATE_VALID, align 4
  %56 = call i32 @roce_set_field(i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.hns_roce_cq_context*, %struct.hns_roce_cq_context** %15, align 8
  %58 = getelementptr inbounds %struct.hns_roce_cq_context, %struct.hns_roce_cq_context* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @CQ_CONTEXT_CQC_BYTE_4_CQN_M, align 4
  %61 = load i32, i32* @CQ_CONTEXT_CQC_BYTE_4_CQN_S, align 4
  %62 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %9, align 8
  %63 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @roce_set_field(i32 %59, i32 %60, i32 %61, i32 %64)
  %66 = load i32, i32* %12, align 4
  %67 = call i8* @cpu_to_le32(i32 %66)
  %68 = load %struct.hns_roce_cq_context*, %struct.hns_roce_cq_context** %15, align 8
  %69 = getelementptr inbounds %struct.hns_roce_cq_context, %struct.hns_roce_cq_context* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load %struct.hns_roce_cq_context*, %struct.hns_roce_cq_context** %15, align 8
  %71 = getelementptr inbounds %struct.hns_roce_cq_context, %struct.hns_roce_cq_context* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @CQ_CONTEXT_CQC_BYTE_12_CQ_BT_H_M, align 4
  %74 = load i32, i32* @CQ_CONTEXT_CQC_BYTE_12_CQ_BT_H_S, align 4
  %75 = load i32, i32* %12, align 4
  %76 = ashr i32 %75, 32
  %77 = call i32 @roce_set_field(i32 %72, i32 %73, i32 %74, i32 %76)
  %78 = load %struct.hns_roce_cq_context*, %struct.hns_roce_cq_context** %15, align 8
  %79 = getelementptr inbounds %struct.hns_roce_cq_context, %struct.hns_roce_cq_context* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @CQ_CONTEXT_CQC_BYTE_12_CQ_CQE_SHIFT_M, align 4
  %82 = load i32, i32* @CQ_CONTEXT_CQC_BYTE_12_CQ_CQE_SHIFT_S, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @ilog2(i32 %83)
  %85 = call i32 @roce_set_field(i32 %80, i32 %81, i32 %82, i32 %84)
  %86 = load %struct.hns_roce_cq_context*, %struct.hns_roce_cq_context** %15, align 8
  %87 = getelementptr inbounds %struct.hns_roce_cq_context, %struct.hns_roce_cq_context* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @CQ_CONTEXT_CQC_BYTE_12_CEQN_M, align 4
  %90 = load i32, i32* @CQ_CONTEXT_CQC_BYTE_12_CEQN_S, align 4
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @roce_set_field(i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = load i32*, i32** %11, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @cpu_to_le32(i32 %95)
  %97 = load %struct.hns_roce_cq_context*, %struct.hns_roce_cq_context** %15, align 8
  %98 = getelementptr inbounds %struct.hns_roce_cq_context, %struct.hns_roce_cq_context* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load %struct.hns_roce_cq_context*, %struct.hns_roce_cq_context** %15, align 8
  %100 = getelementptr inbounds %struct.hns_roce_cq_context, %struct.hns_roce_cq_context* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @CQ_CONTEXT_CQC_BYTE_20_CUR_CQE_BA0_H_M, align 4
  %103 = load i32, i32* @CQ_CONTEXT_CQC_BYTE_20_CUR_CQE_BA0_H_S, align 4
  %104 = load i32*, i32** %11, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = ashr i32 %106, 32
  %108 = call i32 @roce_set_field(i32 %101, i32 %102, i32 %103, i32 %107)
  %109 = load %struct.hns_roce_cq_context*, %struct.hns_roce_cq_context** %15, align 8
  %110 = getelementptr inbounds %struct.hns_roce_cq_context, %struct.hns_roce_cq_context* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @CQ_CONTEXT_CQC_BYTE_20_CQ_CUR_INDEX_M, align 4
  %113 = load i32, i32* @CQ_CONTEXT_CQC_BYTE_20_CQ_CUR_INDEX_S, align 4
  %114 = call i32 @roce_set_field(i32 %111, i32 %112, i32 %113, i32 0)
  %115 = load %struct.hns_roce_cq_context*, %struct.hns_roce_cq_context** %15, align 8
  %116 = getelementptr inbounds %struct.hns_roce_cq_context, %struct.hns_roce_cq_context* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @CQ_CONTEXT_CQC_BYTE_20_CQE_TPTR_ADDR_H_M, align 4
  %119 = load i32, i32* @CQ_CONTEXT_CQC_BYTE_20_CQE_TPTR_ADDR_H_S, align 4
  %120 = load i32, i32* %18, align 4
  %121 = ashr i32 %120, 44
  %122 = call i32 @roce_set_field(i32 %117, i32 %118, i32 %119, i32 %121)
  %123 = load i32, i32* %18, align 4
  %124 = ashr i32 %123, 12
  %125 = call i8* @cpu_to_le32(i32 %124)
  %126 = load %struct.hns_roce_cq_context*, %struct.hns_roce_cq_context** %15, align 8
  %127 = getelementptr inbounds %struct.hns_roce_cq_context, %struct.hns_roce_cq_context* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  %128 = load %struct.hns_roce_cq_context*, %struct.hns_roce_cq_context** %15, align 8
  %129 = getelementptr inbounds %struct.hns_roce_cq_context, %struct.hns_roce_cq_context* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @CQ_CONTEXT_CQC_BYTE_32_CUR_CQE_BA1_H_M, align 4
  %132 = load i32, i32* @CQ_CONTEXT_CQC_BYTE_32_CUR_CQE_BA1_H_S, align 4
  %133 = call i32 @roce_set_field(i32 %130, i32 %131, i32 %132, i32 0)
  %134 = load %struct.hns_roce_cq_context*, %struct.hns_roce_cq_context** %15, align 8
  %135 = getelementptr inbounds %struct.hns_roce_cq_context, %struct.hns_roce_cq_context* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @CQ_CONTEXT_CQC_BYTE_32_SE_FLAG_S, align 4
  %138 = call i32 @roce_set_bit(i32 %136, i32 %137, i32 0)
  %139 = load %struct.hns_roce_cq_context*, %struct.hns_roce_cq_context** %15, align 8
  %140 = getelementptr inbounds %struct.hns_roce_cq_context, %struct.hns_roce_cq_context* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @CQ_CONTEXT_CQC_BYTE_32_CE_FLAG_S, align 4
  %143 = call i32 @roce_set_bit(i32 %141, i32 %142, i32 0)
  %144 = load %struct.hns_roce_cq_context*, %struct.hns_roce_cq_context** %15, align 8
  %145 = getelementptr inbounds %struct.hns_roce_cq_context, %struct.hns_roce_cq_context* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @CQ_CONTEXT_CQC_BYTE_32_NOTIFICATION_FLAG_S, align 4
  %148 = call i32 @roce_set_bit(i32 %146, i32 %147, i32 0)
  %149 = load %struct.hns_roce_cq_context*, %struct.hns_roce_cq_context** %15, align 8
  %150 = getelementptr inbounds %struct.hns_roce_cq_context, %struct.hns_roce_cq_context* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @CQ_CQNTEXT_CQC_BYTE_32_TYPE_OF_COMPLETION_NOTIFICATION_S, align 4
  %153 = call i32 @roce_set_bit(i32 %151, i32 %152, i32 0)
  %154 = load %struct.hns_roce_cq_context*, %struct.hns_roce_cq_context** %15, align 8
  %155 = getelementptr inbounds %struct.hns_roce_cq_context, %struct.hns_roce_cq_context* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @CQ_CONTEXT_CQC_BYTE_32_CQ_CONS_IDX_M, align 4
  %158 = load i32, i32* @CQ_CONTEXT_CQC_BYTE_32_CQ_CONS_IDX_S, align 4
  %159 = call i32 @roce_set_field(i32 %156, i32 %157, i32 %158, i32 0)
  ret void
}

declare dso_local i32 @memset(%struct.hns_roce_cq_context*, i32, i32) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @roce_set_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
