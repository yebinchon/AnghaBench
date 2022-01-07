; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cmd.c___hns_roce_cmd_mbox_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cmd.c___hns_roce_cmd_mbox_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__*, %struct.device* }
%struct.TYPE_2__ = type { i32 (%struct.hns_roce_dev*, i64)* }
%struct.device = type { i32 }

@CMD_POLL_TOKEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"[cmd_poll]hns_roce_cmd_mbox_post_hw failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i32, i32, i64, i32, i32, i64)* @__hns_roce_cmd_mbox_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hns_roce_cmd_mbox_poll(%struct.hns_roce_dev* %0, i32 %1, i32 %2, i64 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.hns_roce_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.device*, align 8
  %17 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %18 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %19 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %18, i32 0, i32 1
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %16, align 8
  %21 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i64, i64* %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @CMD_POLL_TOKEN, align 4
  %28 = call i32 @hns_roce_cmd_mbox_post_hw(%struct.hns_roce_dev* %21, i32 %22, i32 %23, i64 %24, i32 %25, i32 %26, i32 %27, i32 0)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %17, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %7
  %32 = load %struct.device*, %struct.device** %16, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %17, align 4
  store i32 %34, i32* %8, align 4
  br label %44

35:                                               ; preds = %7
  %36 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %37 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.hns_roce_dev*, i64)*, i32 (%struct.hns_roce_dev*, i64)** %39, align 8
  %41 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %42 = load i64, i64* %15, align 8
  %43 = call i32 %40(%struct.hns_roce_dev* %41, i64 %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %35, %31
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local i32 @hns_roce_cmd_mbox_post_hw(%struct.hns_roce_dev*, i32, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
