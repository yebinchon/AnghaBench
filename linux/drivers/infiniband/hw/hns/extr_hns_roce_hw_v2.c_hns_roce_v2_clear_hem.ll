; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_clear_hem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_clear_hem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.device* }
%struct.device = type { i32 }
%struct.hns_roce_hem_table = type { i32 }
%struct.hns_roce_cmd_mailbox = type { i32 }

@HNS_ROCE_CMD_DESTROY_QPC_BT0 = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_DESTROY_MPT_BT0 = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_DESTROY_CQC_BT0 = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_DESTROY_SRQC_BT0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Table %d not to be destroyed by mailbox!\0A\00", align 1
@HNS_ROCE_CMD_TIMEOUT_MSECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i32, i32)* @hns_roce_v2_clear_hem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_clear_hem(%struct.hns_roce_dev* %0, %struct.hns_roce_hem_table* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_roce_dev*, align 8
  %7 = alloca %struct.hns_roce_hem_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.hns_roce_cmd_mailbox*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %6, align 8
  store %struct.hns_roce_hem_table* %1, %struct.hns_roce_hem_table** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %15 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %10, align 8
  store i32 255, i32* %13, align 4
  %17 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %18 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %19 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @hns_roce_check_whether_mhop(%struct.hns_roce_dev* %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %84

24:                                               ; preds = %4
  %25 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %26 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %37 [
    i32 131, label %28
    i32 132, label %30
    i32 134, label %32
    i32 129, label %34
    i32 130, label %34
    i32 133, label %34
    i32 128, label %35
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* @HNS_ROCE_CMD_DESTROY_QPC_BT0, align 4
  store i32 %29, i32* %13, align 4
  br label %43

30:                                               ; preds = %24
  %31 = load i32, i32* @HNS_ROCE_CMD_DESTROY_MPT_BT0, align 4
  store i32 %31, i32* %13, align 4
  br label %43

32:                                               ; preds = %24
  %33 = load i32, i32* @HNS_ROCE_CMD_DESTROY_CQC_BT0, align 4
  store i32 %33, i32* %13, align 4
  br label %43

34:                                               ; preds = %24, %24, %24
  br label %43

35:                                               ; preds = %24
  %36 = load i32, i32* @HNS_ROCE_CMD_DESTROY_SRQC_BT0, align 4
  store i32 %36, i32* %13, align 4
  br label %43

37:                                               ; preds = %24
  %38 = load %struct.device*, %struct.device** %10, align 8
  %39 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %40 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_warn(%struct.device* %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 0, i32* %5, align 4
  br label %84

43:                                               ; preds = %35, %34, %32, %30, %28
  %44 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %45 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 129
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %50 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 130
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %55 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 133
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %48, %43
  store i32 0, i32* %5, align 4
  br label %84

59:                                               ; preds = %53
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %13, align 4
  %63 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %64 = call %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev* %63)
  store %struct.hns_roce_cmd_mailbox* %64, %struct.hns_roce_cmd_mailbox** %11, align 8
  %65 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %11, align 8
  %66 = call i64 @IS_ERR(%struct.hns_roce_cmd_mailbox* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %11, align 8
  %70 = call i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox* %69)
  store i32 %70, i32* %5, align 4
  br label %84

71:                                               ; preds = %59
  %72 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %73 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %11, align 8
  %74 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @HNS_ROCE_CMD_TIMEOUT_MSECS, align 4
  %79 = call i32 @hns_roce_cmd_mbox(%struct.hns_roce_dev* %72, i32 0, i32 %75, i32 %76, i32 0, i32 %77, i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %81 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %11, align 8
  %82 = call i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev* %80, %struct.hns_roce_cmd_mailbox* %81)
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %71, %68, %58, %37, %23
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @hns_roce_check_whether_mhop(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev*) #1

declare dso_local i64 @IS_ERR(%struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @hns_roce_cmd_mbox(%struct.hns_roce_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev*, %struct.hns_roce_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
