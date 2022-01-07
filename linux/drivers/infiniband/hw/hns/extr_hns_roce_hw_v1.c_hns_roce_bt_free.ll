; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_bt_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_bt_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hns_roce_v1_priv = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@HNS_ROCE_BT_RSV_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*)* @hns_roce_bt_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_bt_free(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca %struct.hns_roce_dev*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.hns_roce_v1_priv*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %2, align 8
  %5 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %6 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %5, i32 0, i32 1
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %10 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.hns_roce_v1_priv*
  store %struct.hns_roce_v1_priv* %12, %struct.hns_roce_v1_priv** %4, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = load i32, i32* @HNS_ROCE_BT_RSV_BUF_SIZE, align 4
  %15 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %4, align 8
  %16 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %4, align 8
  %21 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dma_free_coherent(%struct.device* %13, i32 %14, i32 %19, i32 %24)
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = load i32, i32* @HNS_ROCE_BT_RSV_BUF_SIZE, align 4
  %28 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %4, align 8
  %29 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %4, align 8
  %34 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dma_free_coherent(%struct.device* %26, i32 %27, i32 %32, i32 %37)
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = load i32, i32* @HNS_ROCE_BT_RSV_BUF_SIZE, align 4
  %41 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %4, align 8
  %42 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %4, align 8
  %47 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dma_free_coherent(%struct.device* %39, i32 %40, i32 %45, i32 %50)
  ret void
}

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
