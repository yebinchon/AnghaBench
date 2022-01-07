; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema.c_vema_set_veswport_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema.c_vema_set_veswport_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_vnic_vema_port = type { %struct.opa_vnic_ctrl_port* }
%struct.opa_vnic_ctrl_port = type { i32 }
%struct.opa_vnic_vema_mad = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.opa_veswport_info = type { i32, i32 }
%struct.opa_vnic_adapter = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to add vport %d: %ld\0A\00", align 1
@OPA_VNIC_INVAL_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad*)* @vema_set_veswport_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vema_set_veswport_info(%struct.opa_vnic_vema_port* %0, %struct.opa_vnic_vema_mad* %1, %struct.opa_vnic_vema_mad* %2) #0 {
  %4 = alloca %struct.opa_vnic_vema_port*, align 8
  %5 = alloca %struct.opa_vnic_vema_mad*, align 8
  %6 = alloca %struct.opa_vnic_vema_mad*, align 8
  %7 = alloca %struct.opa_vnic_ctrl_port*, align 8
  %8 = alloca %struct.opa_veswport_info*, align 8
  %9 = alloca %struct.opa_vnic_adapter*, align 8
  %10 = alloca i32, align 4
  store %struct.opa_vnic_vema_port* %0, %struct.opa_vnic_vema_port** %4, align 8
  store %struct.opa_vnic_vema_mad* %1, %struct.opa_vnic_vema_mad** %5, align 8
  store %struct.opa_vnic_vema_mad* %2, %struct.opa_vnic_vema_mad** %6, align 8
  %11 = load %struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_port** %4, align 8
  %12 = getelementptr inbounds %struct.opa_vnic_vema_port, %struct.opa_vnic_vema_port* %11, i32 0, i32 0
  %13 = load %struct.opa_vnic_ctrl_port*, %struct.opa_vnic_ctrl_port** %12, align 8
  store %struct.opa_vnic_ctrl_port* %13, %struct.opa_vnic_ctrl_port** %7, align 8
  %14 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %5, align 8
  %15 = call i32 @vema_get_vport_num(%struct.opa_vnic_vema_mad* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %5, align 8
  %17 = load %struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_port** %4, align 8
  %18 = call %struct.opa_vnic_adapter* @vema_get_vport_adapter(%struct.opa_vnic_vema_mad* %16, %struct.opa_vnic_vema_port* %17)
  store %struct.opa_vnic_adapter* %18, %struct.opa_vnic_adapter** %9, align 8
  %19 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %9, align 8
  %20 = icmp ne %struct.opa_vnic_adapter* %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %3
  %22 = load %struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_port** %4, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.opa_vnic_adapter* @vema_add_vport(%struct.opa_vnic_vema_port* %22, i32 %23)
  store %struct.opa_vnic_adapter* %24, %struct.opa_vnic_adapter** %9, align 8
  %25 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %9, align 8
  %26 = call i64 @IS_ERR(%struct.opa_vnic_adapter* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %9, align 8
  %31 = call i32 @PTR_ERR(%struct.opa_vnic_adapter* %30)
  %32 = call i32 @c_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31)
  br label %53

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %5, align 8
  %36 = getelementptr inbounds %struct.opa_vnic_vema_mad, %struct.opa_vnic_vema_mad* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.opa_veswport_info*
  store %struct.opa_veswport_info* %38, %struct.opa_veswport_info** %8, align 8
  %39 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %9, align 8
  %40 = load %struct.opa_veswport_info*, %struct.opa_veswport_info** %8, align 8
  %41 = getelementptr inbounds %struct.opa_veswport_info, %struct.opa_veswport_info* %40, i32 0, i32 1
  %42 = call i32 @opa_vnic_set_vesw_info(%struct.opa_vnic_adapter* %39, i32* %41)
  %43 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %9, align 8
  %44 = load %struct.opa_veswport_info*, %struct.opa_veswport_info** %8, align 8
  %45 = getelementptr inbounds %struct.opa_veswport_info, %struct.opa_veswport_info* %44, i32 0, i32 0
  %46 = call i32 @opa_vnic_set_per_veswport_info(%struct.opa_vnic_adapter* %43, i32* %45)
  %47 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %9, align 8
  %48 = call i32 @opa_vnic_process_vema_config(%struct.opa_vnic_adapter* %47)
  %49 = load %struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_port** %4, align 8
  %50 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %5, align 8
  %51 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %6, align 8
  %52 = call i32 @vema_get_veswport_info(%struct.opa_vnic_vema_port* %49, %struct.opa_vnic_vema_mad* %50, %struct.opa_vnic_vema_mad* %51)
  br label %58

53:                                               ; preds = %28
  %54 = load i32, i32* @OPA_VNIC_INVAL_ATTR, align 4
  %55 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %6, align 8
  %56 = getelementptr inbounds %struct.opa_vnic_vema_mad, %struct.opa_vnic_vema_mad* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  br label %58

58:                                               ; preds = %53, %34
  ret void
}

declare dso_local i32 @vema_get_vport_num(%struct.opa_vnic_vema_mad*) #1

declare dso_local %struct.opa_vnic_adapter* @vema_get_vport_adapter(%struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_port*) #1

declare dso_local %struct.opa_vnic_adapter* @vema_add_vport(%struct.opa_vnic_vema_port*, i32) #1

declare dso_local i64 @IS_ERR(%struct.opa_vnic_adapter*) #1

declare dso_local i32 @c_err(i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.opa_vnic_adapter*) #1

declare dso_local i32 @opa_vnic_set_vesw_info(%struct.opa_vnic_adapter*, i32*) #1

declare dso_local i32 @opa_vnic_set_per_veswport_info(%struct.opa_vnic_adapter*, i32*) #1

declare dso_local i32 @opa_vnic_process_vema_config(%struct.opa_vnic_adapter*) #1

declare dso_local i32 @vema_get_veswport_info(%struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
