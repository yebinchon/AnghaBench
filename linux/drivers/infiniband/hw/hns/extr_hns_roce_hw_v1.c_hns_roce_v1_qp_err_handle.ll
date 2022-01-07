; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_qp_err_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_qp_err_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hns_roce_aeqe = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@HNS_ROCE_AEQE_EVENT_QP_EVENT_QP_QPN_M = common dso_local global i32 0, align 4
@HNS_ROCE_AEQE_EVENT_QP_EVENT_QP_QPN_S = common dso_local global i32 0, align 4
@HNS_ROCE_AEQE_EVENT_QP_EVENT_PORT_NUM_M = common dso_local global i32 0, align 4
@HNS_ROCE_AEQE_EVENT_QP_EVENT_PORT_NUM_S = common dso_local global i32 0, align 4
@HNS_ROCE_MAX_PORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Invalid Req Local Work Queue Error.\0AQP %d, phy_port %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, %struct.hns_roce_aeqe*, i32)* @hns_roce_v1_qp_err_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_v1_qp_err_handle(%struct.hns_roce_dev* %0, %struct.hns_roce_aeqe* %1, i32 %2) #0 {
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca %struct.hns_roce_aeqe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store %struct.hns_roce_aeqe* %1, %struct.hns_roce_aeqe** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %11 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %5, align 8
  %15 = getelementptr inbounds %struct.hns_roce_aeqe, %struct.hns_roce_aeqe* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @HNS_ROCE_AEQE_EVENT_QP_EVENT_QP_QPN_M, align 4
  %20 = load i32, i32* @HNS_ROCE_AEQE_EVENT_QP_EVENT_QP_QPN_S, align 4
  %21 = call i32 @roce_get_field(i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %5, align 8
  %23 = getelementptr inbounds %struct.hns_roce_aeqe, %struct.hns_roce_aeqe* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @HNS_ROCE_AEQE_EVENT_QP_EVENT_PORT_NUM_M, align 4
  %28 = load i32, i32* @HNS_ROCE_AEQE_EVENT_QP_EVENT_PORT_NUM_S, align 4
  %29 = call i32 @roce_get_field(i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp sle i32 %30, 1
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = load i32, i32* @HNS_ROCE_MAX_PORTS, align 4
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %32, %3
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %55 [
    i32 130, label %40
    i32 128, label %45
    i32 129, label %50
  ]

40:                                               ; preds = %38
  %41 = load %struct.device*, %struct.device** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @dev_warn(%struct.device* %41, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  br label %56

45:                                               ; preds = %38
  %46 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %47 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @hns_roce_v1_wq_catas_err_handle(%struct.hns_roce_dev* %46, %struct.hns_roce_aeqe* %47, i32 %48)
  br label %56

50:                                               ; preds = %38
  %51 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %52 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @hns_roce_v1_local_wq_access_err_handle(%struct.hns_roce_dev* %51, %struct.hns_roce_aeqe* %52, i32 %53)
  br label %56

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55, %50, %45, %40
  %57 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @hns_roce_qp_event(%struct.hns_roce_dev* %57, i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @roce_get_field(i32, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @hns_roce_v1_wq_catas_err_handle(%struct.hns_roce_dev*, %struct.hns_roce_aeqe*, i32) #1

declare dso_local i32 @hns_roce_v1_local_wq_access_err_handle(%struct.hns_roce_dev*, %struct.hns_roce_aeqe*, i32) #1

declare dso_local i32 @hns_roce_qp_event(%struct.hns_roce_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
