; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_create_tx_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_create_tx_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.net_device = type { i32 }
%struct.ipoib_cm_tx = type { i32 }
%struct.ipoib_dev_priv = type { i32, %struct.TYPE_7__*, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ib_qp_init_attr = type { %struct.TYPE_8__, i32, %struct.ipoib_cm_tx*, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@ipoib_sendq_size = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@IB_SIGNAL_ALL_WR = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_qp* (%struct.net_device*, %struct.ipoib_cm_tx*)* @ipoib_cm_create_tx_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_qp* @ipoib_cm_create_tx_qp(%struct.net_device* %0, %struct.ipoib_cm_tx* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ipoib_cm_tx*, align 8
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca %struct.ib_qp_init_attr, align 8
  %7 = alloca %struct.ib_qp*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ipoib_cm_tx* %1, %struct.ipoib_cm_tx** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %8)
  store %struct.ipoib_dev_priv* %9, %struct.ipoib_dev_priv** %5, align 8
  %10 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %13 = load i32, i32* @ipoib_sendq_size, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 1
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 2
  %16 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %4, align 8
  store %struct.ipoib_cm_tx* %16, %struct.ipoib_cm_tx** %15, align 8
  %17 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 3
  %18 = load i32, i32* @IB_QPT_RC, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 4
  %20 = load i32, i32* @IB_SIGNAL_ALL_WR, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 5
  %22 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %23 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %21, align 8
  %26 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 6
  %27 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %28 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %26, align 4
  %30 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 7
  %31 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %32 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %30, align 8
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NETIF_F_SG, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %2
  %41 = load i32, i32* @u32, align 4
  %42 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %43 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %49 = add nsw i64 %48, 1
  %50 = call i32 @min_t(i32 %41, i32 %47, i64 %49)
  %51 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %40, %2
  %54 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %55 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.ib_qp* @ib_create_qp(i32 %56, %struct.ib_qp_init_attr* %6)
  store %struct.ib_qp* %57, %struct.ib_qp** %7, align 8
  %58 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %4, align 8
  %62 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  ret %struct.ib_qp* %63
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32 @min_t(i32, i32, i64) #1

declare dso_local %struct.ib_qp* @ib_create_qp(i32, %struct.ib_qp_init_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
