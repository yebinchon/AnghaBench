; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_provider.c_c4iw_query_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_provider.c_c4iw_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"ibdev %p\0A\00", align 1
@IB_PORT_CM_SUP = common dso_local global i32 0, align 4
@IB_PORT_SNMP_TUNNEL_SUP = common dso_local global i32 0, align 4
@IB_PORT_REINIT_SUP = common dso_local global i32 0, align 4
@IB_PORT_DEVICE_MGMT_SUP = common dso_local global i32 0, align 4
@IB_PORT_VENDOR_CLASS_SUP = common dso_local global i32 0, align 4
@IB_PORT_BOOT_MGMT_SUP = common dso_local global i32 0, align 4
@IB_SPEED_DDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_port_attr*)* @c4iw_query_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c4iw_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_port_attr*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %6, align 8
  %7 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.ib_device* %7)
  %9 = load i32, i32* @IB_PORT_CM_SUP, align 4
  %10 = load i32, i32* @IB_PORT_SNMP_TUNNEL_SUP, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @IB_PORT_REINIT_SUP, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @IB_PORT_DEVICE_MGMT_SUP, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @IB_PORT_VENDOR_CLASS_SUP, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @IB_PORT_BOOT_MGMT_SUP, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %21 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %23 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %25 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %24, i32 0, i32 2
  store i32 1, i32* %25, align 4
  %26 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %27 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %26, i32 0, i32 3
  store i32 2, i32* %27, align 4
  %28 = load i32, i32* @IB_SPEED_DDR, align 4
  %29 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %30 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %32 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %31, i32 0, i32 4
  store i32 -1, i32* %32, align 4
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, %struct.ib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
