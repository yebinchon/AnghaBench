; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_query_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i32, i32, i32, i32, i32, i32 }

@IB_PORT_CM_SUP = common dso_local global i32 0, align 4
@IB_PORT_REINIT_SUP = common dso_local global i32 0, align 4
@IB_PORT_VENDOR_CLASS_SUP = common dso_local global i32 0, align 4
@IB_PORT_BOOT_MGMT_SUP = common dso_local global i32 0, align 4
@IB_WIDTH_4X = common dso_local global i32 0, align 4
@I40IW_MAX_OUTBOUND_MESSAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_port_attr*)* @i40iw_query_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_port_attr*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %6, align 8
  %7 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %8 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* @IB_PORT_CM_SUP, align 4
  %10 = load i32, i32* @IB_PORT_REINIT_SUP, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @IB_PORT_VENDOR_CLASS_SUP, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @IB_PORT_BOOT_MGMT_SUP, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %17 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %19 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %18, i32 0, i32 2
  store i32 1, i32* %19, align 4
  %20 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %21 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %20, i32 0, i32 3
  store i32 1, i32* %21, align 4
  %22 = load i32, i32* @IB_WIDTH_4X, align 4
  %23 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %24 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %26 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %25, i32 0, i32 4
  store i32 1, i32* %26, align 4
  %27 = load i32, i32* @I40IW_MAX_OUTBOUND_MESSAGE_SIZE, align 4
  %28 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %29 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
