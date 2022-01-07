; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_post_mbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_post_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.device* }
%struct.device = type { i32 }

@HNS_ROCE_V2_GO_BIT_TIMEOUT_MSECS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"jiffies=%d end=%d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Post mailbox fail(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i32, i32, i32, i32, i32, i32, i32)* @hns_roce_v2_post_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_post_mbox(%struct.hns_roce_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.hns_roce_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.device*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %10, align 8
  %22 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %21, i32 0, i32 0
  %23 = load %struct.device*, %struct.device** %22, align 8
  store %struct.device* %23, %struct.device** %18, align 8
  %24 = load i32, i32* @HNS_ROCE_V2_GO_BIT_TIMEOUT_MSECS, align 4
  %25 = call i64 @msecs_to_jiffies(i32 %24)
  %26 = load i64, i64* @jiffies, align 8
  %27 = add i64 %25, %26
  store i64 %27, i64* %19, align 8
  br label %28

28:                                               ; preds = %46, %8
  %29 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %10, align 8
  %30 = call i64 @hns_roce_v2_cmd_pending(%struct.hns_roce_dev* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load i64, i64* @jiffies, align 8
  %34 = load i64, i64* %19, align 8
  %35 = call i64 @time_after(i64 %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.device*, %struct.device** %18, align 8
  %39 = load i64, i64* @jiffies, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i64, i64* %19, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %42)
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %66

46:                                               ; preds = %32
  %47 = call i32 (...) @cond_resched()
  br label %28

48:                                               ; preds = %28
  %49 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %17, align 4
  %57 = call i32 @hns_roce_mbox_post(%struct.hns_roce_dev* %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* %20, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %48
  %61 = load %struct.device*, %struct.device** %18, align 8
  %62 = load i32, i32* %20, align 4
  %63 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %60, %48
  %65 = load i32, i32* %20, align 4
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %64, %37
  %67 = load i32, i32* %9, align 4
  ret i32 %67
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @hns_roce_v2_cmd_pending(%struct.hns_roce_dev*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @hns_roce_mbox_post(%struct.hns_roce_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
