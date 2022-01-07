; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_cmd_sw_resetting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_cmd_sw_resetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32, i64, i32, i64 }
%struct.hns_roce_v2_priv = type { %struct.hnae3_handle* }
%struct.hnae3_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hnae3_ae_ops* }
%struct.hnae3_ae_ops = type { i64 (%struct.hnae3_handle*)* }

@CMD_RST_PRC_EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*)* @hns_roce_v2_cmd_sw_resetting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_cmd_sw_resetting(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca %struct.hns_roce_dev*, align 8
  %3 = alloca %struct.hns_roce_v2_priv*, align 8
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca %struct.hnae3_ae_ops*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %2, align 8
  %6 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %7 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.hns_roce_v2_priv*
  store %struct.hns_roce_v2_priv* %9, %struct.hns_roce_v2_priv** %3, align 8
  %10 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %3, align 8
  %11 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %10, i32 0, i32 0
  %12 = load %struct.hnae3_handle*, %struct.hnae3_handle** %11, align 8
  store %struct.hnae3_handle* %12, %struct.hnae3_handle** %4, align 8
  %13 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %14 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %16, align 8
  store %struct.hnae3_ae_ops* %17, %struct.hnae3_ae_ops** %5, align 8
  %18 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %19 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %5, align 8
  %21 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %20, i32 0, i32 0
  %22 = load i64 (%struct.hnae3_handle*)*, i64 (%struct.hnae3_handle*)** %21, align 8
  %23 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %24 = call i64 %22(%struct.hnae3_handle* %23)
  %25 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %26 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %31 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %30, i32 0, i32 2
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %1
  %33 = load i32, i32* @CMD_RST_PRC_EBUSY, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
