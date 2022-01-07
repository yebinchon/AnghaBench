; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cq.c_hns_roce_ib_cq_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cq.c_hns_roce_ib_cq_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_cq = type { i32, %struct.ib_cq }
%struct.ib_cq = type { i32, i32 (%struct.ib_event*, i32)*, i32 }
%struct.ib_event = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.ib_cq* }
%struct.hns_roce_dev = type { i32 }

@HNS_ROCE_EVENT_TYPE_CQ_ID_INVALID = common dso_local global i32 0, align 4
@HNS_ROCE_EVENT_TYPE_CQ_ACCESS_ERROR = common dso_local global i32 0, align 4
@HNS_ROCE_EVENT_TYPE_CQ_OVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"hns_roce_ib: Unexpected event type 0x%x on CQ %06lx\0A\00", align 1
@IB_EVENT_CQ_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_cq*, i32)* @hns_roce_ib_cq_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_ib_cq_event(%struct.hns_roce_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.hns_roce_cq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca %struct.ib_event, align 8
  %7 = alloca %struct.ib_cq*, align 8
  store %struct.hns_roce_cq* %0, %struct.hns_roce_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %3, align 8
  %9 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %8, i32 0, i32 1
  store %struct.ib_cq* %9, %struct.ib_cq** %7, align 8
  %10 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %11 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.hns_roce_dev* @to_hr_dev(i32 %12)
  store %struct.hns_roce_dev* %13, %struct.hns_roce_dev** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @HNS_ROCE_EVENT_TYPE_CQ_ID_INVALID, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @HNS_ROCE_EVENT_TYPE_CQ_ACCESS_ERROR, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @HNS_ROCE_EVENT_TYPE_CQ_OVERFLOW, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %27 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %3, align 8
  %31 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  br label %56

34:                                               ; preds = %21, %17, %2
  %35 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %36 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %35, i32 0, i32 1
  %37 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %36, align 8
  %38 = icmp ne i32 (%struct.ib_event*, i32)* %37, null
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %41 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %6, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @IB_EVENT_CQ_ERR, align 4
  %45 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %6, i32 0, i32 1
  store i32 %44, i32* %45, align 8
  %46 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %47 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %6, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store %struct.ib_cq* %46, %struct.ib_cq** %48, align 8
  %49 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %50 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %49, i32 0, i32 1
  %51 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %50, align 8
  %52 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %53 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 %51(%struct.ib_event* %6, i32 %54)
  br label %56

56:                                               ; preds = %25, %39, %34
  ret void
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
