; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_ib_verbs.c_bnxt_re_query_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_ib_verbs.c_bnxt_re_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.bnxt_re_dev = type { i32, i32, %struct.TYPE_3__*, %struct.bnxt_qplib_dev_attr }
%struct.TYPE_3__ = type { i32 }
%struct.bnxt_qplib_dev_attr = type { i32, i32 }

@IB_PORT_ACTIVE = common dso_local global i32 0, align 4
@IB_PORT_PHYS_STATE_LINK_UP = common dso_local global i32 0, align 4
@IB_PORT_DOWN = common dso_local global i32 0, align 4
@IB_PORT_PHYS_STATE_DISABLED = common dso_local global i32 0, align 4
@IB_MTU_4096 = common dso_local global i32 0, align 4
@IB_PORT_CM_SUP = common dso_local global i32 0, align 4
@IB_PORT_REINIT_SUP = common dso_local global i32 0, align 4
@IB_PORT_DEVICE_MGMT_SUP = common dso_local global i32 0, align 4
@IB_PORT_VENDOR_CLASS_SUP = common dso_local global i32 0, align 4
@BNXT_RE_MAX_MR_SIZE_LOW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_re_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_port_attr*, align 8
  %7 = alloca %struct.bnxt_re_dev*, align 8
  %8 = alloca %struct.bnxt_qplib_dev_attr*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %6, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %10 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %11 = call %struct.bnxt_re_dev* @to_bnxt_re_dev(%struct.ib_device* %9, %struct.ib_device* %10)
  store %struct.bnxt_re_dev* %11, %struct.bnxt_re_dev** %7, align 8
  %12 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %7, align 8
  %13 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %12, i32 0, i32 3
  store %struct.bnxt_qplib_dev_attr* %13, %struct.bnxt_qplib_dev_attr** %8, align 8
  %14 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %15 = call i32 @memset(%struct.ib_port_attr* %14, i32 0, i32 128)
  %16 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %7, align 8
  %17 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = call i64 @netif_running(%struct.TYPE_3__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %7, align 8
  %23 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = call i64 @netif_carrier_ok(%struct.TYPE_3__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i32, i32* @IB_PORT_ACTIVE, align 4
  %29 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %30 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %29, i32 0, i32 19
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @IB_PORT_PHYS_STATE_LINK_UP, align 4
  %32 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %33 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %32, i32 0, i32 18
  store i32 %31, i32* %33, align 4
  br label %41

34:                                               ; preds = %21, %3
  %35 = load i32, i32* @IB_PORT_DOWN, align 4
  %36 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %37 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %36, i32 0, i32 19
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @IB_PORT_PHYS_STATE_DISABLED, align 4
  %39 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %40 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %39, i32 0, i32 18
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %34, %27
  %42 = load i32, i32* @IB_MTU_4096, align 4
  %43 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %44 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %43, i32 0, i32 17
  store i32 %42, i32* %44, align 8
  %45 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %7, align 8
  %46 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @iboe_get_mtu(i32 %49)
  %51 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %52 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %51, i32 0, i32 16
  store i32 %50, i32* %52, align 4
  %53 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %8, align 8
  %54 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %57 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %56, i32 0, i32 15
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @IB_PORT_CM_SUP, align 4
  %59 = load i32, i32* @IB_PORT_REINIT_SUP, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @IB_PORT_DEVICE_MGMT_SUP, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @IB_PORT_VENDOR_CLASS_SUP, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %66 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %68 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load i64, i64* @BNXT_RE_MAX_MR_SIZE_LOW, align 8
  %70 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %71 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %70, i32 0, i32 14
  store i64 %69, i64* %71, align 8
  %72 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %73 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %72, i32 0, i32 13
  store i64 0, i64* %73, align 8
  %74 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %75 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %74, i32 0, i32 12
  store i64 0, i64* %75, align 8
  %76 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %8, align 8
  %77 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %80 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %79, i32 0, i32 11
  store i32 %78, i32* %80, align 8
  %81 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %82 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %81, i32 0, i32 10
  store i64 0, i64* %82, align 8
  %83 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %84 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %83, i32 0, i32 9
  store i64 0, i64* %84, align 8
  %85 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %86 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %85, i32 0, i32 8
  store i64 0, i64* %86, align 8
  %87 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %88 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %87, i32 0, i32 2
  store i32 4, i32* %88, align 8
  %89 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %90 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %89, i32 0, i32 7
  store i64 0, i64* %90, align 8
  %91 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %92 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %91, i32 0, i32 6
  store i64 0, i64* %92, align 8
  %93 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %94 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %93, i32 0, i32 5
  store i64 0, i64* %94, align 8
  %95 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %7, align 8
  %96 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %99 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %7, align 8
  %101 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %104 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  ret i32 0
}

declare dso_local %struct.bnxt_re_dev* @to_bnxt_re_dev(%struct.ib_device*, %struct.ib_device*) #1

declare dso_local i32 @memset(%struct.ib_port_attr*, i32, i32) #1

declare dso_local i64 @netif_running(%struct.TYPE_3__*) #1

declare dso_local i64 @netif_carrier_ok(%struct.TYPE_3__*) #1

declare dso_local i32 @iboe_get_mtu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
