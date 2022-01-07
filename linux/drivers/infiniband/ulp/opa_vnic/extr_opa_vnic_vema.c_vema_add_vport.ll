; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema.c_vema_add_vport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema.c_vema_add_vport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_vnic_adapter = type { %struct.opa_vnic_ctrl_port* }
%struct.opa_vnic_ctrl_port = type { i32 }
%struct.opa_vnic_vema_port = type { i32, i32, %struct.opa_vnic_ctrl_port* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.opa_vnic_adapter* (%struct.opa_vnic_vema_port*, i32)* @vema_add_vport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.opa_vnic_adapter* @vema_add_vport(%struct.opa_vnic_vema_port* %0, i32 %1) #0 {
  %3 = alloca %struct.opa_vnic_vema_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.opa_vnic_ctrl_port*, align 8
  %6 = alloca %struct.opa_vnic_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.opa_vnic_vema_port* %0, %struct.opa_vnic_vema_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_port** %3, align 8
  %9 = getelementptr inbounds %struct.opa_vnic_vema_port, %struct.opa_vnic_vema_port* %8, i32 0, i32 2
  %10 = load %struct.opa_vnic_ctrl_port*, %struct.opa_vnic_ctrl_port** %9, align 8
  store %struct.opa_vnic_ctrl_port* %10, %struct.opa_vnic_ctrl_port** %5, align 8
  %11 = load %struct.opa_vnic_ctrl_port*, %struct.opa_vnic_ctrl_port** %5, align 8
  %12 = getelementptr inbounds %struct.opa_vnic_ctrl_port, %struct.opa_vnic_ctrl_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_port** %3, align 8
  %15 = getelementptr inbounds %struct.opa_vnic_vema_port, %struct.opa_vnic_vema_port* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.opa_vnic_adapter* @opa_vnic_add_netdev(i32 %13, i32 %16, i32 %17)
  store %struct.opa_vnic_adapter* %18, %struct.opa_vnic_adapter** %6, align 8
  %19 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %6, align 8
  %20 = call i32 @IS_ERR(%struct.opa_vnic_adapter* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %2
  %23 = load %struct.opa_vnic_ctrl_port*, %struct.opa_vnic_ctrl_port** %5, align 8
  %24 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %24, i32 0, i32 0
  store %struct.opa_vnic_ctrl_port* %23, %struct.opa_vnic_ctrl_port** %25, align 8
  %26 = load %struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_port** %3, align 8
  %27 = getelementptr inbounds %struct.opa_vnic_vema_port, %struct.opa_vnic_vema_port* %26, i32 0, i32 0
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %6, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @xa_insert(i32* %27, i32 %28, %struct.opa_vnic_adapter* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %22
  %35 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %6, align 8
  %36 = call i32 @opa_vnic_rem_netdev(%struct.opa_vnic_adapter* %35)
  %37 = load i32, i32* %7, align 4
  %38 = call %struct.opa_vnic_adapter* @ERR_PTR(i32 %37)
  store %struct.opa_vnic_adapter* %38, %struct.opa_vnic_adapter** %6, align 8
  br label %39

39:                                               ; preds = %34, %22
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %6, align 8
  ret %struct.opa_vnic_adapter* %41
}

declare dso_local %struct.opa_vnic_adapter* @opa_vnic_add_netdev(i32, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.opa_vnic_adapter*) #1

declare dso_local i32 @xa_insert(i32*, i32, %struct.opa_vnic_adapter*, i32) #1

declare dso_local i32 @opa_vnic_rem_netdev(%struct.opa_vnic_adapter*) #1

declare dso_local %struct.opa_vnic_adapter* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
