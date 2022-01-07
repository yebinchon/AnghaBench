; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_hw_v2_reset_notify_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_hw_v2_reset_notify_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.hns_roce_dev = type { i32, i32, i32, i32 }
%struct.ib_event = type { %struct.TYPE_4__, i32*, i32 }
%struct.TYPE_4__ = type { i32 }

@HNS_ROCE_STATE_INITED = common dso_local global i64 0, align 8
@HNS_ROCE_RST_DIRECT_RETURN = common dso_local global i32 0, align 4
@HNS_ROCE_STATE_RST_DOWN = common dso_local global i32 0, align 4
@IB_EVENT_DEVICE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*)* @hns_roce_hw_v2_reset_notify_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_hw_v2_reset_notify_down(%struct.hnae3_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca %struct.ib_event, align 8
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  %6 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %7 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @HNS_ROCE_STATE_INITED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @HNS_ROCE_RST_DIRECT_RETURN, align 4
  %14 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %15 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = call i32 @set_bit(i32 %13, i32* %16)
  store i32 0, i32* %2, align 4
  br label %50

18:                                               ; preds = %1
  %19 = load i32, i32* @HNS_ROCE_STATE_RST_DOWN, align 4
  %20 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %21 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @HNS_ROCE_RST_DIRECT_RETURN, align 4
  %24 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %25 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = call i32 @clear_bit(i32 %23, i32* %26)
  %28 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %29 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.hns_roce_dev*
  store %struct.hns_roce_dev* %31, %struct.hns_roce_dev** %4, align 8
  %32 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %33 = icmp ne %struct.hns_roce_dev* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %50

35:                                               ; preds = %18
  %36 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %37 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %39 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %41 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %40, i32 0, i32 2
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* @IB_EVENT_DEVICE_FATAL, align 4
  %43 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 2
  store i32 %42, i32* %43, align 8
  %44 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %45 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 1
  store i32* %45, i32** %46, align 8
  %47 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = call i32 @ib_dispatch_event(%struct.ib_event* %5)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %35, %34, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ib_dispatch_event(%struct.ib_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
