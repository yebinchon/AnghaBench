; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_intf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_intf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32*, i32* }
%struct.rdma_netdev = type { %struct.ipoib_dev_priv*, %struct.ib_device*, i32, i32, i32 }
%struct.ipoib_dev_priv = type { i32*, i32*, i32, %struct.ib_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_NETDEV_IPOIB = common dso_local global i32 0, align 4
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@ipoib_setup_common = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ipoib_netdev_default_pf = common dso_local global i32 0, align 4
@ipoib_send = common dso_local global i32 0, align 4
@ipoib_mcast_attach = common dso_local global i32 0, align 4
@ipoib_mcast_detach = common dso_local global i32 0, align 4
@IB_DEVICE_VIRTUAL_FUNCTION = common dso_local global i32 0, align 4
@ipoib_netdev_ops_vf = common dso_local global i32 0, align 4
@ipoib_netdev_ops_pf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_intf_init(%struct.ib_device* %0, i32 %1, i8* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.rdma_netdev*, align 8
  %11 = alloca %struct.ipoib_dev_priv*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %9, align 8
  %14 = call %struct.rdma_netdev* @netdev_priv(%struct.net_device* %13)
  store %struct.rdma_netdev* %14, %struct.rdma_netdev** %10, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ipoib_dev_priv* @kzalloc(i32 32, i32 %15)
  store %struct.ipoib_dev_priv* %16, %struct.ipoib_dev_priv** %11, align 8
  %17 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %11, align 8
  %18 = icmp ne %struct.ipoib_dev_priv* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %96

22:                                               ; preds = %4
  %23 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %24 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %11, align 8
  %25 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %24, i32 0, i32 3
  store %struct.ib_device* %23, %struct.ib_device** %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %11, align 8
  %28 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @RDMA_NETDEV_IPOIB, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %34 = load i32, i32* @ipoib_setup_common, align 4
  %35 = load %struct.net_device*, %struct.net_device** %9, align 8
  %36 = call i32 @rdma_init_netdev(%struct.ib_device* %29, i32 %30, i32 %31, i8* %32, i32 %33, i32 %34, %struct.net_device* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %22
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %92

45:                                               ; preds = %39
  %46 = load %struct.net_device*, %struct.net_device** %9, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  store i32* @ipoib_netdev_default_pf, i32** %47, align 8
  %48 = load i32, i32* @ipoib_send, align 4
  %49 = load %struct.rdma_netdev*, %struct.rdma_netdev** %10, align 8
  %50 = getelementptr inbounds %struct.rdma_netdev, %struct.rdma_netdev* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @ipoib_mcast_attach, align 4
  %52 = load %struct.rdma_netdev*, %struct.rdma_netdev** %10, align 8
  %53 = getelementptr inbounds %struct.rdma_netdev, %struct.rdma_netdev* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @ipoib_mcast_detach, align 4
  %55 = load %struct.rdma_netdev*, %struct.rdma_netdev** %10, align 8
  %56 = getelementptr inbounds %struct.rdma_netdev, %struct.rdma_netdev* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %58 = load %struct.rdma_netdev*, %struct.rdma_netdev** %10, align 8
  %59 = getelementptr inbounds %struct.rdma_netdev, %struct.rdma_netdev* %58, i32 0, i32 1
  store %struct.ib_device* %57, %struct.ib_device** %59, align 8
  br label %60

60:                                               ; preds = %45, %22
  %61 = load %struct.net_device*, %struct.net_device** %9, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %11, align 8
  %65 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %64, i32 0, i32 1
  store i32* %63, i32** %65, align 8
  %66 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %67 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IB_DEVICE_VIRTUAL_FUNCTION, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %60
  %74 = load %struct.net_device*, %struct.net_device** %9, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 1
  store i32* @ipoib_netdev_ops_vf, i32** %75, align 8
  br label %79

76:                                               ; preds = %60
  %77 = load %struct.net_device*, %struct.net_device** %9, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 1
  store i32* @ipoib_netdev_ops_pf, i32** %78, align 8
  br label %79

79:                                               ; preds = %76, %73
  %80 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %11, align 8
  %81 = load %struct.rdma_netdev*, %struct.rdma_netdev** %10, align 8
  %82 = getelementptr inbounds %struct.rdma_netdev, %struct.rdma_netdev* %81, i32 0, i32 0
  store %struct.ipoib_dev_priv* %80, %struct.ipoib_dev_priv** %82, align 8
  %83 = load %struct.net_device*, %struct.net_device** %9, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %11, align 8
  %87 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %86, i32 0, i32 0
  store i32* %85, i32** %87, align 8
  %88 = load %struct.net_device*, %struct.net_device** %9, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  store i32* null, i32** %89, align 8
  %90 = load %struct.net_device*, %struct.net_device** %9, align 8
  %91 = call i32 @ipoib_build_priv(%struct.net_device* %90)
  store i32 0, i32* %5, align 4
  br label %96

92:                                               ; preds = %44
  %93 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %11, align 8
  %94 = call i32 @kfree(%struct.ipoib_dev_priv* %93)
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %92, %79, %19
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.rdma_netdev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ipoib_dev_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @rdma_init_netdev(%struct.ib_device*, i32, i32, i8*, i32, i32, %struct.net_device*) #1

declare dso_local i32 @ipoib_build_priv(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.ipoib_dev_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
