; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_pkey_dev_check_presence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_pkey_dev_check_presence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32, i32, i32, i32 }
%struct.rdma_netdev = type { i32 (%struct.net_device.0*, i32)* }
%struct.net_device.0 = type opaque

@IPOIB_PKEY_ASSIGNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_pkey_dev_check_presence(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca %struct.rdma_netdev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %5)
  store %struct.ipoib_dev_priv* %6, %struct.ipoib_dev_priv** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.rdma_netdev* @netdev_priv(%struct.net_device* %7)
  store %struct.rdma_netdev* %8, %struct.rdma_netdev** %4, align 8
  %9 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 32767
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %16 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %22 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %25 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %24, i32 0, i32 2
  %26 = call i64 @ib_find_pkey(i32 %17, i32 %20, i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %14, %1
  %29 = load i32, i32* @IPOIB_PKEY_ASSIGNED, align 4
  %30 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %31 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %30, i32 0, i32 1
  %32 = call i32 @clear_bit(i32 %29, i32* %31)
  br label %53

33:                                               ; preds = %14
  %34 = load %struct.rdma_netdev*, %struct.rdma_netdev** %4, align 8
  %35 = getelementptr inbounds %struct.rdma_netdev, %struct.rdma_netdev* %34, i32 0, i32 0
  %36 = load i32 (%struct.net_device.0*, i32)*, i32 (%struct.net_device.0*, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.net_device.0*, i32)* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.rdma_netdev*, %struct.rdma_netdev** %4, align 8
  %40 = getelementptr inbounds %struct.rdma_netdev, %struct.rdma_netdev* %39, i32 0, i32 0
  %41 = load i32 (%struct.net_device.0*, i32)*, i32 (%struct.net_device.0*, i32)** %40, align 8
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = bitcast %struct.net_device* %42 to %struct.net_device.0*
  %44 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %45 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 %41(%struct.net_device.0* %43, i32 %46)
  br label %48

48:                                               ; preds = %38, %33
  %49 = load i32, i32* @IPOIB_PKEY_ASSIGNED, align 4
  %50 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %51 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %50, i32 0, i32 1
  %52 = call i32 @set_bit(i32 %49, i32* %51)
  br label %53

53:                                               ; preds = %48, %28
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local %struct.rdma_netdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ib_find_pkey(i32, i32, i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
