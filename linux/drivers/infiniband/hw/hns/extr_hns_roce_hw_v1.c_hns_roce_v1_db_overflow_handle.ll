; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_db_overflow_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_db_overflow_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hns_roce_aeqe = type { i32 }

@HNS_ROCE_AEQE_U32_4_EVENT_SUB_TYPE_M = common dso_local global i32 0, align 4
@HNS_ROCE_AEQE_U32_4_EVENT_SUB_TYPE_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"SDB overflow.\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"SDB almost overflow.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"SDB almost empty.\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"ODB overflow.\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"ODB almost overflow.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, %struct.hns_roce_aeqe*)* @hns_roce_v1_db_overflow_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_v1_db_overflow_handle(%struct.hns_roce_dev* %0, %struct.hns_roce_aeqe* %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_aeqe*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hns_roce_aeqe* %1, %struct.hns_roce_aeqe** %4, align 8
  %6 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %4, align 8
  %11 = getelementptr inbounds %struct.hns_roce_aeqe, %struct.hns_roce_aeqe* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @HNS_ROCE_AEQE_U32_4_EVENT_SUB_TYPE_M, align 4
  %14 = load i32, i32* @HNS_ROCE_AEQE_U32_4_EVENT_SUB_TYPE_S, align 4
  %15 = call i32 @roce_get_field(i32 %12, i32 %13, i32 %14)
  switch i32 %15, label %34 [
    i32 128, label %16
    i32 129, label %19
    i32 130, label %22
    i32 131, label %25
    i32 132, label %28
    i32 133, label %31
  ]

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call i32 @dev_warn(%struct.device* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %35

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call i32 @dev_warn(%struct.device* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %35

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call i32 @dev_warn(%struct.device* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %35

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = call i32 @dev_warn(%struct.device* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %35

28:                                               ; preds = %2
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call i32 @dev_warn(%struct.device* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %35

31:                                               ; preds = %2
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = call i32 @dev_warn(%struct.device* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %35

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %34, %31, %28, %25, %22, %19, %16
  ret void
}

declare dso_local i32 @roce_get_field(i32, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
