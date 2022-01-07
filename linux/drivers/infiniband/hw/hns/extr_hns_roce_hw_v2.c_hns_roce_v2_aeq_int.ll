; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_aeq_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_aeq_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.device* }
%struct.device = type { i32 }
%struct.hns_roce_eq = type { i32, i32, i32, i32, i32 }
%struct.hns_roce_aeqe = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@HNS_ROCE_V2_AEQE_EVENT_TYPE_M = common dso_local global i32 0, align 4
@HNS_ROCE_V2_AEQE_EVENT_TYPE_S = common dso_local global i32 0, align 4
@HNS_ROCE_V2_AEQE_SUB_TYPE_M = common dso_local global i32 0, align 4
@HNS_ROCE_V2_AEQE_SUB_TYPE_S = common dso_local global i32 0, align 4
@HNS_ROCE_V2_AEQE_EVENT_QUEUE_NUM_M = common dso_local global i32 0, align 4
@HNS_ROCE_V2_AEQE_EVENT_QUEUE_NUM_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unhandled event %d on EQ %d at idx %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_eq*)* @hns_roce_v2_aeq_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_aeq_int(%struct.hns_roce_dev* %0, %struct.hns_roce_eq* %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_eq*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hns_roce_aeqe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hns_roce_eq* %1, %struct.hns_roce_eq** %4, align 8
  %13 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %17 = call %struct.hns_roce_aeqe* @next_aeqe_sw_v2(%struct.hns_roce_eq* %16)
  store %struct.hns_roce_aeqe* %17, %struct.hns_roce_aeqe** %6, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %133, %2
  %19 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %6, align 8
  %20 = icmp ne %struct.hns_roce_aeqe* %19, null
  br i1 %20, label %21, label %141

21:                                               ; preds = %18
  %22 = call i32 (...) @dma_rmb()
  %23 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %6, align 8
  %24 = getelementptr inbounds %struct.hns_roce_aeqe, %struct.hns_roce_aeqe* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HNS_ROCE_V2_AEQE_EVENT_TYPE_M, align 4
  %27 = load i32, i32* @HNS_ROCE_V2_AEQE_EVENT_TYPE_S, align 4
  %28 = call i8* @roce_get_field(i32 %25, i32 %26, i32 %27)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %6, align 8
  %31 = getelementptr inbounds %struct.hns_roce_aeqe, %struct.hns_roce_aeqe* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HNS_ROCE_V2_AEQE_SUB_TYPE_M, align 4
  %34 = load i32, i32* @HNS_ROCE_V2_AEQE_SUB_TYPE_S, align 4
  %35 = call i8* @roce_get_field(i32 %32, i32 %33, i32 %34)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %6, align 8
  %38 = getelementptr inbounds %struct.hns_roce_aeqe, %struct.hns_roce_aeqe* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HNS_ROCE_V2_AEQE_EVENT_QUEUE_NUM_M, align 4
  %43 = load i32, i32* @HNS_ROCE_V2_AEQE_EVENT_QUEUE_NUM_S, align 4
  %44 = call i8* @roce_get_field(i32 %41, i32 %42, i32 %43)
  store i8* %44, i8** %11, align 8
  %45 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %6, align 8
  %46 = getelementptr inbounds %struct.hns_roce_aeqe, %struct.hns_roce_aeqe* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @HNS_ROCE_V2_AEQE_EVENT_QUEUE_NUM_M, align 4
  %51 = load i32, i32* @HNS_ROCE_V2_AEQE_EVENT_QUEUE_NUM_S, align 4
  %52 = call i8* @roce_get_field(i32 %49, i32 %50, i32 %51)
  store i8* %52, i8** %12, align 8
  %53 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %6, align 8
  %54 = getelementptr inbounds %struct.hns_roce_aeqe, %struct.hns_roce_aeqe* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @HNS_ROCE_V2_AEQE_EVENT_QUEUE_NUM_M, align 4
  %59 = load i32, i32* @HNS_ROCE_V2_AEQE_EVENT_QUEUE_NUM_S, align 4
  %60 = call i8* @roce_get_field(i32 %57, i32 %58, i32 %59)
  store i8* %60, i8** %10, align 8
  %61 = load i32, i32* %8, align 4
  switch i32 %61, label %100 [
    i32 134, label %62
    i32 133, label %62
    i32 142, label %62
    i32 132, label %62
    i32 128, label %62
    i32 130, label %62
    i32 137, label %62
    i32 136, label %62
    i32 129, label %67
    i32 131, label %67
    i32 141, label %72
    i32 140, label %72
    i32 139, label %77
    i32 135, label %78
    i32 143, label %98
    i32 138, label %99
  ]

62:                                               ; preds = %21, %21, %21, %21, %21, %21, %21, %21
  %63 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @hns_roce_qp_event(%struct.hns_roce_dev* %63, i8* %64, i32 %65)
  br label %110

67:                                               ; preds = %21, %21
  %68 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @hns_roce_srq_event(%struct.hns_roce_dev* %68, i8* %69, i32 %70)
  br label %110

72:                                               ; preds = %21, %21
  %73 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @hns_roce_cq_event(%struct.hns_roce_dev* %73, i8* %74, i32 %75)
  br label %110

77:                                               ; preds = %21
  br label %110

78:                                               ; preds = %21
  %79 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %80 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %6, align 8
  %81 = getelementptr inbounds %struct.hns_roce_aeqe, %struct.hns_roce_aeqe* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le16_to_cpu(i32 %84)
  %86 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %6, align 8
  %87 = getelementptr inbounds %struct.hns_roce_aeqe, %struct.hns_roce_aeqe* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %6, align 8
  %92 = getelementptr inbounds %struct.hns_roce_aeqe, %struct.hns_roce_aeqe* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le64_to_cpu(i32 %95)
  %97 = call i32 @hns_roce_cmd_event(%struct.hns_roce_dev* %79, i32 %85, i32 %90, i32 %96)
  br label %110

98:                                               ; preds = %21
  br label %110

99:                                               ; preds = %21
  br label %110

100:                                              ; preds = %21
  %101 = load %struct.device*, %struct.device** %5, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %104 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %107 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dev_err(%struct.device* %101, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %100, %99, %98, %78, %77, %72, %67, %62
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %113 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %116 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %118 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  store i32 1, i32* %7, align 4
  %121 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %122 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %125 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 2, %126
  %128 = sub nsw i32 %127, 1
  %129 = icmp sgt i32 %123, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %110
  %131 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %132 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %131, i32 0, i32 0
  store i32 0, i32* %132, align 4
  br label %133

133:                                              ; preds = %130, %110
  %134 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %135 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %136 = load i8*, i8** %11, align 8
  %137 = load i8*, i8** %12, align 8
  %138 = call i32 @hns_roce_v2_init_irq_work(%struct.hns_roce_dev* %134, %struct.hns_roce_eq* %135, i8* %136, i8* %137)
  %139 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %140 = call %struct.hns_roce_aeqe* @next_aeqe_sw_v2(%struct.hns_roce_eq* %139)
  store %struct.hns_roce_aeqe* %140, %struct.hns_roce_aeqe** %6, align 8
  br label %18

141:                                              ; preds = %18
  %142 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %143 = call i32 @set_eq_cons_index_v2(%struct.hns_roce_eq* %142)
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local %struct.hns_roce_aeqe* @next_aeqe_sw_v2(%struct.hns_roce_eq*) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i8* @roce_get_field(i32, i32, i32) #1

declare dso_local i32 @hns_roce_qp_event(%struct.hns_roce_dev*, i8*, i32) #1

declare dso_local i32 @hns_roce_srq_event(%struct.hns_roce_dev*, i8*, i32) #1

declare dso_local i32 @hns_roce_cq_event(%struct.hns_roce_dev*, i8*, i32) #1

declare dso_local i32 @hns_roce_cmd_event(%struct.hns_roce_dev*, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @hns_roce_v2_init_irq_work(%struct.hns_roce_dev*, %struct.hns_roce_eq*, i8*, i8*) #1

declare dso_local i32 @set_eq_cons_index_v2(%struct.hns_roce_eq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
