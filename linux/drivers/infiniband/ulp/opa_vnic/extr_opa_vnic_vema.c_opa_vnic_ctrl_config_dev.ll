; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema.c_opa_vnic_ctrl_config_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema.c_opa_vnic_ctrl_config_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_vnic_ctrl_port = type { i32, i32 }
%struct.ib_port_modify = type { i8*, i8*, i32 }

@OPA_CAP_MASK3_IsEthOnFabricSupported = common dso_local global i8* null, align 8
@IB_PORT_OPA_MASK_CHG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opa_vnic_ctrl_port*, i32)* @opa_vnic_ctrl_config_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opa_vnic_ctrl_config_dev(%struct.opa_vnic_ctrl_port* %0, i32 %1) #0 {
  %3 = alloca %struct.opa_vnic_ctrl_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_port_modify, align 8
  %6 = alloca i32, align 4
  store %struct.opa_vnic_ctrl_port* %0, %struct.opa_vnic_ctrl_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast %struct.ib_port_modify* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 24, i1 false)
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8*, i8** @OPA_CAP_MASK3_IsEthOnFabricSupported, align 8
  %12 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %5, i32 0, i32 1
  store i8* %11, i8** %12, align 8
  br label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** @OPA_CAP_MASK3_IsEthOnFabricSupported, align 8
  %15 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %5, i32 0, i32 0
  store i8* %14, i8** %15, align 8
  br label %16

16:                                               ; preds = %13, %10
  store i32 1, i32* %6, align 4
  br label %17

17:                                               ; preds = %30, %16
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.opa_vnic_ctrl_port*, %struct.opa_vnic_ctrl_port** %3, align 8
  %20 = getelementptr inbounds %struct.opa_vnic_ctrl_port, %struct.opa_vnic_ctrl_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %18, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load %struct.opa_vnic_ctrl_port*, %struct.opa_vnic_ctrl_port** %3, align 8
  %25 = getelementptr inbounds %struct.opa_vnic_ctrl_port, %struct.opa_vnic_ctrl_port* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @IB_PORT_OPA_MASK_CHG, align 4
  %29 = call i32 @ib_modify_port(i32 %26, i32 %27, i32 %28, %struct.ib_port_modify* %5)
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %17

33:                                               ; preds = %17
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ib_modify_port(i32, i32, i32, %struct.ib_port_modify*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
