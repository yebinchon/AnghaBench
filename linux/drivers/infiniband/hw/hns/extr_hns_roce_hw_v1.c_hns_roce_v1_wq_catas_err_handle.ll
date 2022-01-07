; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_wq_catas_err_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_wq_catas_err_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hns_roce_aeqe = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Local Work Queue Catastrophic Error.\0A\00", align 1
@HNS_ROCE_AEQE_U32_4_EVENT_SUB_TYPE_M = common dso_local global i32 0, align 4
@HNS_ROCE_AEQE_U32_4_EVENT_SUB_TYPE_S = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"QP %d, QPC error.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"QP %d, MTU error.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"QP %d, WQE BA addr error.\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"QP %d, WQE addr error.\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"QP %d, WQE shift error\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"QP %d, SL error.\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"QP %d, port error.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, %struct.hns_roce_aeqe*, i32)* @hns_roce_v1_wq_catas_err_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_v1_wq_catas_err_handle(%struct.hns_roce_dev* %0, %struct.hns_roce_aeqe* %1, i32 %2) #0 {
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca %struct.hns_roce_aeqe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store %struct.hns_roce_aeqe* %1, %struct.hns_roce_aeqe** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %9 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.device*, %struct.device** %7, align 8
  %13 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %12, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %5, align 8
  %15 = getelementptr inbounds %struct.hns_roce_aeqe, %struct.hns_roce_aeqe* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HNS_ROCE_AEQE_U32_4_EVENT_SUB_TYPE_M, align 4
  %18 = load i32, i32* @HNS_ROCE_AEQE_U32_4_EVENT_SUB_TYPE_S, align 4
  %19 = call i32 @roce_get_field(i32 %16, i32 %17, i32 %18)
  switch i32 %19, label %48 [
    i32 132, label %20
    i32 134, label %24
    i32 128, label %28
    i32 129, label %32
    i32 130, label %36
    i32 131, label %40
    i32 133, label %44
  ]

20:                                               ; preds = %3
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %49

24:                                               ; preds = %3
  %25 = load %struct.device*, %struct.device** %7, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  br label %49

28:                                               ; preds = %3
  %29 = load %struct.device*, %struct.device** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  br label %49

32:                                               ; preds = %3
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  br label %49

36:                                               ; preds = %3
  %37 = load %struct.device*, %struct.device** %7, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %38)
  br label %49

40:                                               ; preds = %3
  %41 = load %struct.device*, %struct.device** %7, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %42)
  br label %49

44:                                               ; preds = %3
  %45 = load %struct.device*, %struct.device** %7, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %46)
  br label %49

48:                                               ; preds = %3
  br label %49

49:                                               ; preds = %48, %44, %40, %36, %32, %28, %24, %20
  ret void
}

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @roce_get_field(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
