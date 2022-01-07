; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_query_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_query_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_srq_attr = type { i32, i32, i64 }
%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_srq = type { i32, i64, i32 }
%struct.hns_roce_srq_context = type { i32 }
%struct.hns_roce_cmd_mailbox = type { %struct.hns_roce_srq_context*, i32 }

@HNS_ROCE_CMD_QUERY_SRQC = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_TIMEOUT_MSECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"QUERY SRQ cmd process error\0A\00", align 1
@SRQC_BYTE_8_SRQ_LIMIT_WL_M = common dso_local global i32 0, align 4
@SRQC_BYTE_8_SRQ_LIMIT_WL_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_srq*, %struct.ib_srq_attr*)* @hns_roce_v2_query_srq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_query_srq(%struct.ib_srq* %0, %struct.ib_srq_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_srq_attr*, align 8
  %6 = alloca %struct.hns_roce_dev*, align 8
  %7 = alloca %struct.hns_roce_srq*, align 8
  %8 = alloca %struct.hns_roce_srq_context*, align 8
  %9 = alloca %struct.hns_roce_cmd_mailbox*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ib_srq* %0, %struct.ib_srq** %4, align 8
  store %struct.ib_srq_attr* %1, %struct.ib_srq_attr** %5, align 8
  %12 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %13 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.hns_roce_dev* @to_hr_dev(i32 %14)
  store %struct.hns_roce_dev* %15, %struct.hns_roce_dev** %6, align 8
  %16 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %17 = call %struct.hns_roce_srq* @to_hr_srq(%struct.ib_srq* %16)
  store %struct.hns_roce_srq* %17, %struct.hns_roce_srq** %7, align 8
  %18 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %19 = call %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev* %18)
  store %struct.hns_roce_cmd_mailbox* %19, %struct.hns_roce_cmd_mailbox** %9, align 8
  %20 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %9, align 8
  %21 = call i64 @IS_ERR(%struct.hns_roce_cmd_mailbox* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %9, align 8
  %25 = call i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox* %24)
  store i32 %25, i32* %3, align 4
  br label %78

26:                                               ; preds = %2
  %27 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %9, align 8
  %28 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %27, i32 0, i32 0
  %29 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %28, align 8
  store %struct.hns_roce_srq_context* %29, %struct.hns_roce_srq_context** %8, align 8
  %30 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %31 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %9, align 8
  %32 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %7, align 8
  %35 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @HNS_ROCE_CMD_QUERY_SRQC, align 4
  %38 = load i32, i32* @HNS_ROCE_CMD_TIMEOUT_MSECS, align 4
  %39 = call i32 @hns_roce_cmd_mbox(%struct.hns_roce_dev* %30, i32 0, i32 %33, i32 %36, i32 0, i32 %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %26
  %43 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %44 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %73

47:                                               ; preds = %26
  %48 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %8, align 8
  %49 = getelementptr inbounds %struct.hns_roce_srq_context, %struct.hns_roce_srq_context* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SRQC_BYTE_8_SRQ_LIMIT_WL_M, align 4
  %52 = load i32, i32* @SRQC_BYTE_8_SRQ_LIMIT_WL_S, align 4
  %53 = call i32 @roce_get_field(i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %56 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %7, align 8
  %58 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, 1
  %61 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %62 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %7, align 8
  %64 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %67 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %8, align 8
  %69 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %9, align 8
  %70 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %69, i32 0, i32 0
  %71 = load %struct.hns_roce_srq_context*, %struct.hns_roce_srq_context** %70, align 8
  %72 = call i32 @memcpy(%struct.hns_roce_srq_context* %68, %struct.hns_roce_srq_context* %71, i32 4)
  br label %73

73:                                               ; preds = %47, %42
  %74 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %75 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %9, align 8
  %76 = call i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev* %74, %struct.hns_roce_cmd_mailbox* %75)
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %73, %23
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_srq* @to_hr_srq(%struct.ib_srq*) #1

declare dso_local %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev*) #1

declare dso_local i64 @IS_ERR(%struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @hns_roce_cmd_mbox(%struct.hns_roce_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @roce_get_field(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.hns_roce_srq_context*, %struct.hns_roce_srq_context*, i32) #1

declare dso_local i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev*, %struct.hns_roce_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
