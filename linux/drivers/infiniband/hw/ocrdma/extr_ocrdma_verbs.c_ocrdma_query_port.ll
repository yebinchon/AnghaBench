; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_query_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i64, i32, i32, i32 }
%struct.ocrdma_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@IB_PORT_ACTIVE = common dso_local global i32 0, align 4
@IB_PORT_PHYS_STATE_LINK_UP = common dso_local global i32 0, align 4
@IB_PORT_DOWN = common dso_local global i32 0, align 4
@IB_PORT_PHYS_STATE_DISABLED = common dso_local global i32 0, align 4
@IB_MTU_4096 = common dso_local global i32 0, align 4
@IB_PORT_CM_SUP = common dso_local global i32 0, align 4
@IB_PORT_REINIT_SUP = common dso_local global i32 0, align 4
@IB_PORT_DEVICE_MGMT_SUP = common dso_local global i32 0, align 4
@IB_PORT_VENDOR_CLASS_SUP = common dso_local global i32 0, align 4
@OCRDMA_MAX_SGID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_port_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocrdma_dev*, align 8
  %9 = alloca %struct.net_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %6, align 8
  %10 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %11 = call %struct.ocrdma_dev* @get_ocrdma_dev(%struct.ib_device* %10)
  store %struct.ocrdma_dev* %11, %struct.ocrdma_dev** %8, align 8
  %12 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %13 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %9, align 8
  %17 = call i64 @netif_running(%struct.net_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load %struct.net_device*, %struct.net_device** %9, align 8
  %21 = call i64 @netif_oper_up(%struct.net_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* @IB_PORT_ACTIVE, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @IB_PORT_PHYS_STATE_LINK_UP, align 4
  %26 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %27 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %26, i32 0, i32 17
  store i32 %25, i32* %27, align 8
  br label %33

28:                                               ; preds = %19, %3
  %29 = load i32, i32* @IB_PORT_DOWN, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @IB_PORT_PHYS_STATE_DISABLED, align 4
  %31 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %32 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %31, i32 0, i32 17
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* @IB_MTU_4096, align 4
  %35 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %36 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %35, i32 0, i32 16
  store i32 %34, i32* %36, align 4
  %37 = load %struct.net_device*, %struct.net_device** %9, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @iboe_get_mtu(i32 %39)
  %41 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %42 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %41, i32 0, i32 15
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %44 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %43, i32 0, i32 14
  store i64 0, i64* %44, align 8
  %45 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %46 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %45, i32 0, i32 13
  store i64 0, i64* %46, align 8
  %47 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %48 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %47, i32 0, i32 12
  store i64 0, i64* %48, align 8
  %49 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %50 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %49, i32 0, i32 11
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %53 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @IB_PORT_CM_SUP, align 4
  %55 = load i32, i32* @IB_PORT_REINIT_SUP, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @IB_PORT_DEVICE_MGMT_SUP, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @IB_PORT_VENDOR_CLASS_SUP, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %62 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %64 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %63, i32 0, i32 2
  store i32 1, i32* %64, align 8
  %65 = load i32, i32* @OCRDMA_MAX_SGID, align 4
  %66 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %67 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %66, i32 0, i32 10
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %69 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %68, i32 0, i32 3
  store i32 1, i32* %69, align 4
  %70 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %71 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %70, i32 0, i32 9
  store i64 0, i64* %71, align 8
  %72 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %73 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %72, i32 0, i32 8
  store i64 0, i64* %73, align 8
  %74 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %75 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %76 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %75, i32 0, i32 7
  %77 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %78 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %77, i32 0, i32 6
  %79 = call i32 @get_link_speed_and_width(%struct.ocrdma_dev* %74, i32* %76, i32* %78)
  %80 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %81 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %80, i32 0, i32 4
  store i32 -2147483648, i32* %81, align 8
  %82 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %83 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %82, i32 0, i32 5
  store i32 4, i32* %83, align 4
  ret i32 0
}

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(%struct.ib_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @netif_oper_up(%struct.net_device*) #1

declare dso_local i32 @iboe_get_mtu(i32) #1

declare dso_local i32 @get_link_speed_and_width(%struct.ocrdma_dev*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
