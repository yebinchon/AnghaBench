; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema.c_vema_get_vport_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema.c_vema_get_vport_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_vnic_adapter = type { i32 }
%struct.opa_vnic_vema_mad = type { i32 }
%struct.opa_vnic_vema_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.opa_vnic_adapter* (%struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_port*)* @vema_get_vport_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.opa_vnic_adapter* @vema_get_vport_adapter(%struct.opa_vnic_vema_mad* %0, %struct.opa_vnic_vema_port* %1) #0 {
  %3 = alloca %struct.opa_vnic_vema_mad*, align 8
  %4 = alloca %struct.opa_vnic_vema_port*, align 8
  %5 = alloca i32, align 4
  store %struct.opa_vnic_vema_mad* %0, %struct.opa_vnic_vema_mad** %3, align 8
  store %struct.opa_vnic_vema_port* %1, %struct.opa_vnic_vema_port** %4, align 8
  %6 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %3, align 8
  %7 = call i32 @vema_get_vport_num(%struct.opa_vnic_vema_mad* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_port** %4, align 8
  %9 = getelementptr inbounds %struct.opa_vnic_vema_port, %struct.opa_vnic_vema_port* %8, i32 0, i32 0
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.opa_vnic_adapter* @xa_load(i32* %9, i32 %10)
  ret %struct.opa_vnic_adapter* %11
}

declare dso_local i32 @vema_get_vport_num(%struct.opa_vnic_vema_mad*) #1

declare dso_local %struct.opa_vnic_adapter* @xa_load(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
