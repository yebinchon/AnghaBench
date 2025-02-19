; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_chk_mbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_chk_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.device* }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"[cmd_poll]hw run cmd TIMEDOUT!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@CMD_RST_PRC_EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"mailbox status 0x%x!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i64)* @hns_roce_v2_chk_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_chk_mbox(%struct.hns_roce_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %10 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @msecs_to_jiffies(i64 %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = add i64 %13, %14
  store i64 %15, i64* %7, align 8
  br label %16

16:                                               ; preds = %27, %2
  %17 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %18 = call i64 @hns_roce_v2_cmd_pending(%struct.hns_roce_dev* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i64, i64* @jiffies, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @time_before(i64 %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %20, %16
  %26 = phi i1 [ false, %16 ], [ %24, %20 ]
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = call i32 (...) @cond_resched()
  br label %16

29:                                               ; preds = %25
  %30 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %31 = call i64 @hns_roce_v2_cmd_pending(%struct.hns_roce_dev* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ETIMEDOUT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %56

38:                                               ; preds = %29
  %39 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %40 = call i32 @hns_roce_v2_cmd_complete(%struct.hns_roce_dev* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @CMD_RST_PRC_EBUSY, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %56

49:                                               ; preds = %43
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %49, %47, %33
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i64 @hns_roce_v2_cmd_pending(%struct.hns_roce_dev*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @hns_roce_v2_cmd_complete(%struct.hns_roce_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
