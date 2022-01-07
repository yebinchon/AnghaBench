; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_verbs.c_usnic_ib_query_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_verbs.c_usnic_ib_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32 }
%struct.usnic_ib_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IB_PORT_DOWN = common dso_local global i32 0, align 4
@IB_PORT_PHYS_STATE_DISABLED = common dso_local global i32 0, align 4
@IB_PORT_INIT = common dso_local global i32 0, align 4
@IB_PORT_PHYS_STATE_PORT_CONFIGURATION_TRAINING = common dso_local global i32 0, align 4
@IB_PORT_ACTIVE = common dso_local global i32 0, align 4
@IB_PORT_PHYS_STATE_LINK_UP = common dso_local global i32 0, align 4
@IB_MTU_4096 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usnic_ib_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_port_attr*, align 8
  %8 = alloca %struct.usnic_ib_dev*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %7, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %10 = call %struct.usnic_ib_dev* @to_usdev(%struct.ib_device* %9)
  store %struct.usnic_ib_dev* %10, %struct.usnic_ib_dev** %8, align 8
  %11 = call i32 @usnic_dbg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %15 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %14, i32 0, i32 16
  %16 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %17 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %16, i32 0, i32 15
  %18 = call i64 @ib_get_eth_speed(%struct.ib_device* %12, i32 %13, i32* %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %104

23:                                               ; preds = %3
  %24 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %8, align 8
  %25 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %28 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %27, i32 0, i32 14
  store i64 0, i64* %28, align 8
  %29 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %30 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %32 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %31, i32 0, i32 13
  store i64 0, i64* %32, align 8
  %33 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %34 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %33, i32 0, i32 12
  store i64 0, i64* %34, align 8
  %35 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %8, align 8
  %36 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %23
  %42 = load i32, i32* @IB_PORT_DOWN, align 4
  %43 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %44 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %43, i32 0, i32 11
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @IB_PORT_PHYS_STATE_DISABLED, align 4
  %46 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %47 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %46, i32 0, i32 10
  store i32 %45, i32* %47, align 8
  br label %70

48:                                               ; preds = %23
  %49 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %8, align 8
  %50 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @IB_PORT_INIT, align 4
  %57 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %58 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %57, i32 0, i32 11
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @IB_PORT_PHYS_STATE_PORT_CONFIGURATION_TRAINING, align 4
  %60 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %61 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %60, i32 0, i32 10
  store i32 %59, i32* %61, align 8
  br label %69

62:                                               ; preds = %48
  %63 = load i32, i32* @IB_PORT_ACTIVE, align 4
  %64 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %65 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %64, i32 0, i32 11
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @IB_PORT_PHYS_STATE_LINK_UP, align 4
  %67 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %68 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %67, i32 0, i32 10
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %62, %55
  br label %70

70:                                               ; preds = %69, %41
  %71 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %72 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %71, i32 0, i32 9
  store i64 0, i64* %72, align 8
  %73 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %74 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %76 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %75, i32 0, i32 2
  store i32 1, i32* %76, align 8
  %77 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %78 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %77, i32 0, i32 8
  store i64 0, i64* %78, align 8
  %79 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %80 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %79, i32 0, i32 7
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* @IB_MTU_4096, align 4
  %82 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %83 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 8
  %84 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %8, align 8
  %85 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @iboe_get_mtu(i32 %88)
  %90 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %91 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %8, align 8
  %93 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %98 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %100 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %99, i32 0, i32 3
  store i32 1, i32* %100, align 4
  %101 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %8, align 8
  %102 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %70, %20
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.usnic_ib_dev* @to_usdev(%struct.ib_device*) #1

declare dso_local i32 @usnic_dbg(i8*) #1

declare dso_local i64 @ib_get_eth_speed(%struct.ib_device*, i32, i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iboe_get_mtu(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
