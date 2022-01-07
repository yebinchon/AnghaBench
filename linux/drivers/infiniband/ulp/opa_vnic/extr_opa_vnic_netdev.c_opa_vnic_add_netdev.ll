; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_netdev.c_opa_vnic_add_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_netdev.c_opa_vnic_add_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_vnic_adapter = type { i32, i32, i32, i32*, i8*, i8*, %struct.ib_device*, %struct.net_device* }
%struct.net_device = type { i32, i32, i32* }
%struct.ib_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.net_device* (%struct.ib_device*, i8*, i32, i8*, i32, i32)* }
%struct.rdma_netdev = type { i32 (%struct.net_device.0*)*, i8*, %struct.ib_device*, %struct.opa_vnic_adapter* }
%struct.net_device.0 = type opaque

@RDMA_NETDEV_OPA_VNIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"veth%d\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@ether_setup = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@opa_netdev_ops = common dso_local global i32 0, align 4
@IFF_LIVE_ADDR_CHANGE = common dso_local global i32 0, align 4
@OPA_VNIC_SKB_HEADROOM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"initialized\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.opa_vnic_adapter* @opa_vnic_add_netdev(%struct.ib_device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.opa_vnic_adapter*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.opa_vnic_adapter*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.rdma_netdev*, align 8
  %11 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %13 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.net_device* (%struct.ib_device*, i8*, i32, i8*, i32, i32)*, %struct.net_device* (%struct.ib_device*, i8*, i32, i8*, i32, i32)** %14, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @RDMA_NETDEV_OPA_VNIC, align 4
  %19 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %20 = load i32, i32* @ether_setup, align 4
  %21 = call %struct.net_device* %15(%struct.ib_device* %16, i8* %17, i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  store %struct.net_device* %21, %struct.net_device** %9, align 8
  %22 = load %struct.net_device*, %struct.net_device** %9, align 8
  %23 = icmp ne %struct.net_device* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.opa_vnic_adapter* @ERR_PTR(i32 %26)
  store %struct.opa_vnic_adapter* %27, %struct.opa_vnic_adapter** %4, align 8
  br label %136

28:                                               ; preds = %3
  %29 = load %struct.net_device*, %struct.net_device** %9, align 8
  %30 = call i64 @IS_ERR(%struct.net_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.net_device*, %struct.net_device** %9, align 8
  %34 = call %struct.opa_vnic_adapter* @ERR_CAST(%struct.net_device* %33)
  store %struct.opa_vnic_adapter* %34, %struct.opa_vnic_adapter** %4, align 8
  br label %136

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.net_device*, %struct.net_device** %9, align 8
  %38 = call %struct.rdma_netdev* @netdev_priv(%struct.net_device* %37)
  store %struct.rdma_netdev* %38, %struct.rdma_netdev** %10, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.opa_vnic_adapter* @kzalloc(i32 56, i32 %39)
  store %struct.opa_vnic_adapter* %40, %struct.opa_vnic_adapter** %8, align 8
  %41 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %8, align 8
  %42 = icmp ne %struct.opa_vnic_adapter* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  br label %127

46:                                               ; preds = %36
  %47 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %8, align 8
  %48 = load %struct.rdma_netdev*, %struct.rdma_netdev** %10, align 8
  %49 = getelementptr inbounds %struct.rdma_netdev, %struct.rdma_netdev* %48, i32 0, i32 3
  store %struct.opa_vnic_adapter* %47, %struct.opa_vnic_adapter** %49, align 8
  %50 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %51 = load %struct.rdma_netdev*, %struct.rdma_netdev** %10, align 8
  %52 = getelementptr inbounds %struct.rdma_netdev, %struct.rdma_netdev* %51, i32 0, i32 2
  store %struct.ib_device* %50, %struct.ib_device** %52, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load %struct.rdma_netdev*, %struct.rdma_netdev** %10, align 8
  %55 = getelementptr inbounds %struct.rdma_netdev, %struct.rdma_netdev* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.net_device*, %struct.net_device** %9, align 8
  %57 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %8, align 8
  %58 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %57, i32 0, i32 7
  store %struct.net_device* %56, %struct.net_device** %58, align 8
  %59 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %60 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %8, align 8
  %61 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %60, i32 0, i32 6
  store %struct.ib_device* %59, %struct.ib_device** %61, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %8, align 8
  %64 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %8, align 8
  %67 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  %68 = load %struct.net_device*, %struct.net_device** %9, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %8, align 8
  %72 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %71, i32 0, i32 3
  store i32* %70, i32** %72, align 8
  %73 = load %struct.net_device*, %struct.net_device** %9, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 2
  store i32* @opa_netdev_ops, i32** %74, align 8
  %75 = load i32, i32* @IFF_LIVE_ADDR_CHANGE, align 4
  %76 = load %struct.net_device*, %struct.net_device** %9, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load i64, i64* @OPA_VNIC_SKB_HEADROOM, align 8
  %81 = load %struct.net_device*, %struct.net_device** %9, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %80
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 8
  %87 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %8, align 8
  %88 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %87, i32 0, i32 1
  %89 = call i32 @mutex_init(i32* %88)
  %90 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %8, align 8
  %91 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %90, i32 0, i32 0
  %92 = call i32 @mutex_init(i32* %91)
  %93 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %8, align 8
  %94 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %93, i32 0, i32 2
  %95 = call i32 @spin_lock_init(i32* %94)
  %96 = load %struct.net_device*, %struct.net_device** %9, align 8
  %97 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %98 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @SET_NETDEV_DEV(%struct.net_device* %96, i32 %100)
  %102 = load %struct.net_device*, %struct.net_device** %9, align 8
  %103 = call i32 @opa_vnic_set_ethtool_ops(%struct.net_device* %102)
  %104 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %8, align 8
  %105 = call i32 @opa_vnic_set_pod_values(%struct.opa_vnic_adapter* %104)
  %106 = load %struct.net_device*, %struct.net_device** %9, align 8
  %107 = call i32 @register_netdev(%struct.net_device* %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %46
  br label %118

111:                                              ; preds = %46
  %112 = load %struct.net_device*, %struct.net_device** %9, align 8
  %113 = call i32 @netif_carrier_off(%struct.net_device* %112)
  %114 = load %struct.net_device*, %struct.net_device** %9, align 8
  %115 = call i32 @netif_dormant_on(%struct.net_device* %114)
  %116 = call i32 @v_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %117 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %8, align 8
  store %struct.opa_vnic_adapter* %117, %struct.opa_vnic_adapter** %4, align 8
  br label %136

118:                                              ; preds = %110
  %119 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %8, align 8
  %120 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %119, i32 0, i32 1
  %121 = call i32 @mutex_destroy(i32* %120)
  %122 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %8, align 8
  %123 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %122, i32 0, i32 0
  %124 = call i32 @mutex_destroy(i32* %123)
  %125 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %8, align 8
  %126 = call i32 @kfree(%struct.opa_vnic_adapter* %125)
  br label %127

127:                                              ; preds = %118, %43
  %128 = load %struct.rdma_netdev*, %struct.rdma_netdev** %10, align 8
  %129 = getelementptr inbounds %struct.rdma_netdev, %struct.rdma_netdev* %128, i32 0, i32 0
  %130 = load i32 (%struct.net_device.0*)*, i32 (%struct.net_device.0*)** %129, align 8
  %131 = load %struct.net_device*, %struct.net_device** %9, align 8
  %132 = bitcast %struct.net_device* %131 to %struct.net_device.0*
  %133 = call i32 %130(%struct.net_device.0* %132)
  %134 = load i32, i32* %11, align 4
  %135 = call %struct.opa_vnic_adapter* @ERR_PTR(i32 %134)
  store %struct.opa_vnic_adapter* %135, %struct.opa_vnic_adapter** %4, align 8
  br label %136

136:                                              ; preds = %127, %111, %32, %24
  %137 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %4, align 8
  ret %struct.opa_vnic_adapter* %137
}

declare dso_local %struct.opa_vnic_adapter* @ERR_PTR(i32) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local %struct.opa_vnic_adapter* @ERR_CAST(%struct.net_device*) #1

declare dso_local %struct.rdma_netdev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.opa_vnic_adapter* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32) #1

declare dso_local i32 @opa_vnic_set_ethtool_ops(%struct.net_device*) #1

declare dso_local i32 @opa_vnic_set_pod_values(%struct.opa_vnic_adapter*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_dormant_on(%struct.net_device*) #1

declare dso_local i32 @v_info(i8*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.opa_vnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
