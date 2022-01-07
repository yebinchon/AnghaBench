; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema.c_opa_vnic_vema_add_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema.c_opa_vnic_vema_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.opa_vnic_ctrl_port = type { i32, %struct.ib_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"VNIC client initialized\0A\00", align 1
@opa_vnic_client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @opa_vnic_vema_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opa_vnic_vema_add_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.opa_vnic_ctrl_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  store i32 16, i32* %5, align 4
  %6 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %7 = call i32 @rdma_cap_opa_vnic(%struct.ib_device* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %47

10:                                               ; preds = %1
  %11 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %12 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.opa_vnic_ctrl_port* @kzalloc(i32 %20, i32 %21)
  store %struct.opa_vnic_ctrl_port* %22, %struct.opa_vnic_ctrl_port** %3, align 8
  %23 = load %struct.opa_vnic_ctrl_port*, %struct.opa_vnic_ctrl_port** %3, align 8
  %24 = icmp ne %struct.opa_vnic_ctrl_port* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %10
  br label %47

26:                                               ; preds = %10
  %27 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %28 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.opa_vnic_ctrl_port*, %struct.opa_vnic_ctrl_port** %3, align 8
  %31 = getelementptr inbounds %struct.opa_vnic_ctrl_port, %struct.opa_vnic_ctrl_port* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %33 = load %struct.opa_vnic_ctrl_port*, %struct.opa_vnic_ctrl_port** %3, align 8
  %34 = getelementptr inbounds %struct.opa_vnic_ctrl_port, %struct.opa_vnic_ctrl_port* %33, i32 0, i32 1
  store %struct.ib_device* %32, %struct.ib_device** %34, align 8
  %35 = load %struct.opa_vnic_ctrl_port*, %struct.opa_vnic_ctrl_port** %3, align 8
  %36 = call i32 @vema_register(%struct.opa_vnic_ctrl_port* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %26
  %40 = call i32 @c_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %26
  %42 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %43 = load %struct.opa_vnic_ctrl_port*, %struct.opa_vnic_ctrl_port** %3, align 8
  %44 = call i32 @ib_set_client_data(%struct.ib_device* %42, i32* @opa_vnic_client, %struct.opa_vnic_ctrl_port* %43)
  %45 = load %struct.opa_vnic_ctrl_port*, %struct.opa_vnic_ctrl_port** %3, align 8
  %46 = call i32 @opa_vnic_ctrl_config_dev(%struct.opa_vnic_ctrl_port* %45, i32 1)
  br label %47

47:                                               ; preds = %41, %25, %9
  ret void
}

declare dso_local i32 @rdma_cap_opa_vnic(%struct.ib_device*) #1

declare dso_local %struct.opa_vnic_ctrl_port* @kzalloc(i32, i32) #1

declare dso_local i32 @vema_register(%struct.opa_vnic_ctrl_port*) #1

declare dso_local i32 @c_info(i8*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, %struct.opa_vnic_ctrl_port*) #1

declare dso_local i32 @opa_vnic_ctrl_config_dev(%struct.opa_vnic_ctrl_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
