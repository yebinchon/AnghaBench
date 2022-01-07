; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema.c_vema_get_mac_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema.c_vema_get_mac_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_vnic_vema_port = type { i32 }
%struct.opa_vnic_vema_mad = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.opa_veswport_iface_macs = type { i64, i32 }
%struct.opa_vnic_adapter = type { i32 }

@OPA_VNIC_EMA_DATA = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@OPA_VNIC_INVAL_ATTR = common dso_local global i32 0, align 4
@OPA_EM_ATTR_IFACE_MCAST_MACS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad*, i64)* @vema_get_mac_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vema_get_mac_list(%struct.opa_vnic_vema_port* %0, %struct.opa_vnic_vema_mad* %1, %struct.opa_vnic_vema_mad* %2, i64 %3) #0 {
  %5 = alloca %struct.opa_vnic_vema_port*, align 8
  %6 = alloca %struct.opa_vnic_vema_mad*, align 8
  %7 = alloca %struct.opa_vnic_vema_mad*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.opa_veswport_iface_macs*, align 8
  %10 = alloca %struct.opa_veswport_iface_macs*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.opa_vnic_adapter*, align 8
  store %struct.opa_vnic_vema_port* %0, %struct.opa_vnic_vema_port** %5, align 8
  store %struct.opa_vnic_vema_mad* %1, %struct.opa_vnic_vema_mad** %6, align 8
  store %struct.opa_vnic_vema_mad* %2, %struct.opa_vnic_vema_mad** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* @OPA_VNIC_EMA_DATA, align 4
  %14 = sext i32 %13 to i64
  %15 = sub i64 %14, 16
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = sext i32 %16 to i64
  %18 = udiv i64 %15, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %11, align 4
  %20 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %6, align 8
  %21 = load %struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_port** %5, align 8
  %22 = call %struct.opa_vnic_adapter* @vema_get_vport_adapter(%struct.opa_vnic_vema_mad* %20, %struct.opa_vnic_vema_port* %21)
  store %struct.opa_vnic_adapter* %22, %struct.opa_vnic_adapter** %12, align 8
  %23 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %12, align 8
  %24 = icmp ne %struct.opa_vnic_adapter* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @OPA_VNIC_INVAL_ATTR, align 4
  %27 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %7, align 8
  %28 = getelementptr inbounds %struct.opa_vnic_vema_mad, %struct.opa_vnic_vema_mad* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  br label %71

30:                                               ; preds = %4
  %31 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %6, align 8
  %32 = getelementptr inbounds %struct.opa_vnic_vema_mad, %struct.opa_vnic_vema_mad* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.opa_veswport_iface_macs*
  store %struct.opa_veswport_iface_macs* %34, %struct.opa_veswport_iface_macs** %9, align 8
  %35 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %7, align 8
  %36 = getelementptr inbounds %struct.opa_vnic_vema_mad, %struct.opa_vnic_vema_mad* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.opa_veswport_iface_macs*
  store %struct.opa_veswport_iface_macs* %38, %struct.opa_veswport_iface_macs** %10, align 8
  %39 = load %struct.opa_veswport_iface_macs*, %struct.opa_veswport_iface_macs** %9, align 8
  %40 = getelementptr inbounds %struct.opa_veswport_iface_macs, %struct.opa_veswport_iface_macs* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.opa_veswport_iface_macs*, %struct.opa_veswport_iface_macs** %10, align 8
  %43 = getelementptr inbounds %struct.opa_veswport_iface_macs, %struct.opa_veswport_iface_macs* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.opa_veswport_iface_macs*, %struct.opa_veswport_iface_macs** %9, align 8
  %45 = getelementptr inbounds %struct.opa_veswport_iface_macs, %struct.opa_veswport_iface_macs* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %30
  %49 = load %struct.opa_veswport_iface_macs*, %struct.opa_veswport_iface_macs** %9, align 8
  %50 = getelementptr inbounds %struct.opa_veswport_iface_macs, %struct.opa_veswport_iface_macs* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.opa_veswport_iface_macs*, %struct.opa_veswport_iface_macs** %10, align 8
  %53 = getelementptr inbounds %struct.opa_veswport_iface_macs, %struct.opa_veswport_iface_macs* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %59

54:                                               ; preds = %30
  %55 = load i32, i32* %11, align 4
  %56 = call i64 @cpu_to_be16(i32 %55)
  %57 = load %struct.opa_veswport_iface_macs*, %struct.opa_veswport_iface_macs** %10, align 8
  %58 = getelementptr inbounds %struct.opa_veswport_iface_macs, %struct.opa_veswport_iface_macs* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %54, %48
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @OPA_EM_ATTR_IFACE_MCAST_MACS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %12, align 8
  %65 = load %struct.opa_veswport_iface_macs*, %struct.opa_veswport_iface_macs** %10, align 8
  %66 = call i32 @opa_vnic_query_mcast_macs(%struct.opa_vnic_adapter* %64, %struct.opa_veswport_iface_macs* %65)
  br label %71

67:                                               ; preds = %59
  %68 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %12, align 8
  %69 = load %struct.opa_veswport_iface_macs*, %struct.opa_veswport_iface_macs** %10, align 8
  %70 = call i32 @opa_vnic_query_ucast_macs(%struct.opa_vnic_adapter* %68, %struct.opa_veswport_iface_macs* %69)
  br label %71

71:                                               ; preds = %25, %67, %63
  ret void
}

declare dso_local %struct.opa_vnic_adapter* @vema_get_vport_adapter(%struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_port*) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @opa_vnic_query_mcast_macs(%struct.opa_vnic_adapter*, %struct.opa_veswport_iface_macs*) #1

declare dso_local i32 @opa_vnic_query_ucast_macs(%struct.opa_vnic_adapter*, %struct.opa_veswport_iface_macs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
