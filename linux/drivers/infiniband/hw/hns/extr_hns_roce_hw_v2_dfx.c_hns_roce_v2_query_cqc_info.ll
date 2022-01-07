; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2_dfx.c_hns_roce_v2_query_cqc_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2_dfx.c_hns_roce_v2_query_cqc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_v2_cq_context = type { i32 }
%struct.hns_roce_cmd_mailbox = type { i32, %struct.hns_roce_v2_cq_context* }

@HNS_ROCE_CMD_QUERY_CQC = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_TIMEOUT_MSECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"QUERY cqc cmd process error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_v2_query_cqc_info(%struct.hns_roce_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hns_roce_v2_cq_context*, align 8
  %9 = alloca %struct.hns_roce_cmd_mailbox*, align 8
  %10 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %12 = call %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev* %11)
  store %struct.hns_roce_cmd_mailbox* %12, %struct.hns_roce_cmd_mailbox** %9, align 8
  %13 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %9, align 8
  %14 = call i64 @IS_ERR(%struct.hns_roce_cmd_mailbox* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %9, align 8
  %18 = call i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox* %17)
  store i32 %18, i32* %4, align 4
  br label %47

19:                                               ; preds = %3
  %20 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %9, align 8
  %21 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %20, i32 0, i32 1
  %22 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %21, align 8
  store %struct.hns_roce_v2_cq_context* %22, %struct.hns_roce_v2_cq_context** %8, align 8
  %23 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %24 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %9, align 8
  %25 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @HNS_ROCE_CMD_QUERY_CQC, align 4
  %29 = load i32, i32* @HNS_ROCE_CMD_TIMEOUT_MSECS, align 4
  %30 = call i32 @hns_roce_cmd_mbox(%struct.hns_roce_dev* %23, i32 0, i32 %26, i32 %27, i32 0, i32 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %19
  %34 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %35 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %42

38:                                               ; preds = %19
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.hns_roce_v2_cq_context*, %struct.hns_roce_v2_cq_context** %8, align 8
  %41 = call i32 @memcpy(i32* %39, %struct.hns_roce_v2_cq_context* %40, i32 4)
  br label %42

42:                                               ; preds = %38, %33
  %43 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %44 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %9, align 8
  %45 = call i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev* %43, %struct.hns_roce_cmd_mailbox* %44)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %42, %16
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev*) #1

declare dso_local i64 @IS_ERR(%struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @hns_roce_cmd_mbox(%struct.hns_roce_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.hns_roce_v2_cq_context*, i32) #1

declare dso_local i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev*, %struct.hns_roce_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
