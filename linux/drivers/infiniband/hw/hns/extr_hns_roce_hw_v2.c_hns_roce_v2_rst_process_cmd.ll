; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_rst_process_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_rst_process_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i64, i64, i64 }
%struct.hns_roce_v2_priv = type { %struct.hnae3_handle* }
%struct.hnae3_handle = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { %struct.hnae3_ae_ops* }
%struct.hnae3_ae_ops = type { i64 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)* }

@CMD_RST_PRC_SUCCESS = common dso_local global i32 0, align 4
@HNS_ROCE_STATE_INIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*)* @hns_roce_v2_rst_process_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_rst_process_cmd(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_v2_priv*, align 8
  %5 = alloca %struct.hnae3_handle*, align 8
  %6 = alloca %struct.hnae3_ae_ops*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  %12 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.hns_roce_v2_priv*
  store %struct.hns_roce_v2_priv* %15, %struct.hns_roce_v2_priv** %4, align 8
  %16 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %4, align 8
  %17 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %16, i32 0, i32 0
  %18 = load %struct.hnae3_handle*, %struct.hnae3_handle** %17, align 8
  store %struct.hnae3_handle* %18, %struct.hnae3_handle** %5, align 8
  %19 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %20 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %22, align 8
  store %struct.hnae3_ae_ops* %23, %struct.hnae3_ae_ops** %6, align 8
  %24 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %25 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @CMD_RST_PRC_SUCCESS, align 4
  store i32 %29, i32* %2, align 4
  br label %85

30:                                               ; preds = %1
  %31 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %32 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  %35 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %36 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  %39 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %6, align 8
  %40 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %39, i32 0, i32 0
  %41 = load i64 (%struct.hnae3_handle*)*, i64 (%struct.hnae3_handle*)** %40, align 8
  %42 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %43 = call i64 %41(%struct.hnae3_handle* %42)
  store i64 %43, i64* %9, align 8
  %44 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %6, align 8
  %45 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %44, i32 0, i32 1
  %46 = load i32 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)** %45, align 8
  %47 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %48 = call i32 %46(%struct.hnae3_handle* %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %6, align 8
  %50 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %49, i32 0, i32 2
  %51 = load i32 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)** %50, align 8
  %52 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %53 = call i32 %51(%struct.hnae3_handle* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %56 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %30
  %60 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @hns_roce_v2_cmd_hw_reseted(%struct.hns_roce_dev* %60, i64 %61, i64 %62)
  store i32 %63, i32* %2, align 4
  br label %85

64:                                               ; preds = %30
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @hns_roce_v2_cmd_hw_resetting(%struct.hns_roce_dev* %68, i64 %69, i64 %70)
  store i32 %71, i32* %2, align 4
  br label %85

72:                                               ; preds = %64
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @HNS_ROCE_STATE_INIT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %81 = call i32 @hns_roce_v2_cmd_sw_resetting(%struct.hns_roce_dev* %80)
  store i32 %81, i32* %2, align 4
  br label %85

82:                                               ; preds = %75, %72
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %79, %67, %59, %28
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @hns_roce_v2_cmd_hw_reseted(%struct.hns_roce_dev*, i64, i64) #1

declare dso_local i32 @hns_roce_v2_cmd_hw_resetting(%struct.hns_roce_dev*, i64, i64) #1

declare dso_local i32 @hns_roce_v2_cmd_sw_resetting(%struct.hns_roce_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
