; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_get_op_for_set_hem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_get_op_for_set_hem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_WRITE_QPC_BT0 = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_WRITE_MPT_BT0 = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_WRITE_CQC_BT0 = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_WRITE_SRQC_BT0 = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_WRITE_SCCC_BT0 = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_WRITE_QPC_TIMER_BT0 = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_WRITE_CQC_TIMER_BT0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Table %d not to be written by mailbox!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i32, i32)* @get_op_for_set_hem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_op_for_set_hem(%struct.hns_roce_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 129
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %45

17:                                               ; preds = %11, %3
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %33 [
    i32 131, label %19
    i32 132, label %21
    i32 134, label %23
    i32 128, label %25
    i32 129, label %27
    i32 130, label %29
    i32 133, label %31
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @HNS_ROCE_CMD_WRITE_QPC_BT0, align 4
  store i32 %20, i32* %8, align 4
  br label %41

21:                                               ; preds = %17
  %22 = load i32, i32* @HNS_ROCE_CMD_WRITE_MPT_BT0, align 4
  store i32 %22, i32* %8, align 4
  br label %41

23:                                               ; preds = %17
  %24 = load i32, i32* @HNS_ROCE_CMD_WRITE_CQC_BT0, align 4
  store i32 %24, i32* %8, align 4
  br label %41

25:                                               ; preds = %17
  %26 = load i32, i32* @HNS_ROCE_CMD_WRITE_SRQC_BT0, align 4
  store i32 %26, i32* %8, align 4
  br label %41

27:                                               ; preds = %17
  %28 = load i32, i32* @HNS_ROCE_CMD_WRITE_SCCC_BT0, align 4
  store i32 %28, i32* %8, align 4
  br label %41

29:                                               ; preds = %17
  %30 = load i32, i32* @HNS_ROCE_CMD_WRITE_QPC_TIMER_BT0, align 4
  store i32 %30, i32* %8, align 4
  br label %41

31:                                               ; preds = %17
  %32 = load i32, i32* @HNS_ROCE_CMD_WRITE_CQC_TIMER_BT0, align 4
  store i32 %32, i32* %8, align 4
  br label %41

33:                                               ; preds = %17
  %34 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %35 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @dev_warn(i32 %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %45

41:                                               ; preds = %31, %29, %27, %25, %23, %21, %19
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %41, %33, %14
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
