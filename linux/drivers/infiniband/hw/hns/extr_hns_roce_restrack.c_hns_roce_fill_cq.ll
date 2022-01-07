; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_restrack.c_hns_roce_fill_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_restrack.c_hns_roce_fill_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hns_roce_v2_cq_context = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"state\00", align 1
@V2_CQC_BYTE_4_ARM_ST_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_4_ARM_ST_S = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"ceqn\00", align 1
@V2_CQC_BYTE_4_CEQN_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_4_CEQN_S = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"cqn\00", align 1
@V2_CQC_BYTE_8_CQN_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_8_CQN_S = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"hopnum\00", align 1
@V2_CQC_BYTE_16_CQE_HOP_NUM_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_16_CQE_HOP_NUM_S = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"pi\00", align 1
@V2_CQC_BYTE_28_CQ_PRODUCER_IDX_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_28_CQ_PRODUCER_IDX_S = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"ci\00", align 1
@V2_CQC_BYTE_32_CQ_CONSUMER_IDX_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_32_CQ_CONSUMER_IDX_S = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"coalesce\00", align 1
@V2_CQC_BYTE_56_CQ_MAX_CNT_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_56_CQ_MAX_CNT_S = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"period\00", align 1
@V2_CQC_BYTE_56_CQ_PERIOD_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_56_CQ_PERIOD_S = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"cnt\00", align 1
@V2_CQC_BYTE_52_CQE_CNT_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_52_CQE_CNT_S = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.hns_roce_v2_cq_context*)* @hns_roce_fill_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_fill_cq(%struct.sk_buff* %0, %struct.hns_roce_v2_cq_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hns_roce_v2_cq_context*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.hns_roce_v2_cq_context* %1, %struct.hns_roce_v2_cq_context** %5, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %5, align 8
  %8 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @V2_CQC_BYTE_4_ARM_ST_M, align 4
  %11 = load i32, i32* @V2_CQC_BYTE_4_ARM_ST_S, align 4
  %12 = call i32 @roce_get_field(i32 %9, i32 %10, i32 %11)
  %13 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %105

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %5, align 8
  %19 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @V2_CQC_BYTE_4_CEQN_M, align 4
  %22 = load i32, i32* @V2_CQC_BYTE_4_CEQN_S, align 4
  %23 = call i32 @roce_get_field(i32 %20, i32 %21, i32 %22)
  %24 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %105

27:                                               ; preds = %16
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %5, align 8
  %30 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @V2_CQC_BYTE_8_CQN_M, align 4
  %33 = load i32, i32* @V2_CQC_BYTE_8_CQN_S, align 4
  %34 = call i32 @roce_get_field(i32 %31, i32 %32, i32 %33)
  %35 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %105

38:                                               ; preds = %27
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %5, align 8
  %41 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @V2_CQC_BYTE_16_CQE_HOP_NUM_M, align 4
  %44 = load i32, i32* @V2_CQC_BYTE_16_CQE_HOP_NUM_S, align 4
  %45 = call i32 @roce_get_field(i32 %42, i32 %43, i32 %44)
  %46 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %105

49:                                               ; preds = %38
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %5, align 8
  %52 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @V2_CQC_BYTE_28_CQ_PRODUCER_IDX_M, align 4
  %55 = load i32, i32* @V2_CQC_BYTE_28_CQ_PRODUCER_IDX_S, align 4
  %56 = call i32 @roce_get_field(i32 %53, i32 %54, i32 %55)
  %57 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %105

60:                                               ; preds = %49
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %5, align 8
  %63 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @V2_CQC_BYTE_32_CQ_CONSUMER_IDX_M, align 4
  %66 = load i32, i32* @V2_CQC_BYTE_32_CQ_CONSUMER_IDX_S, align 4
  %67 = call i32 @roce_get_field(i32 %64, i32 %65, i32 %66)
  %68 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %105

71:                                               ; preds = %60
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %5, align 8
  %74 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @V2_CQC_BYTE_56_CQ_MAX_CNT_M, align 4
  %77 = load i32, i32* @V2_CQC_BYTE_56_CQ_MAX_CNT_S, align 4
  %78 = call i32 @roce_get_field(i32 %75, i32 %76, i32 %77)
  %79 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %105

82:                                               ; preds = %71
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %5, align 8
  %85 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @V2_CQC_BYTE_56_CQ_PERIOD_M, align 4
  %88 = load i32, i32* @V2_CQC_BYTE_56_CQ_PERIOD_S, align 4
  %89 = call i32 @roce_get_field(i32 %86, i32 %87, i32 %88)
  %90 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %105

93:                                               ; preds = %82
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %5, align 8
  %96 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @V2_CQC_BYTE_52_CQE_CNT_M, align 4
  %99 = load i32, i32* @V2_CQC_BYTE_52_CQE_CNT_S, align 4
  %100 = call i32 @roce_get_field(i32 %97, i32 %98, i32 %99)
  %101 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %105

104:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %108

105:                                              ; preds = %103, %92, %81, %70, %59, %48, %37, %26, %15
  %106 = load i32, i32* @EMSGSIZE, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %105, %104
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i64 @rdma_nl_put_driver_u32(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @roce_get_field(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
