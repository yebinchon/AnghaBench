; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema.c_vema_get_pod_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema.c_vema_get_pod_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_veswport_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8* }

@OPA_VNIC_MAC_TBL_MAX_ENTRIES = common dso_local global i32 0, align 4
@OPA_VNIC_MAX_SMAC_LIMIT = common dso_local global i32 0, align 4
@OPA_VNIC_STATE_DROP_ALL = common dso_local global i8* null, align 8
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opa_veswport_info*)* @vema_get_pod_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vema_get_pod_values(%struct.opa_veswport_info* %0) #0 {
  %2 = alloca %struct.opa_veswport_info*, align 8
  store %struct.opa_veswport_info* %0, %struct.opa_veswport_info** %2, align 8
  %3 = load %struct.opa_veswport_info*, %struct.opa_veswport_info** %2, align 8
  %4 = call i32 @memset(%struct.opa_veswport_info* %3, i32 0, i32 40)
  %5 = load i32, i32* @OPA_VNIC_MAC_TBL_MAX_ENTRIES, align 4
  %6 = call i8* @cpu_to_be16(i32 %5)
  %7 = load %struct.opa_veswport_info*, %struct.opa_veswport_info** %2, align 8
  %8 = getelementptr inbounds %struct.opa_veswport_info, %struct.opa_veswport_info* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i8* %6, i8** %9, align 8
  %10 = load i32, i32* @OPA_VNIC_MAX_SMAC_LIMIT, align 4
  %11 = call i8* @cpu_to_be16(i32 %10)
  %12 = load %struct.opa_veswport_info*, %struct.opa_veswport_info** %2, align 8
  %13 = getelementptr inbounds %struct.opa_veswport_info, %struct.opa_veswport_info* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  store i8* %11, i8** %14, align 8
  %15 = load i8*, i8** @OPA_VNIC_STATE_DROP_ALL, align 8
  %16 = load %struct.opa_veswport_info*, %struct.opa_veswport_info** %2, align 8
  %17 = getelementptr inbounds %struct.opa_veswport_info, %struct.opa_veswport_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i8* %15, i8** %18, align 8
  %19 = load i8*, i8** @OPA_VNIC_STATE_DROP_ALL, align 8
  %20 = load %struct.opa_veswport_info*, %struct.opa_veswport_info** %2, align 8
  %21 = getelementptr inbounds %struct.opa_veswport_info, %struct.opa_veswport_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i8* %19, i8** %22, align 8
  %23 = load i32, i32* @ETH_DATA_LEN, align 4
  %24 = call i8* @cpu_to_be16(i32 %23)
  %25 = load %struct.opa_veswport_info*, %struct.opa_veswport_info** %2, align 8
  %26 = getelementptr inbounds %struct.opa_veswport_info, %struct.opa_veswport_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  ret void
}

declare dso_local i32 @memset(%struct.opa_veswport_info*, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
