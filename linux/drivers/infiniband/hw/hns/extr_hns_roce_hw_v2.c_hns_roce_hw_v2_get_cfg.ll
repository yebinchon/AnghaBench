; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_hw_v2_get_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_hw_v2_get_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32, i32, i64, i32*, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, i32, i32*, i32*, %struct.hns_roce_v2_priv* }
%struct.TYPE_11__ = type { %struct.TYPE_10__**, i64* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.hns_roce_v2_priv = type { %struct.hnae3_handle* }
%struct.hnae3_handle = type { %struct.TYPE_14__*, %struct.TYPE_12__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.hnae3_handle*)* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__*, i32 }

@hns_roce_hw_v2 = common dso_local global i32 0, align 4
@hns_roce_dfx_hw_v2 = common dso_local global i32 0, align 4
@ROCEE_DB_SQ_L_0_REG = common dso_local global i32 0, align 4
@HNS_ROCE_V2_MAX_IRQ_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hnae3_handle*)* @hns_roce_hw_v2_get_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_hw_v2_get_cfg(%struct.hns_roce_dev* %0, %struct.hnae3_handle* %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca %struct.hns_roce_v2_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hnae3_handle* %1, %struct.hnae3_handle** %4, align 8
  %7 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %7, i32 0, i32 12
  %9 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %8, align 8
  store %struct.hns_roce_v2_priv* %9, %struct.hns_roce_v2_priv** %5, align 8
  %10 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %10, i32 0, i32 11
  store i32* @hns_roce_hw_v2, i32** %11, align 8
  %12 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %12, i32 0, i32 10
  store i32* @hns_roce_dfx_hw_v2, i32** %13, align 8
  %14 = load i32, i32* @ROCEE_DB_SQ_L_0_REG, align 4
  %15 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %15, i32 0, i32 8
  store i32 %14, i32* %16, align 4
  %17 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %18 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %21 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %20, i32 0, i32 9
  store i32 %19, i32* %21, align 8
  %22 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %23 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %27 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 8
  %28 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %29 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %32 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %36 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %38, i64 0
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %39, align 8
  %40 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %41 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %46 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %49 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %51, i64 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @addrconf_addr_eui48(i32* %47, i32 %55)
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %79, %2
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @HNS_ROCE_V2_MAX_IRQ_NUM, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %57
  %62 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %63 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %68 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %66, %70
  %72 = call i32 @pci_irq_vector(i32 %64, i64 %71)
  %73 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %74 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  br label %79

79:                                               ; preds = %61
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %57

82:                                               ; preds = %57
  %83 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %84 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %86 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %88 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %87, i32 0, i32 0
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)** %92, align 8
  %94 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %95 = call i32 %93(%struct.hnae3_handle* %94)
  %96 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %97 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %99 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %5, align 8
  %100 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %99, i32 0, i32 0
  store %struct.hnae3_handle* %98, %struct.hnae3_handle** %100, align 8
  ret i32 0
}

declare dso_local i32 @addrconf_addr_eui48(i32*, i32) #1

declare dso_local i32 @pci_irq_vector(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
