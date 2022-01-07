; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_query_qpc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_query_qpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_qp = type { i32 }
%struct.hns_roce_v2_qp_context = type { i32 }
%struct.hns_roce_cmd_mailbox = type { i32, i32 }

@HNS_ROCE_CMD_QUERY_QPC = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_TIMEOUT_MSECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"QUERY QP cmd process error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_qp*, %struct.hns_roce_v2_qp_context*)* @hns_roce_v2_query_qpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_query_qpc(%struct.hns_roce_dev* %0, %struct.hns_roce_qp* %1, %struct.hns_roce_v2_qp_context* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca %struct.hns_roce_qp*, align 8
  %7 = alloca %struct.hns_roce_v2_qp_context*, align 8
  %8 = alloca %struct.hns_roce_cmd_mailbox*, align 8
  %9 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store %struct.hns_roce_qp* %1, %struct.hns_roce_qp** %6, align 8
  store %struct.hns_roce_v2_qp_context* %2, %struct.hns_roce_v2_qp_context** %7, align 8
  %10 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %11 = call %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev* %10)
  store %struct.hns_roce_cmd_mailbox* %11, %struct.hns_roce_cmd_mailbox** %8, align 8
  %12 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %8, align 8
  %13 = call i64 @IS_ERR(%struct.hns_roce_cmd_mailbox* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %8, align 8
  %17 = call i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox* %16)
  store i32 %17, i32* %4, align 4
  br label %47

18:                                               ; preds = %3
  %19 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %20 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %8, align 8
  %21 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %6, align 8
  %24 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HNS_ROCE_CMD_QUERY_QPC, align 4
  %27 = load i32, i32* @HNS_ROCE_CMD_TIMEOUT_MSECS, align 4
  %28 = call i32 @hns_roce_cmd_mbox(%struct.hns_roce_dev* %19, i32 0, i32 %22, i32 %25, i32 0, i32 %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %18
  %32 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %33 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %42

36:                                               ; preds = %18
  %37 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %7, align 8
  %38 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %8, align 8
  %39 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(%struct.hns_roce_v2_qp_context* %37, i32 %40, i32 4)
  br label %42

42:                                               ; preds = %36, %31
  %43 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %44 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %8, align 8
  %45 = call i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev* %43, %struct.hns_roce_cmd_mailbox* %44)
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %42, %15
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev*) #1

declare dso_local i64 @IS_ERR(%struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @hns_roce_cmd_mbox(%struct.hns_roce_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @memcpy(%struct.hns_roce_v2_qp_context*, i32, i32) #1

declare dso_local i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev*, %struct.hns_roce_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
