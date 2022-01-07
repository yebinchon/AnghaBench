; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_modify_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_modify_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_v2_cq_context = type { i32 }
%struct.hns_roce_cq = type { i32 }
%struct.hns_roce_cmd_mailbox = type { i32, %struct.hns_roce_v2_cq_context* }

@V2_CQC_BYTE_56_CQ_MAX_CNT_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_56_CQ_MAX_CNT_S = common dso_local global i32 0, align 4
@V2_CQC_BYTE_56_CQ_PERIOD_M = common dso_local global i32 0, align 4
@V2_CQC_BYTE_56_CQ_PERIOD_S = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_MODIFY_CQC = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_TIMEOUT_MSECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"MODIFY CQ Failed to cmd mailbox.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cq*, i32, i32)* @hns_roce_v2_modify_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_modify_cq(%struct.ib_cq* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_cq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hns_roce_dev*, align 8
  %9 = alloca %struct.hns_roce_v2_cq_context*, align 8
  %10 = alloca %struct.hns_roce_cq*, align 8
  %11 = alloca %struct.hns_roce_v2_cq_context*, align 8
  %12 = alloca %struct.hns_roce_cmd_mailbox*, align 8
  %13 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %15 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.hns_roce_dev* @to_hr_dev(i32 %16)
  store %struct.hns_roce_dev* %17, %struct.hns_roce_dev** %8, align 8
  %18 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %19 = call %struct.hns_roce_cq* @to_hr_cq(%struct.ib_cq* %18)
  store %struct.hns_roce_cq* %19, %struct.hns_roce_cq** %10, align 8
  %20 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %21 = call %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev* %20)
  store %struct.hns_roce_cmd_mailbox* %21, %struct.hns_roce_cmd_mailbox** %12, align 8
  %22 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %12, align 8
  %23 = call i64 @IS_ERR(%struct.hns_roce_cmd_mailbox* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %12, align 8
  %27 = call i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox* %26)
  store i32 %27, i32* %4, align 4
  br label %86

28:                                               ; preds = %3
  %29 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %12, align 8
  %30 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %29, i32 0, i32 1
  %31 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %30, align 8
  store %struct.hns_roce_v2_cq_context* %31, %struct.hns_roce_v2_cq_context** %9, align 8
  %32 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %12, align 8
  %33 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %32, i32 0, i32 1
  %34 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %33, align 8
  %35 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %34, i64 1
  store %struct.hns_roce_v2_cq_context* %35, %struct.hns_roce_v2_cq_context** %11, align 8
  %36 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %11, align 8
  %37 = call i32 @memset(%struct.hns_roce_v2_cq_context* %36, i32 255, i32 4)
  %38 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %9, align 8
  %39 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @V2_CQC_BYTE_56_CQ_MAX_CNT_M, align 4
  %42 = load i32, i32* @V2_CQC_BYTE_56_CQ_MAX_CNT_S, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @roce_set_field(i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %11, align 8
  %46 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @V2_CQC_BYTE_56_CQ_MAX_CNT_M, align 4
  %49 = load i32, i32* @V2_CQC_BYTE_56_CQ_MAX_CNT_S, align 4
  %50 = call i32 @roce_set_field(i32 %47, i32 %48, i32 %49, i32 0)
  %51 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %9, align 8
  %52 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @V2_CQC_BYTE_56_CQ_PERIOD_M, align 4
  %55 = load i32, i32* @V2_CQC_BYTE_56_CQ_PERIOD_S, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @roce_set_field(i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %11, align 8
  %59 = getelementptr inbounds %struct.hns_roce_v2_cq_context, %struct.hns_roce_v2_cq_context* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @V2_CQC_BYTE_56_CQ_PERIOD_M, align 4
  %62 = load i32, i32* @V2_CQC_BYTE_56_CQ_PERIOD_S, align 4
  %63 = call i32 @roce_set_field(i32 %60, i32 %61, i32 %62, i32 0)
  %64 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %65 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %12, align 8
  %66 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %10, align 8
  %69 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @HNS_ROCE_CMD_MODIFY_CQC, align 4
  %72 = load i32, i32* @HNS_ROCE_CMD_TIMEOUT_MSECS, align 4
  %73 = call i32 @hns_roce_cmd_mbox(%struct.hns_roce_dev* %64, i32 %67, i32 0, i32 %70, i32 1, i32 %71, i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %75 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %12, align 8
  %76 = call i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev* %74, %struct.hns_roce_cmd_mailbox* %75)
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %28
  %80 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %81 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %79, %28
  %85 = load i32, i32* %13, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %25
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_cq* @to_hr_cq(%struct.ib_cq*) #1

declare dso_local %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev*) #1

declare dso_local i64 @IS_ERR(%struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @memset(%struct.hns_roce_v2_cq_context*, i32, i32) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @hns_roce_cmd_mbox(%struct.hns_roce_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev*, %struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
