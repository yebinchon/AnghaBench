; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_main.c_handle_en_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_main.c_handle_en_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { %struct.net_device** }
%struct.net_device = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"port(%d) can't find netdev\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"NETDEV event = 0x%x!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i64, i64)* @handle_en_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_en_event(%struct.hns_roce_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %12 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %11, i32 0, i32 1
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %15 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.net_device**, %struct.net_device*** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.net_device*, %struct.net_device** %17, i64 %18
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %9, align 8
  %21 = load %struct.net_device*, %struct.net_device** %9, align 8
  %22 = icmp ne %struct.net_device* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %3
  %24 = load %struct.device*, %struct.device** %8, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %46

29:                                               ; preds = %3
  %30 = load i64, i64* %7, align 8
  switch i64 %30, label %39 [
    i64 128, label %31
    i64 132, label %31
    i64 129, label %31
    i64 131, label %31
    i64 130, label %38
  ]

31:                                               ; preds = %29, %29, %29, %29
  %32 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.net_device*, %struct.net_device** %9, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @hns_roce_set_mac(%struct.hns_roce_dev* %32, i64 %33, i32 %36)
  store i32 %37, i32* %10, align 4
  br label %44

38:                                               ; preds = %29
  br label %44

39:                                               ; preds = %29
  %40 = load %struct.device*, %struct.device** %8, align 8
  %41 = load i64, i64* %7, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @dev_dbg(%struct.device* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %39, %38, %31
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %23
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @hns_roce_set_mac(%struct.hns_roce_dev*, i64, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
