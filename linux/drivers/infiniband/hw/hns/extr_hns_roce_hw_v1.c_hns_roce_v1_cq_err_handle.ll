; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_cq_err_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_cq_err_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hns_roce_aeqe = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@HNS_ROCE_AEQE_EVENT_CQ_EVENT_CQ_CQN_M = common dso_local global i32 0, align 4
@HNS_ROCE_AEQE_EVENT_CQ_EVENT_CQ_CQN_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"CQ 0x%x access err.\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"CQ 0x%x overflow\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"CQ 0x%x ID invalid.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, %struct.hns_roce_aeqe*, i32)* @hns_roce_v1_cq_err_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_v1_cq_err_handle(%struct.hns_roce_dev* %0, %struct.hns_roce_aeqe* %1, i32 %2) #0 {
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca %struct.hns_roce_aeqe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store %struct.hns_roce_aeqe* %1, %struct.hns_roce_aeqe** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %10 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %5, align 8
  %14 = getelementptr inbounds %struct.hns_roce_aeqe, %struct.hns_roce_aeqe* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HNS_ROCE_AEQE_EVENT_CQ_EVENT_CQ_CQN_M, align 4
  %19 = load i32, i32* @HNS_ROCE_AEQE_EVENT_CQ_EVENT_CQ_CQN_S, align 4
  %20 = call i32 @roce_get_field(i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %34 [
    i32 130, label %22
    i32 128, label %26
    i32 129, label %30
  ]

22:                                               ; preds = %3
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @dev_warn(%struct.device* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %35

26:                                               ; preds = %3
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @dev_warn(%struct.device* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %35

30:                                               ; preds = %3
  %31 = load %struct.device*, %struct.device** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @dev_warn(%struct.device* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  br label %35

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %34, %30, %26, %22
  %36 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @hns_roce_cq_event(%struct.hns_roce_dev* %36, i32 %37, i32 %38)
  ret void
}

declare dso_local i32 @roce_get_field(i32, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @hns_roce_cq_event(%struct.hns_roce_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
