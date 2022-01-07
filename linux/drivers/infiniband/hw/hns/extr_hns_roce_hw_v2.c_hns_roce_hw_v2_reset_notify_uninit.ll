; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_hw_v2_reset_notify_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_hw_v2_reset_notify_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@HNS_ROCE_RST_DIRECT_RETURN = common dso_local global i32 0, align 4
@HNS_ROCE_STATE_RST_UNINIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"In reset process RoCE client uninit.\0A\00", align 1
@HNS_ROCE_V2_HW_RST_UNINT_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*)* @hns_roce_hw_v2_reset_notify_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_hw_v2_reset_notify_uninit(%struct.hnae3_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hnae3_handle*, align 8
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  %4 = load i32, i32* @HNS_ROCE_RST_DIRECT_RETURN, align 4
  %5 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %6 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = call i64 @test_bit(i32 %4, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

11:                                               ; preds = %1
  %12 = load i32, i32* @HNS_ROCE_STATE_RST_UNINIT, align 4
  %13 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %14 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  %16 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %17 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @dev_info(i32* %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @HNS_ROCE_V2_HW_RST_UNINT_DELAY, align 4
  %22 = call i32 @msleep(i32 %21)
  %23 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %24 = call i32 @__hns_roce_hw_v2_uninit_instance(%struct.hnae3_handle* %23, i32 0)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %11, %10
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @__hns_roce_hw_v2_uninit_instance(%struct.hnae3_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
