; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema_iface.c_opa_vnic_vema_report_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema_iface.c_opa_vnic_vema_report_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_vnic_adapter = type { i32, i32, %struct.__opa_veswport_info }
%struct.__opa_veswport_info = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.__opa_veswport_trap = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opa_vnic_vema_report_event(%struct.opa_vnic_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.opa_vnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.__opa_veswport_info*, align 8
  %6 = alloca %struct.__opa_veswport_trap, align 4
  store %struct.opa_vnic_adapter* %0, %struct.opa_vnic_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %7, i32 0, i32 2
  store %struct.__opa_veswport_info* %8, %struct.__opa_veswport_info** %5, align 8
  %9 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %5, align 8
  %10 = getelementptr inbounds %struct.__opa_veswport_info, %struct.__opa_veswport_info* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.__opa_veswport_trap, %struct.__opa_veswport_trap* %6, i32 0, i32 5
  store i32 %12, i32* %13, align 4
  %14 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %5, align 8
  %15 = getelementptr inbounds %struct.__opa_veswport_info, %struct.__opa_veswport_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.__opa_veswport_trap, %struct.__opa_veswport_trap* %6, i32 0, i32 4
  store i32 %17, i32* %18, align 4
  %19 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %5, align 8
  %20 = getelementptr inbounds %struct.__opa_veswport_info, %struct.__opa_veswport_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.__opa_veswport_trap, %struct.__opa_veswport_trap* %6, i32 0, i32 3
  store i32 %22, i32* %23, align 4
  %24 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.__opa_veswport_trap, %struct.__opa_veswport_trap* %6, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.__opa_veswport_trap, %struct.__opa_veswport_trap* %6, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = getelementptr inbounds %struct.__opa_veswport_trap, %struct.__opa_veswport_trap* %6, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %35 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %5, align 8
  %36 = getelementptr inbounds %struct.__opa_veswport_info, %struct.__opa_veswport_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @opa_vnic_vema_send_trap(%struct.opa_vnic_adapter* %34, %struct.__opa_veswport_trap* %6, i32 %38)
  ret void
}

declare dso_local i32 @opa_vnic_vema_send_trap(%struct.opa_vnic_adapter*, %struct.__opa_veswport_trap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
