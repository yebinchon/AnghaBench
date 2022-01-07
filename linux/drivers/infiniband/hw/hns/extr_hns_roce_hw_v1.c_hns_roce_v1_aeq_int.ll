; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_aeq_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_aeq_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_10__, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hns_roce_eq = type { i32, i32 }
%struct.hns_roce_aeqe = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"aeqe = %pK, aeqe->asyn.event_type = 0x%lx\0A\00", align 1
@HNS_ROCE_AEQE_U32_4_EVENT_TYPE_M = common dso_local global i32 0, align 4
@HNS_ROCE_AEQE_U32_4_EVENT_TYPE_S = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"PATH MIG not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"COMMUNICATION established\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"SQ DRAINED not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"PATH MIG failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SRQ not support!\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"port change.\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"CEQ 0x%lx overflow.\0A\00", align 1
@HNS_ROCE_AEQE_EVENT_CE_EVENT_CEQE_CEQN_M = common dso_local global i32 0, align 4
@HNS_ROCE_AEQE_EVENT_CE_EVENT_CEQE_CEQN_S = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"Unhandled event %d on EQ %d at idx %u.\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"cons_index overflow, set back to 0.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_eq*)* @hns_roce_v1_aeq_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v1_aeq_int(%struct.hns_roce_dev* %0, %struct.hns_roce_eq* %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_eq*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hns_roce_aeqe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hns_roce_eq* %1, %struct.hns_roce_eq** %4, align 8
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %128, %2
  %14 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %15 = call %struct.hns_roce_aeqe* @next_aeqe_sw_v1(%struct.hns_roce_eq* %14)
  store %struct.hns_roce_aeqe* %15, %struct.hns_roce_aeqe** %6, align 8
  %16 = icmp ne %struct.hns_roce_aeqe* %15, null
  br i1 %16, label %17, label %129

17:                                               ; preds = %13
  %18 = call i32 (...) @dma_rmb()
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %6, align 8
  %21 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %6, align 8
  %22 = getelementptr inbounds %struct.hns_roce_aeqe, %struct.hns_roce_aeqe* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HNS_ROCE_AEQE_U32_4_EVENT_TYPE_M, align 4
  %25 = load i32, i32* @HNS_ROCE_AEQE_U32_4_EVENT_TYPE_S, align 4
  %26 = call i32 @roce_get_field(i32 %23, i32 %24, i32 %25)
  %27 = call i32 @dev_dbg(%struct.device* %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.hns_roce_aeqe* %20, i32 %26)
  %28 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %6, align 8
  %29 = getelementptr inbounds %struct.hns_roce_aeqe, %struct.hns_roce_aeqe* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @HNS_ROCE_AEQE_U32_4_EVENT_TYPE_M, align 4
  %32 = load i32, i32* @HNS_ROCE_AEQE_U32_4_EVENT_TYPE_S, align 4
  %33 = call i32 @roce_get_field(i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  switch i32 %34, label %98 [
    i32 135, label %35
    i32 143, label %38
    i32 132, label %41
    i32 134, label %44
    i32 138, label %47
    i32 128, label %47
    i32 137, label %47
    i32 129, label %52
    i32 131, label %52
    i32 130, label %52
    i32 142, label %55
    i32 140, label %55
    i32 141, label %55
    i32 133, label %60
    i32 136, label %63
    i32 139, label %83
    i32 144, label %87
  ]

35:                                               ; preds = %17
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %108

38:                                               ; preds = %17
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %108

41:                                               ; preds = %17
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %108

44:                                               ; preds = %17
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %108

47:                                               ; preds = %17, %17, %17
  %48 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %49 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @hns_roce_v1_qp_err_handle(%struct.hns_roce_dev* %48, %struct.hns_roce_aeqe* %49, i32 %50)
  br label %108

52:                                               ; preds = %17, %17, %17
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %108

55:                                               ; preds = %17, %17, %17
  %56 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %57 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @hns_roce_v1_cq_err_handle(%struct.hns_roce_dev* %56, %struct.hns_roce_aeqe* %57, i32 %58)
  br label %108

60:                                               ; preds = %17
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %108

63:                                               ; preds = %17
  %64 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %65 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %6, align 8
  %66 = getelementptr inbounds %struct.hns_roce_aeqe, %struct.hns_roce_aeqe* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le16_to_cpu(i32 %69)
  %71 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %6, align 8
  %72 = getelementptr inbounds %struct.hns_roce_aeqe, %struct.hns_roce_aeqe* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %6, align 8
  %77 = getelementptr inbounds %struct.hns_roce_aeqe, %struct.hns_roce_aeqe* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le64_to_cpu(i32 %80)
  %82 = call i32 @hns_roce_cmd_event(%struct.hns_roce_dev* %64, i32 %70, i32 %75, i32 %81)
  br label %108

83:                                               ; preds = %17
  %84 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %85 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %6, align 8
  %86 = call i32 @hns_roce_v1_db_overflow_handle(%struct.hns_roce_dev* %84, %struct.hns_roce_aeqe* %85)
  br label %108

87:                                               ; preds = %17
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %6, align 8
  %90 = getelementptr inbounds %struct.hns_roce_aeqe, %struct.hns_roce_aeqe* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @HNS_ROCE_AEQE_EVENT_CE_EVENT_CEQE_CEQN_M, align 4
  %95 = load i32, i32* @HNS_ROCE_AEQE_EVENT_CE_EVENT_CEQE_CEQN_S, align 4
  %96 = call i32 @roce_get_field(i32 %93, i32 %94, i32 %95)
  %97 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %96)
  br label %108

98:                                               ; preds = %17
  %99 = load %struct.device*, %struct.device** %5, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %102 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %105 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %99, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %100, i32 %103, i32 %106)
  br label %108

108:                                              ; preds = %98, %87, %83, %63, %60, %55, %52, %47, %44, %41, %38, %35
  %109 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %110 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  store i32 1, i32* %7, align 4
  %113 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %114 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %117 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = mul nsw i32 2, %119
  %121 = sub nsw i32 %120, 1
  %122 = icmp sgt i32 %115, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %108
  %124 = load %struct.device*, %struct.device** %5, align 8
  %125 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %124, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %126 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %127 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %126, i32 0, i32 0
  store i32 0, i32* %127, align 4
  br label %128

128:                                              ; preds = %123, %108
  br label %13

129:                                              ; preds = %13
  %130 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %131 = call i32 @set_eq_cons_index_v1(%struct.hns_roce_eq* %130, i32 0)
  %132 = load i32, i32* %7, align 4
  ret i32 %132
}

declare dso_local %struct.hns_roce_aeqe* @next_aeqe_sw_v1(%struct.hns_roce_eq*) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.hns_roce_aeqe*, i32) #1

declare dso_local i32 @roce_get_field(i32, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @hns_roce_v1_qp_err_handle(%struct.hns_roce_dev*, %struct.hns_roce_aeqe*, i32) #1

declare dso_local i32 @hns_roce_v1_cq_err_handle(%struct.hns_roce_dev*, %struct.hns_roce_aeqe*, i32) #1

declare dso_local i32 @hns_roce_cmd_event(%struct.hns_roce_dev*, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @hns_roce_v1_db_overflow_handle(%struct.hns_roce_dev*, %struct.hns_roce_aeqe*) #1

declare dso_local i32 @set_eq_cons_index_v1(%struct.hns_roce_eq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
