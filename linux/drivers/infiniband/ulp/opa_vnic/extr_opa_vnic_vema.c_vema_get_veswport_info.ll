; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema.c_vema_get_veswport_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema.c_vema_get_veswport_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_vnic_vema_port = type { i32 }
%struct.opa_vnic_vema_mad = type { i64 }
%struct.opa_veswport_info = type { i32, i32 }
%struct.opa_vnic_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad*)* @vema_get_veswport_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vema_get_veswport_info(%struct.opa_vnic_vema_port* %0, %struct.opa_vnic_vema_mad* %1, %struct.opa_vnic_vema_mad* %2) #0 {
  %4 = alloca %struct.opa_vnic_vema_port*, align 8
  %5 = alloca %struct.opa_vnic_vema_mad*, align 8
  %6 = alloca %struct.opa_vnic_vema_mad*, align 8
  %7 = alloca %struct.opa_veswport_info*, align 8
  %8 = alloca %struct.opa_vnic_adapter*, align 8
  store %struct.opa_vnic_vema_port* %0, %struct.opa_vnic_vema_port** %4, align 8
  store %struct.opa_vnic_vema_mad* %1, %struct.opa_vnic_vema_mad** %5, align 8
  store %struct.opa_vnic_vema_mad* %2, %struct.opa_vnic_vema_mad** %6, align 8
  %9 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %6, align 8
  %10 = getelementptr inbounds %struct.opa_vnic_vema_mad, %struct.opa_vnic_vema_mad* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.opa_veswport_info*
  store %struct.opa_veswport_info* %12, %struct.opa_veswport_info** %7, align 8
  %13 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %5, align 8
  %14 = load %struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_port** %4, align 8
  %15 = call %struct.opa_vnic_adapter* @vema_get_vport_adapter(%struct.opa_vnic_vema_mad* %13, %struct.opa_vnic_vema_port* %14)
  store %struct.opa_vnic_adapter* %15, %struct.opa_vnic_adapter** %8, align 8
  %16 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %8, align 8
  %17 = icmp ne %struct.opa_vnic_adapter* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load %struct.opa_veswport_info*, %struct.opa_veswport_info** %7, align 8
  %20 = call i32 @memset(%struct.opa_veswport_info* %19, i32 0, i32 8)
  %21 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %8, align 8
  %22 = load %struct.opa_veswport_info*, %struct.opa_veswport_info** %7, align 8
  %23 = getelementptr inbounds %struct.opa_veswport_info, %struct.opa_veswport_info* %22, i32 0, i32 1
  %24 = call i32 @opa_vnic_get_vesw_info(%struct.opa_vnic_adapter* %21, i32* %23)
  %25 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %8, align 8
  %26 = load %struct.opa_veswport_info*, %struct.opa_veswport_info** %7, align 8
  %27 = getelementptr inbounds %struct.opa_veswport_info, %struct.opa_veswport_info* %26, i32 0, i32 0
  %28 = call i32 @opa_vnic_get_per_veswport_info(%struct.opa_vnic_adapter* %25, i32* %27)
  br label %32

29:                                               ; preds = %3
  %30 = load %struct.opa_veswport_info*, %struct.opa_veswport_info** %7, align 8
  %31 = call i32 @vema_get_pod_values(%struct.opa_veswport_info* %30)
  br label %32

32:                                               ; preds = %29, %18
  ret void
}

declare dso_local %struct.opa_vnic_adapter* @vema_get_vport_adapter(%struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_port*) #1

declare dso_local i32 @memset(%struct.opa_veswport_info*, i32, i32) #1

declare dso_local i32 @opa_vnic_get_vesw_info(%struct.opa_vnic_adapter*, i32*) #1

declare dso_local i32 @opa_vnic_get_per_veswport_info(%struct.opa_vnic_adapter*, i32*) #1

declare dso_local i32 @vema_get_pod_values(%struct.opa_veswport_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
