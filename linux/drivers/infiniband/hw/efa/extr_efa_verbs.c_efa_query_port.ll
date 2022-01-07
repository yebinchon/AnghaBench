; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_query_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32 }
%struct.efa_dev = type { i32 }

@IB_PORT_ACTIVE = common dso_local global i32 0, align 4
@IB_PORT_PHYS_STATE_LINK_UP = common dso_local global i32 0, align 4
@IB_SPEED_EDR = common dso_local global i32 0, align 4
@IB_WIDTH_4X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efa_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_port_attr*, align 8
  %7 = alloca %struct.efa_dev*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %6, align 8
  %8 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %9 = call %struct.efa_dev* @to_edev(%struct.ib_device* %8)
  store %struct.efa_dev* %9, %struct.efa_dev** %7, align 8
  %10 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %11 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load i32, i32* @IB_PORT_ACTIVE, align 4
  %13 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %14 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %13, i32 0, i32 10
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @IB_PORT_PHYS_STATE_LINK_UP, align 4
  %16 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %17 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %16, i32 0, i32 9
  store i32 %15, i32* %17, align 8
  %18 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %19 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %21 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %20, i32 0, i32 2
  store i32 1, i32* %21, align 8
  %22 = load i32, i32* @IB_SPEED_EDR, align 4
  %23 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %24 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @IB_WIDTH_4X, align 4
  %26 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %27 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 8
  %28 = load %struct.efa_dev*, %struct.efa_dev** %7, align 8
  %29 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @ib_mtu_int_to_enum(i32 %30)
  %32 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %33 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %32, i32 0, i32 6
  store i8* %31, i8** %33, align 8
  %34 = load %struct.efa_dev*, %struct.efa_dev** %7, align 8
  %35 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @ib_mtu_int_to_enum(i32 %36)
  %38 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %39 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  %40 = load %struct.efa_dev*, %struct.efa_dev** %7, align 8
  %41 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %44 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %46 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %45, i32 0, i32 3
  store i32 1, i32* %46, align 4
  ret i32 0
}

declare dso_local %struct.efa_dev* @to_edev(%struct.ib_device*) #1

declare dso_local i8* @ib_mtu_int_to_enum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
