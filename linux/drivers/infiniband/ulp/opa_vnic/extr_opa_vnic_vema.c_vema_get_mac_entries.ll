; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema.c_vema_get_mac_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema.c_vema_get_mac_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_vnic_vema_port = type { i32 }
%struct.opa_vnic_vema_mad = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i8* }
%struct.opa_veswport_mactable = type { i32, i32 }
%struct.opa_vnic_adapter = type { i32 }

@OPA_VNIC_INVAL_ATTR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad*)* @vema_get_mac_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vema_get_mac_entries(%struct.opa_vnic_vema_port* %0, %struct.opa_vnic_vema_mad* %1, %struct.opa_vnic_vema_mad* %2) #0 {
  %4 = alloca %struct.opa_vnic_vema_port*, align 8
  %5 = alloca %struct.opa_vnic_vema_mad*, align 8
  %6 = alloca %struct.opa_vnic_vema_mad*, align 8
  %7 = alloca %struct.opa_veswport_mactable*, align 8
  %8 = alloca %struct.opa_veswport_mactable*, align 8
  %9 = alloca %struct.opa_vnic_adapter*, align 8
  store %struct.opa_vnic_vema_port* %0, %struct.opa_vnic_vema_port** %4, align 8
  store %struct.opa_vnic_vema_mad* %1, %struct.opa_vnic_vema_mad** %5, align 8
  store %struct.opa_vnic_vema_mad* %2, %struct.opa_vnic_vema_mad** %6, align 8
  %10 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %5, align 8
  %11 = load %struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_port** %4, align 8
  %12 = call %struct.opa_vnic_adapter* @vema_get_vport_adapter(%struct.opa_vnic_vema_mad* %10, %struct.opa_vnic_vema_port* %11)
  store %struct.opa_vnic_adapter* %12, %struct.opa_vnic_adapter** %9, align 8
  %13 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %9, align 8
  %14 = icmp ne %struct.opa_vnic_adapter* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** @OPA_VNIC_INVAL_ATTR, align 8
  %17 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %6, align 8
  %18 = getelementptr inbounds %struct.opa_vnic_vema_mad, %struct.opa_vnic_vema_mad* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i8* %16, i8** %19, align 8
  br label %51

20:                                               ; preds = %3
  %21 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %5, align 8
  %22 = getelementptr inbounds %struct.opa_vnic_vema_mad, %struct.opa_vnic_vema_mad* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.opa_veswport_mactable*
  store %struct.opa_veswport_mactable* %24, %struct.opa_veswport_mactable** %7, align 8
  %25 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %6, align 8
  %26 = getelementptr inbounds %struct.opa_vnic_vema_mad, %struct.opa_vnic_vema_mad* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.opa_veswport_mactable*
  store %struct.opa_veswport_mactable* %28, %struct.opa_veswport_mactable** %8, align 8
  %29 = load %struct.opa_veswport_mactable*, %struct.opa_veswport_mactable** %7, align 8
  %30 = call i64 @vema_mac_tbl_req_ok(%struct.opa_veswport_mactable* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %20
  %33 = load %struct.opa_veswport_mactable*, %struct.opa_veswport_mactable** %7, align 8
  %34 = getelementptr inbounds %struct.opa_veswport_mactable, %struct.opa_veswport_mactable* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.opa_veswport_mactable*, %struct.opa_veswport_mactable** %8, align 8
  %37 = getelementptr inbounds %struct.opa_veswport_mactable, %struct.opa_veswport_mactable* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.opa_veswport_mactable*, %struct.opa_veswport_mactable** %7, align 8
  %39 = getelementptr inbounds %struct.opa_veswport_mactable, %struct.opa_veswport_mactable* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.opa_veswport_mactable*, %struct.opa_veswport_mactable** %8, align 8
  %42 = getelementptr inbounds %struct.opa_veswport_mactable, %struct.opa_veswport_mactable* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %9, align 8
  %44 = load %struct.opa_veswport_mactable*, %struct.opa_veswport_mactable** %8, align 8
  %45 = call i32 @opa_vnic_query_mac_tbl(%struct.opa_vnic_adapter* %43, %struct.opa_veswport_mactable* %44)
  br label %51

46:                                               ; preds = %20
  %47 = load i8*, i8** @OPA_VNIC_INVAL_ATTR, align 8
  %48 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %6, align 8
  %49 = getelementptr inbounds %struct.opa_vnic_vema_mad, %struct.opa_vnic_vema_mad* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  br label %51

51:                                               ; preds = %15, %46, %32
  ret void
}

declare dso_local %struct.opa_vnic_adapter* @vema_get_vport_adapter(%struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_port*) #1

declare dso_local i64 @vema_mac_tbl_req_ok(%struct.opa_veswport_mactable*) #1

declare dso_local i32 @opa_vnic_query_mac_tbl(%struct.opa_vnic_adapter*, %struct.opa_veswport_mactable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
