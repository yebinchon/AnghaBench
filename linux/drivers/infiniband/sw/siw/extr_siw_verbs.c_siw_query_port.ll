; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_query_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.siw_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IB_PORT_ACTIVE = common dso_local global i64 0, align 8
@IB_PORT_PHYS_STATE_LINK_UP = common dso_local global i32 0, align 4
@IB_PORT_PHYS_STATE_DISABLED = common dso_local global i32 0, align 4
@IB_PORT_CM_SUP = common dso_local global i32 0, align 4
@IB_PORT_DEVICE_MGMT_SUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_port_attr*, align 8
  %7 = alloca %struct.siw_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %6, align 8
  %8 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %9 = call %struct.siw_device* @to_siw_dev(%struct.ib_device* %8)
  store %struct.siw_device* %9, %struct.siw_device** %7, align 8
  %10 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %11 = call i32 @memset(%struct.ib_port_attr* %10, i32 0, i32 48)
  %12 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %13 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %16 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %15, i32 0, i32 9
  store i32 %14, i32* %16, align 8
  %17 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %18 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %17, i32 0, i32 0
  store i32 2, i32* %18, align 8
  %19 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %20 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %19, i32 0, i32 1
  store i32 2, i32* %20, align 4
  %21 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %22 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %21, i32 0, i32 2
  store i32 1, i32* %22, align 8
  %23 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %24 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %23, i32 0, i32 3
  store i32 -1, i32* %24, align 4
  %25 = load %struct.siw_device*, %struct.siw_device** %7, align 8
  %26 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ib_mtu_int_to_enum(i32 %29)
  %31 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %32 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 4
  %33 = load %struct.siw_device*, %struct.siw_device** %7, align 8
  %34 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IB_PORT_ACTIVE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i32, i32* @IB_PORT_PHYS_STATE_LINK_UP, align 4
  br label %42

40:                                               ; preds = %3
  %41 = load i32, i32* @IB_PORT_PHYS_STATE_DISABLED, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %45 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %47 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %46, i32 0, i32 4
  store i32 1, i32* %47, align 8
  %48 = load i32, i32* @IB_PORT_CM_SUP, align 4
  %49 = load i32, i32* @IB_PORT_DEVICE_MGMT_SUP, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %52 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load %struct.siw_device*, %struct.siw_device** %7, align 8
  %54 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %57 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %56, i32 0, i32 6
  store i64 %55, i64* %57, align 8
  ret i32 0
}

declare dso_local %struct.siw_device* @to_siw_dev(%struct.ib_device*) #1

declare dso_local i32 @memset(%struct.ib_port_attr*, i32, i32) #1

declare dso_local i32 @ib_mtu_int_to_enum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
