; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_cmd_hw_resetting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_cmd_hw_resetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32, i32, i64 }
%struct.hns_roce_v2_priv = type { %struct.hnae3_handle* }
%struct.hnae3_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hnae3_ae_ops* }
%struct.hnae3_ae_ops = type { i32 (%struct.hnae3_handle*)* }

@HNS_ROCE_STATE_RST_INIT = common dso_local global i64 0, align 8
@HNS_ROCE_STATE_INIT = common dso_local global i64 0, align 8
@CMD_RST_PRC_EBUSY = common dso_local global i32 0, align 4
@CMD_RST_PRC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i64, i64)* @hns_roce_v2_cmd_hw_resetting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_cmd_hw_resetting(%struct.hns_roce_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hns_roce_v2_priv*, align 8
  %9 = alloca %struct.hnae3_handle*, align 8
  %10 = alloca %struct.hnae3_ae_ops*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %12 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.hns_roce_v2_priv*
  store %struct.hns_roce_v2_priv* %14, %struct.hns_roce_v2_priv** %8, align 8
  %15 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %8, align 8
  %16 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %15, i32 0, i32 0
  %17 = load %struct.hnae3_handle*, %struct.hnae3_handle** %16, align 8
  store %struct.hnae3_handle* %17, %struct.hnae3_handle** %9, align 8
  %18 = load %struct.hnae3_handle*, %struct.hnae3_handle** %9, align 8
  %19 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %21, align 8
  store %struct.hnae3_ae_ops* %22, %struct.hnae3_ae_ops** %10, align 8
  %23 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %24 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %10, align 8
  %26 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %25, i32 0, i32 0
  %27 = load i32 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)** %26, align 8
  %28 = load %struct.hnae3_handle*, %struct.hnae3_handle** %9, align 8
  %29 = call i32 %27(%struct.hnae3_handle* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %33 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %3
  %35 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %36 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @HNS_ROCE_STATE_RST_INIT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @HNS_ROCE_STATE_INIT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %39, %34
  %48 = load i32, i32* @CMD_RST_PRC_EBUSY, align 4
  store i32 %48, i32* %4, align 4
  br label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @CMD_RST_PRC_SUCCESS, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
