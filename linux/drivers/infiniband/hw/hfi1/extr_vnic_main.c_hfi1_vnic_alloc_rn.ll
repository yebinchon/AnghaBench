; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_alloc_rn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_alloc_rn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32*, i32 }
%struct.ib_device = type { i32 }
%struct.hfi1_devdata = type { i32, i64, i32 }
%struct.hfi1_vnic_vport_info = type { i32, i32, %struct.hfi1_vnic_rx_queue*, %struct.net_device*, i32, %struct.hfi1_devdata* }
%struct.hfi1_vnic_rx_queue = type { i32, i32, %struct.net_device*, %struct.hfi1_vnic_vport_info* }
%struct.rdma_netdev = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RDMA_NETDEV_OPA_VNIC = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@hfi1_vnic_free_rn = common dso_local global i32 0, align 4
@hfi1_vnic_set_vesw_id = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@HFI_TX_TIMEOUT_MS = common dso_local global i32 0, align 4
@hfi1_netdev_ops = common dso_local global i32 0, align 4
@hfi1_vnic_napi = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @hfi1_vnic_alloc_rn(%struct.ib_device* %0, i64 %1, i32 %2, i8* %3, i8 zeroext %4, void (%struct.net_device*)* %5) #0 {
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ib_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca void (%struct.net_device*)*, align 8
  %14 = alloca %struct.hfi1_devdata*, align 8
  %15 = alloca %struct.hfi1_vnic_vport_info*, align 8
  %16 = alloca %struct.net_device*, align 8
  %17 = alloca %struct.rdma_netdev*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.hfi1_vnic_rx_queue*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8 %4, i8* %12, align 1
  store void (%struct.net_device*)* %5, void (%struct.net_device*)** %13, align 8
  %22 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %23 = call %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device* %22)
  store %struct.hfi1_devdata* %23, %struct.hfi1_devdata** %14, align 8
  %24 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %14, align 8
  %25 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %6
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.net_device* @ERR_PTR(i32 %30)
  store %struct.net_device* %31, %struct.net_device** %7, align 8
  br label %168

32:                                               ; preds = %6
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %14, align 8
  %38 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35, %32
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.net_device* @ERR_PTR(i32 %43)
  store %struct.net_device* %44, %struct.net_device** %7, align 8
  br label %168

45:                                               ; preds = %35
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @RDMA_NETDEV_OPA_VNIC, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.net_device* @ERR_PTR(i32 %51)
  store %struct.net_device* %52, %struct.net_device** %7, align 8
  br label %168

53:                                               ; preds = %45
  store i32 44, i32* %19, align 4
  %54 = load i32, i32* %19, align 4
  %55 = load i8*, i8** %11, align 8
  %56 = load i8, i8* %12, align 1
  %57 = load void (%struct.net_device*)*, void (%struct.net_device*)** %13, align 8
  %58 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %14, align 8
  %59 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %14, align 8
  %62 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.net_device* @alloc_netdev_mqs(i32 %54, i8* %55, i8 zeroext %56, void (%struct.net_device*)* %57, i32 %60, i32 %63)
  store %struct.net_device* %64, %struct.net_device** %16, align 8
  %65 = load %struct.net_device*, %struct.net_device** %16, align 8
  %66 = icmp ne %struct.net_device* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %53
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  %70 = call %struct.net_device* @ERR_PTR(i32 %69)
  store %struct.net_device* %70, %struct.net_device** %7, align 8
  br label %168

71:                                               ; preds = %53
  %72 = load %struct.net_device*, %struct.net_device** %16, align 8
  %73 = call %struct.rdma_netdev* @netdev_priv(%struct.net_device* %72)
  store %struct.rdma_netdev* %73, %struct.rdma_netdev** %17, align 8
  %74 = load %struct.net_device*, %struct.net_device** %16, align 8
  %75 = call %struct.hfi1_vnic_vport_info* @opa_vnic_dev_priv(%struct.net_device* %74)
  store %struct.hfi1_vnic_vport_info* %75, %struct.hfi1_vnic_vport_info** %15, align 8
  %76 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %14, align 8
  %77 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %15, align 8
  %78 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %77, i32 0, i32 5
  store %struct.hfi1_devdata* %76, %struct.hfi1_devdata** %78, align 8
  %79 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %14, align 8
  %80 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %15, align 8
  %83 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %14, align 8
  %85 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %15, align 8
  %88 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.net_device*, %struct.net_device** %16, align 8
  %90 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %15, align 8
  %91 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %90, i32 0, i32 3
  store %struct.net_device* %89, %struct.net_device** %91, align 8
  %92 = load i32, i32* @hfi1_vnic_free_rn, align 4
  %93 = load %struct.rdma_netdev*, %struct.rdma_netdev** %17, align 8
  %94 = getelementptr inbounds %struct.rdma_netdev, %struct.rdma_netdev* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @hfi1_vnic_set_vesw_id, align 4
  %96 = load %struct.rdma_netdev*, %struct.rdma_netdev** %17, align 8
  %97 = getelementptr inbounds %struct.rdma_netdev, %struct.rdma_netdev* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %99 = load i32, i32* @NETIF_F_SG, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.net_device*, %struct.net_device** %16, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.net_device*, %struct.net_device** %16, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.net_device*, %struct.net_device** %16, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.net_device*, %struct.net_device** %16, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.net_device*, %struct.net_device** %16, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @HFI_TX_TIMEOUT_MS, align 4
  %114 = call i32 @msecs_to_jiffies(i32 %113)
  %115 = load %struct.net_device*, %struct.net_device** %16, align 8
  %116 = getelementptr inbounds %struct.net_device, %struct.net_device* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 8
  %117 = load %struct.net_device*, %struct.net_device** %16, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 3
  store i32* @hfi1_netdev_ops, i32** %118, align 8
  %119 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %15, align 8
  %120 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %119, i32 0, i32 1
  %121 = call i32 @mutex_init(i32* %120)
  store i32 0, i32* %18, align 4
  br label %122

