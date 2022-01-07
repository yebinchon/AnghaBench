; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_main.c_hns_roce_query_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_main.c_hns_roce_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.hns_roce_dev = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.device* }
%struct.TYPE_4__ = type { i32, %struct.net_device** }
%struct.net_device = type { i32 }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.device = type { i32 }

@IB_PORT_CM_SUP = common dso_local global i32 0, align 4
@IB_PORT_REINIT_SUP = common dso_local global i32 0, align 4
@IB_PORT_VENDOR_CLASS_SUP = common dso_local global i32 0, align 4
@IB_PORT_BOOT_MGMT_SUP = common dso_local global i32 0, align 4
@HNS_ROCE_MAX_MSG_LEN = common dso_local global i32 0, align 4
@IB_WIDTH_4X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"find netdev %d failed!\0D\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IB_MTU_256 = common dso_local global i32 0, align 4
@IB_PORT_ACTIVE = common dso_local global i64 0, align 8
@IB_PORT_DOWN = common dso_local global i64 0, align 8
@IB_PORT_PHYS_STATE_LINK_UP = common dso_local global i32 0, align 4
@IB_PORT_PHYS_STATE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i64, %struct.ib_port_attr*)* @hns_roce_query_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_query_port(%struct.ib_device* %0, i64 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ib_port_attr*, align 8
  %8 = alloca %struct.hns_roce_dev*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %7, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %15 = call %struct.hns_roce_dev* @to_hr_dev(%struct.ib_device* %14)
  store %struct.hns_roce_dev* %15, %struct.hns_roce_dev** %8, align 8
  %16 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %17 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %16, i32 0, i32 2
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %9, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp sgt i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i64, i64* %6, align 8
  %24 = sub nsw i64 %23, 1
  store i64 %24, i64* %13, align 8
  %25 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %26 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %30 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %32 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %13, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %39 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @IB_PORT_CM_SUP, align 4
  %41 = load i32, i32* @IB_PORT_REINIT_SUP, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @IB_PORT_VENDOR_CLASS_SUP, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @IB_PORT_BOOT_MGMT_SUP, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %48 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @HNS_ROCE_MAX_MSG_LEN, align 4
  %50 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %51 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %53 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* @IB_WIDTH_4X, align 4
  %55 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %56 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %58 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %57, i32 0, i32 2
  store i32 1, i32* %58, align 8
  %59 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %60 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @spin_lock_irqsave(i32* %61, i64 %62)
  %64 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %65 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load %struct.net_device**, %struct.net_device*** %66, align 8
  %68 = load i64, i64* %13, align 8
  %69 = getelementptr inbounds %struct.net_device*, %struct.net_device** %67, i64 %68
  %70 = load %struct.net_device*, %struct.net_device** %69, align 8
  store %struct.net_device* %70, %struct.net_device** %10, align 8
  %71 = load %struct.net_device*, %struct.net_device** %10, align 8
  %72 = icmp ne %struct.net_device* %71, null
  br i1 %72, label %84, label %73

73:                                               ; preds = %3
  %74 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %75 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %11, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load %struct.device*, %struct.device** %9, align 8
  %80 = load i64, i64* %13, align 8
  %81 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %136

84:                                               ; preds = %3
  %85 = load %struct.net_device*, %struct.net_device** %10, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @iboe_get_mtu(i32 %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %93 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @min(i32 %94, i32 %95)
  br label %99

97:                                               ; preds = %84
  %98 = load i32, i32* @IB_MTU_256, align 4
  br label %99

99:                                               ; preds = %97, %91
  %100 = phi i32 [ %96, %91 ], [ %98, %97 ]
  %101 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %102 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 8
  %103 = load %struct.net_device*, %struct.net_device** %10, align 8
  %104 = call i64 @netif_running(%struct.net_device* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load %struct.net_device*, %struct.net_device** %10, align 8
  %108 = call i64 @netif_carrier_ok(%struct.net_device* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i64, i64* @IB_PORT_ACTIVE, align 8
  br label %114

112:                                              ; preds = %106, %99
  %113 = load i64, i64* @IB_PORT_DOWN, align 8
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i64 [ %111, %110 ], [ %113, %112 ]
  %116 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %117 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %116, i32 0, i32 3
  store i64 %115, i64* %117, align 8
  %118 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %119 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @IB_PORT_ACTIVE, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %114
  %124 = load i32, i32* @IB_PORT_PHYS_STATE_LINK_UP, align 4
  br label %127

125:                                              ; preds = %114
  %126 = load i32, i32* @IB_PORT_PHYS_STATE_DISABLED, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  %129 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %130 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 8
  %131 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %132 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %11, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32* %133, i64 %134)
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %127, %73
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(%struct.ib_device*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @iboe_get_mtu(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
