; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_srq.c_hns_roce_ib_srq_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_srq.c_hns_roce_ib_srq_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_srq = type { i32, %struct.ib_srq }
%struct.ib_srq = type { i32, i32 (%struct.ib_event*, i32)*, i32 }
%struct.ib_event = type opaque
%struct.hns_roce_dev = type { i32 }
%struct.ib_event.0 = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.ib_srq* }

@IB_EVENT_SRQ_LIMIT_REACHED = common dso_local global i32 0, align 4
@IB_EVENT_SRQ_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"hns_roce:Unexpected event type 0x%x on SRQ %06lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_srq*, i32)* @hns_roce_ib_srq_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_ib_srq_event(%struct.hns_roce_srq* %0, i32 %1) #0 {
  %3 = alloca %struct.hns_roce_srq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca %struct.ib_srq*, align 8
  %7 = alloca %struct.ib_event.0, align 8
  store %struct.hns_roce_srq* %0, %struct.hns_roce_srq** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %3, align 8
  %9 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.hns_roce_dev* @to_hr_dev(i32 %11)
  store %struct.hns_roce_dev* %12, %struct.hns_roce_dev** %5, align 8
  %13 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %3, align 8
  %14 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %13, i32 0, i32 1
  store %struct.ib_srq* %14, %struct.ib_srq** %6, align 8
  %15 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %16 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %15, i32 0, i32 1
  %17 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.ib_event*, i32)* %17, null
  br i1 %18, label %19, label %52

19:                                               ; preds = %2
  %20 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %21 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %7, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %25 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %7, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.ib_srq* %24, %struct.ib_srq** %26, align 8
  %27 = load i32, i32* %4, align 4
  switch i32 %27, label %34 [
    i32 128, label %28
    i32 129, label %31
  ]

28:                                               ; preds = %19
  %29 = load i32, i32* @IB_EVENT_SRQ_LIMIT_REACHED, align 4
  %30 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %7, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  br label %43

31:                                               ; preds = %19
  %32 = load i32, i32* @IB_EVENT_SRQ_ERR, align 4
  %33 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %7, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  br label %43

34:                                               ; preds = %19
  %35 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %36 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %3, align 8
  %40 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  br label %52

43:                                               ; preds = %31, %28
  %44 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %45 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %44, i32 0, i32 1
  %46 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %45, align 8
  %47 = bitcast %struct.ib_event.0* %7 to %struct.ib_event*
  %48 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %49 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %46(%struct.ib_event* %47, i32 %50)
  br label %52

52:                                               ; preds = %34, %43, %2
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
