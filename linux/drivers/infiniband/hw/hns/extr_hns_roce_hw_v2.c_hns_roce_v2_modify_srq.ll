; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_modify_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_modify_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_srq_attr = type { i64 }
%struct.ib_udata = type { i32 }
%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_srq = type { i64, i32 }
%struct.hns_roce_srq_context = type { i32 }
%struct.hns_roce_cmd_mailbox = type { i32, %struct.hns_roce_srq_context* }

@IB_SRQ_LIMIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SRQC_BYTE_8_SRQ_LIMIT_WL_M = common dso_local global i32 0, align 4
@SRQC_BYTE_8_SRQ_LIMIT_WL_S = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_MODIFY_SRQC = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_TIMEOUT_MSECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"MODIFY SRQ Failed to cmd mailbox.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_srq*, %struct.ib_srq_attr*, i32, %struct.ib_udata*)* @hns_roce_v2_modify_srq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_modify_srq(%struct.ib_srq* %0, %struct.ib_srq_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_srq*, align 8
  %7 = alloca %struct.ib_srq_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.hns_roce_dev*, align 8
  %11 = alloca %struct.hns_roce_srq*, align 8
  %12 = alloca %struct.hns_roce_srq_context*, align 8
  %13 = alloca %struct.hns_roce_srq_context*, align 8
  %14 = alloca %struct.hns_roce_cmd_mailbox*, align 8
  %15 = alloca i32, align 4
  store %struct.ib_srq* %0, %struct.ib_srq** %6, align 8
  store %struct.ib_srq_attr* %1, %struct.ib_srq_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %16 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %17 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.hns_roce_dev* @to_hr_dev(i32 %18)
  store %struct.hns_roce_dev* %19, %struct.hns_roce_dev** %10, align 8
  %20 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %21 = call %struct.hns_roce_srq* @to_hr_srq(%struct.ib_srq* %20)
  store %struct.hns_roce_srq* %21, %struct.hns_roce_srq** %11, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @IB_SRQ_LIMIT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %93

26:                                               ; preds = %4
  %27 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %7, align 8
  %28 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %11, align 8
  %31 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %94

37:                                               ; preds = %26
  %38 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %10, align 8
  %39 = call %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev* %38)
  store %struct.hns_roce_cmd_mailbox* %39, %struct.hns_roce_cmd_mailbox** %14, align 8
  %40 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %14, align 8
  %41 = call i64 @IS_ERR(%struct.hns_roce_cmd_mailbox* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %14, align 8
  %45 = call i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox* %44)
  store i32 %45, i32* %5, align 4
  br label %94

46:                                               ; preds = %37
  %47 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %14, align 8
  %48 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %47, i32 0, i32 1
  %49 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %48, align 8
  store %struct.hns_roce_srq_context* %49, %struct.hns_roce_srq_context** %12, align 8
  %50 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %14, align 8
  %51 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %50, i32 0, i32 1
  %52 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %51, align 8
  %53 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %52, i64 1
  store %struct.hns_roce_srq_context* %53, %struct.hns_roce_srq_context** %13, align 8
  %54 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %13, align 8
  %55 = call i32 @memset(%struct.hns_roce_srq_context* %54, i32 255, i32 4)
  %56 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %12, align 8
  %57 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SRQC_BYTE_8_SRQ_LIMIT_WL_M, align 4
  %60 = load i32, i32* @SRQC_BYTE_8_SRQ_LIMIT_WL_S, align 4
  %61 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %7, align 8
  %62 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @roce_set_field(i32 %58, i32 %59, i32 %60, i64 %63)
  %65 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %13, align 8
  %66 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SRQC_BYTE_8_SRQ_LIMIT_WL_M, align 4
  %69 = load i32, i32* @SRQC_BYTE_8_SRQ_LIMIT_WL_S, align 4
  %70 = call i32 @roce_set_field(i32 %67, i32 %68, i32 %69, i64 0)
  %71 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %10, align 8
  %72 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %14, align 8
  %73 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %11, align 8
  %76 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @HNS_ROCE_CMD_MODIFY_SRQC, align 4
  %79 = load i32, i32* @HNS_ROCE_CMD_TIMEOUT_MSECS, align 4
  %80 = call i32 @hns_roce_cmd_mbox(%struct.hns_roce_dev* %71, i32 %74, i32 0, i32 %77, i32 0, i32 %78, i32 %79)
  store i32 %80, i32* %15, align 4
  %81 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %10, align 8
  %82 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %14, align 8
  %83 = call i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev* %81, %struct.hns_roce_cmd_mailbox* %82)
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %46
  %87 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %10, align 8
  %88 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* %15, align 4
  store i32 %91, i32* %5, align 4
  br label %94

92:                                               ; preds = %46
  br label %93

93:                                               ; preds = %92, %4
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %86, %43, %34
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_srq* @to_hr_srq(%struct.ib_srq*) #1

declare dso_local %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev*) #1

declare dso_local i64 @IS_ERR(%struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @memset(%struct.hns_roce_srq_context*, i32, i32) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i64) #1

declare dso_local i32 @hns_roce_cmd_mbox(%struct.hns_roce_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev*, %struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