122:                                              ; preds = %149, %71
  %123 = load i32, i32* %18, align 4
  %124 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %15, align 8
  %125 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %152

128:                                              ; preds = %122
  %129 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %15, align 8
  %130 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %129, i32 0, i32 2
  %131 = load %struct.hfi1_vnic_rx_queue*, %struct.hfi1_vnic_rx_queue** %130, align 8
  %132 = load i32, i32* %18, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.hfi1_vnic_rx_queue, %struct.hfi1_vnic_rx_queue* %131, i64 %133
  store %struct.hfi1_vnic_rx_queue* %134, %struct.hfi1_vnic_rx_queue** %21, align 8
  %135 = load i32, i32* %18, align 4
  %136 = load %struct.hfi1_vnic_rx_queue*, %struct.hfi1_vnic_rx_queue** %21, align 8
  %137 = getelementptr inbounds %struct.hfi1_vnic_rx_queue, %struct.hfi1_vnic_rx_queue* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %15, align 8
  %139 = load %struct.hfi1_vnic_rx_queue*, %struct.hfi1_vnic_rx_queue** %21, align 8
  %140 = getelementptr inbounds %struct.hfi1_vnic_rx_queue, %struct.hfi1_vnic_rx_queue* %139, i32 0, i32 3
  store %struct.hfi1_vnic_vport_info* %138, %struct.hfi1_vnic_vport_info** %140, align 8
  %141 = load %struct.net_device*, %struct.net_device** %16, align 8
  %142 = load %struct.hfi1_vnic_rx_queue*, %struct.hfi1_vnic_rx_queue** %21, align 8
  %143 = getelementptr inbounds %struct.hfi1_vnic_rx_queue, %struct.hfi1_vnic_rx_queue* %142, i32 0, i32 2
  store %struct.net_device* %141, %struct.net_device** %143, align 8
  %144 = load %struct.net_device*, %struct.net_device** %16, align 8
  %145 = load %struct.hfi1_vnic_rx_queue*, %struct.hfi1_vnic_rx_queue** %21, align 8
  %146 = getelementptr inbounds %struct.hfi1_vnic_rx_queue, %struct.hfi1_vnic_rx_queue* %145, i32 0, i32 1
  %147 = load i32, i32* @hfi1_vnic_napi, align 4
  %148 = call i32 @netif_napi_add(%struct.net_device* %144, i32* %146, i32 %147, i32 64)
  br label %149

149:                                              ; preds = %128
  %150 = load i32, i32* %18, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %18, align 4
  br label %122

152:                                              ; preds = %122
  %153 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %15, align 8
  %154 = call i32 @hfi1_vnic_init(%struct.hfi1_vnic_vport_info* %153)
  store i32 %154, i32* %20, align 4
  %155 = load i32, i32* %20, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %160

158:                                              ; preds = %152
  %159 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %159, %struct.net_device** %7, align 8
  br label %168

160:                                              ; preds = %157
  %161 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %15, align 8
  %162 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %161, i32 0, i32 1
  %163 = call i32 @mutex_destroy(i32* %162)
  %164 = load %struct.net_device*, %struct.net_device** %16, align 8
  %165 = call i32 @free_netdev(%struct.net_device* %164)
  %166 = load i32, i32* %20, align 4
  %167 = call %struct.net_device* @ERR_PTR(i32 %166)
  store %struct.net_device* %167, %struct.net_device** %7, align 8
  br label %168

168:                                              ; preds = %160, %158, %67, %49, %41, %28
  %169 = load %struct.net_device*, %struct.net_device** %7, align 8
  ret %struct.net_device* %169
}

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local %struct.net_device* @ERR_PTR(i32) #1

declare dso_local %struct.net_device* @alloc_netdev_mqs(i32, i8*, i8 zeroext, void (%struct.net_device*)*, i32, i32) #1

declare dso_local %struct.rdma_netdev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.hfi1_vnic_vport_info* @opa_vnic_dev_priv(%struct.net_device*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @hfi1_vnic_init(%struct.hfi1_vnic_vport_info*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
