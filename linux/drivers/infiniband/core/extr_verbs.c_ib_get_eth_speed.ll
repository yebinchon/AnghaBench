; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_get_eth_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_get_eth_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IB_LINK_LAYER_ETHERNET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"%s speed is unknown, defaulting to %d\0A\00", align 1
@IB_WIDTH_1X = common dso_local global i32 0, align 4
@IB_SPEED_SDR = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i64 0, align 8
@IB_SPEED_FDR10 = common dso_local global i32 0, align 4
@SPEED_20000 = common dso_local global i64 0, align 8
@IB_WIDTH_4X = common dso_local global i32 0, align 4
@IB_SPEED_DDR = common dso_local global i32 0, align 4
@SPEED_25000 = common dso_local global i64 0, align 8
@IB_SPEED_EDR = common dso_local global i32 0, align 4
@SPEED_40000 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_get_eth_speed(%struct.ib_device* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.ethtool_link_ksettings, align 8
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @rdma_port_get_link_layer(%struct.ib_device* %14, i32 %15)
  %17 = load i64, i64* @IB_LINK_LAYER_ETHERNET, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %106

22:                                               ; preds = %4
  %23 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.net_device* @ib_device_get_netdev(%struct.ib_device* %23, i32 %24)
  store %struct.net_device* %25, %struct.net_device** %12, align 8
  %26 = load %struct.net_device*, %struct.net_device** %12, align 8
  %27 = icmp ne %struct.net_device* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %106

31:                                               ; preds = %22
  %32 = call i32 (...) @rtnl_lock()
  %33 = load %struct.net_device*, %struct.net_device** %12, align 8
  %34 = call i32 @__ethtool_get_link_ksettings(%struct.net_device* %33, %struct.ethtool_link_ksettings* %13)
  store i32 %34, i32* %10, align 4
  %35 = call i32 (...) @rtnl_unlock()
  %36 = load %struct.net_device*, %struct.net_device** %12, align 8
  %37 = call i32 @dev_put(%struct.net_device* %36)
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %13, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %11, align 8
  br label %51

44:                                               ; preds = %31
  %45 = load i64, i64* @SPEED_1000, align 8
  store i64 %45, i64* %11, align 8
  %46 = load %struct.net_device*, %struct.net_device** %12, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %48, i64 %49)
  br label %51

51:                                               ; preds = %44, %40
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* @SPEED_1000, align 8
  %54 = icmp sle i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* @IB_WIDTH_1X, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @IB_SPEED_SDR, align 4
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  br label %105

60:                                               ; preds = %51
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* @SPEED_10000, align 8
  %63 = icmp sle i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32, i32* @IB_WIDTH_1X, align 4
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @IB_SPEED_FDR10, align 4
  %68 = load i32*, i32** %8, align 8
  store i32 %67, i32* %68, align 4
  br label %104

69:                                               ; preds = %60
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* @SPEED_20000, align 8
  %72 = icmp sle i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32, i32* @IB_WIDTH_4X, align 4
  %75 = load i32*, i32** %9, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* @IB_SPEED_DDR, align 4
  %77 = load i32*, i32** %8, align 8
  store i32 %76, i32* %77, align 4
  br label %103

78:                                               ; preds = %69
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* @SPEED_25000, align 8
  %81 = icmp sle i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i32, i32* @IB_WIDTH_1X, align 4
  %84 = load i32*, i32** %9, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* @IB_SPEED_EDR, align 4
  %86 = load i32*, i32** %8, align 8
  store i32 %85, i32* %86, align 4
  br label %102

87:                                               ; preds = %78
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* @SPEED_40000, align 8
  %90 = icmp sle i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i32, i32* @IB_WIDTH_4X, align 4
  %93 = load i32*, i32** %9, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* @IB_SPEED_FDR10, align 4
  %95 = load i32*, i32** %8, align 8
  store i32 %94, i32* %95, align 4
  br label %101

96:                                               ; preds = %87
  %97 = load i32, i32* @IB_WIDTH_4X, align 4
  %98 = load i32*, i32** %9, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* @IB_SPEED_EDR, align 4
  %100 = load i32*, i32** %8, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %96, %91
  br label %102

102:                                              ; preds = %101, %82
  br label %103

103:                                              ; preds = %102, %73
  br label %104

104:                                              ; preds = %103, %64
  br label %105

105:                                              ; preds = %104, %55
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %105, %28, %19
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i64 @rdma_port_get_link_layer(%struct.ib_device*, i32) #1

declare dso_local %struct.net_device* @ib_device_get_netdev(%struct.ib_device*, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @__ethtool_get_link_ksettings(%struct.net_device*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @pr_warn(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
