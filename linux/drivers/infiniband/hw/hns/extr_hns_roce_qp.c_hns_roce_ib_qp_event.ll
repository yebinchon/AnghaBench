; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_hns_roce_ib_qp_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_hns_roce_ib_qp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_qp = type { i32, %struct.ib_qp }
%struct.ib_qp = type { i32, i32 (%struct.ib_event*, i32)*, %struct.TYPE_6__* }
%struct.ib_event = type opaque
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ib_event.0 = type { i32, %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { %struct.ib_qp* }

@IB_EVENT_PATH_MIG = common dso_local global i32 0, align 4
@IB_EVENT_COMM_EST = common dso_local global i32 0, align 4
@IB_EVENT_SQ_DRAINED = common dso_local global i32 0, align 4
@IB_EVENT_QP_LAST_WQE_REACHED = common dso_local global i32 0, align 4
@IB_EVENT_QP_FATAL = common dso_local global i32 0, align 4
@IB_EVENT_PATH_MIG_ERR = common dso_local global i32 0, align 4
@IB_EVENT_QP_REQ_ERR = common dso_local global i32 0, align 4
@IB_EVENT_QP_ACCESS_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"roce_ib: Unexpected event type %d on QP %06lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_qp*, i32)* @hns_roce_ib_qp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_ib_qp_event(%struct.hns_roce_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.hns_roce_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_event.0, align 8
  %6 = alloca %struct.ib_qp*, align 8
  store %struct.hns_roce_qp* %0, %struct.hns_roce_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %3, align 8
  %8 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %7, i32 0, i32 1
  store %struct.ib_qp* %8, %struct.ib_qp** %6, align 8
  %9 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %10 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %9, i32 0, i32 1
  %11 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %10, align 8
  %12 = icmp ne i32 (%struct.ib_event*, i32)* %11, null
  br i1 %12, label %13, label %67

13:                                               ; preds = %2
  %14 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %15 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %5, i32 0, i32 2
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %17, align 8
  %18 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %19 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %5, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.ib_qp* %18, %struct.ib_qp** %20, align 8
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %46 [
    i32 132, label %22
    i32 135, label %25
    i32 130, label %28
    i32 129, label %31
    i32 128, label %34
    i32 131, label %37
    i32 134, label %40
    i32 133, label %43
  ]

22:                                               ; preds = %13
  %23 = load i32, i32* @IB_EVENT_PATH_MIG, align 4
  %24 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %5, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  br label %58

25:                                               ; preds = %13
  %26 = load i32, i32* @IB_EVENT_COMM_EST, align 4
  %27 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %5, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  br label %58

28:                                               ; preds = %13
  %29 = load i32, i32* @IB_EVENT_SQ_DRAINED, align 4
  %30 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %5, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  br label %58

31:                                               ; preds = %13
  %32 = load i32, i32* @IB_EVENT_QP_LAST_WQE_REACHED, align 4
  %33 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %5, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  br label %58

34:                                               ; preds = %13
  %35 = load i32, i32* @IB_EVENT_QP_FATAL, align 4
  %36 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %5, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  br label %58

37:                                               ; preds = %13
  %38 = load i32, i32* @IB_EVENT_PATH_MIG_ERR, align 4
  %39 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %5, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  br label %58

40:                                               ; preds = %13
  %41 = load i32, i32* @IB_EVENT_QP_REQ_ERR, align 4
  %42 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %5, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  br label %58

43:                                               ; preds = %13
  %44 = load i32, i32* @IB_EVENT_QP_ACCESS_ERR, align 4
  %45 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %5, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  br label %58

46:                                               ; preds = %13
  %47 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %48 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %3, align 8
  %55 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56)
  br label %67

58:                                               ; preds = %43, %40, %37, %34, %31, %28, %25, %22
  %59 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %60 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %59, i32 0, i32 1
  %61 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %60, align 8
  %62 = bitcast %struct.ib_event.0* %5 to %struct.ib_event*
  %63 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %64 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 %61(%struct.ib_event* %62, i32 %65)
  br label %67

67:                                               ; preds = %46, %58, %2
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
