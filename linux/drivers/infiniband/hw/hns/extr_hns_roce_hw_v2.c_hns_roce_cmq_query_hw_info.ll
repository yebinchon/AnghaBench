; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_cmq_query_hw_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_cmq_query_hw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hns_roce_query_version = type { i32 }
%struct.hns_roce_cmq_desc = type { i64 }

@HNS_ROCE_OPC_QUERY_HW_VER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*)* @hns_roce_cmq_query_hw_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_cmq_query_hw_info(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_query_version*, align 8
  %5 = alloca %struct.hns_roce_cmq_desc, align 8
  %6 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  %7 = load i32, i32* @HNS_ROCE_OPC_QUERY_HW_VER, align 4
  %8 = call i32 @hns_roce_cmq_setup_basic_desc(%struct.hns_roce_cmq_desc* %5, i32 %7, i32 1)
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %10 = call i32 @hns_roce_cmq_send(%struct.hns_roce_dev* %9, %struct.hns_roce_cmq_desc* %5, i32 1)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %32

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.hns_roce_cmq_desc, %struct.hns_roce_cmq_desc* %5, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.hns_roce_query_version*
  store %struct.hns_roce_query_version* %18, %struct.hns_roce_query_version** %4, align 8
  %19 = load %struct.hns_roce_query_version*, %struct.hns_roce_query_version** %4, align 8
  %20 = getelementptr inbounds %struct.hns_roce_query_version, %struct.hns_roce_query_version* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le16_to_cpu(i32 %21)
  %23 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %24 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %26 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %31 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %15, %13
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @hns_roce_cmq_setup_basic_desc(%struct.hns_roce_cmq_desc*, i32, i32) #1

declare dso_local i32 @hns_roce_cmq_send(%struct.hns_roce_dev*, %struct.hns_roce_cmq_desc*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
