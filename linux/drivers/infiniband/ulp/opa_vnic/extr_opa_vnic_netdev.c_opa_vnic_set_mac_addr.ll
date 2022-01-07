; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_netdev.c_opa_vnic_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_netdev.c_opa_vnic_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.opa_vnic_adapter = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@OPA_VESWPORT_TRAP_IFACE_UCAST_MAC_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @opa_vnic_set_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opa_vnic_set_mac_addr(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.opa_vnic_adapter*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.opa_vnic_adapter* @opa_vnic_priv(%struct.net_device* %9)
  store %struct.opa_vnic_adapter* %10, %struct.opa_vnic_adapter** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.sockaddr*
  store %struct.sockaddr* %12, %struct.sockaddr** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %17 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = call i32 @memcmp(i32 %15, i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

23:                                               ; preds = %2
  %24 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @eth_mac_addr(%struct.net_device* %27, i8* %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %6, align 8
  %31 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %30, i32 0, i32 1
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %47

37:                                               ; preds = %23
  %38 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %6, align 8
  %39 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %6, align 8
  %45 = load i32, i32* @OPA_VESWPORT_TRAP_IFACE_UCAST_MAC_CHANGE, align 4
  %46 = call i32 @opa_vnic_vema_report_event(%struct.opa_vnic_adapter* %44, i32 %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %37, %35, %22
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.opa_vnic_adapter* @opa_vnic_priv(%struct.net_device*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @eth_mac_addr(%struct.net_device*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @opa_vnic_vema_report_event(%struct.opa_vnic_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
