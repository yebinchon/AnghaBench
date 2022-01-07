; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.ipoib_dev_priv = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IPOIB_FLAG_ADMIN_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"connected\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"datagram\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"enabling connected mode will cause multicast packet drops\0A\00", align 1
@IB_SEND_IP_CSUM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_set_mode(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ipoib_dev_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %7)
  store %struct.ipoib_dev_priv* %8, %struct.ipoib_dev_priv** %6, align 8
  %9 = load i32, i32* @IPOIB_FLAG_ADMIN_CM, align 4
  %10 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %11 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %10, i32 0, i32 1
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %14, %2
  %19 = load i32, i32* @IPOIB_FLAG_ADMIN_CM, align 4
  %20 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %21 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %20, i32 0, i32 1
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %14
  store i32 0, i32* %3, align 4
  br label %105

29:                                               ; preds = %24, %18
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @IPOIB_CM_SUPPORTED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %71

35:                                               ; preds = %29
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %71, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @IPOIB_FLAG_ADMIN_CM, align 4
  %41 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %42 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %41, i32 0, i32 1
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  %44 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %45 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %44, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = call i32 @netdev_update_features(%struct.net_device* %46)
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = call i32 @ipoib_cm_max_mtu(%struct.net_device* %49)
  %51 = call i32 @dev_set_mtu(%struct.net_device* %48, i32 %50)
  %52 = call i32 (...) @rtnl_unlock()
  %53 = load i32, i32* @IB_SEND_IP_CSUM, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %56 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %54
  store i32 %60, i32* %58, align 4
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = call i32 @ipoib_flush_paths(%struct.net_device* %61)
  %63 = call i32 (...) @rtnl_trylock()
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %39
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  br label %69

68:                                               ; preds = %39
  br label %69

69:                                               ; preds = %68, %65
  %70 = phi i32 [ %67, %65 ], [ 0, %68 ]
  store i32 %70, i32* %3, align 4
  br label %105

71:                                               ; preds = %35, %29
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %102, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @IPOIB_FLAG_ADMIN_CM, align 4
  %77 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %78 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %77, i32 0, i32 1
  %79 = call i32 @clear_bit(i32 %76, i32* %78)
  %80 = load %struct.net_device*, %struct.net_device** %4, align 8
  %81 = call i32 @netdev_update_features(%struct.net_device* %80)
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %84 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.net_device*, %struct.net_device** %4, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @min(i32 %85, i32 %88)
  %90 = call i32 @dev_set_mtu(%struct.net_device* %82, i32 %89)
  %91 = call i32 (...) @rtnl_unlock()
  %92 = load %struct.net_device*, %struct.net_device** %4, align 8
  %93 = call i32 @ipoib_flush_paths(%struct.net_device* %92)
  %94 = call i32 (...) @rtnl_trylock()
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %75
  %97 = load i32, i32* @EBUSY, align 4
  %98 = sub nsw i32 0, %97
  br label %100

99:                                               ; preds = %75
  br label %100

100:                                              ; preds = %99, %96
  %101 = phi i32 [ %98, %96 ], [ 0, %99 ]
  store i32 %101, i32* %3, align 4
  br label %105

102:                                              ; preds = %71
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %102, %100, %69, %28
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @IPOIB_CM_SUPPORTED(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @netdev_update_features(%struct.net_device*) #1

declare dso_local i32 @dev_set_mtu(%struct.net_device*, i32) #1

declare dso_local i32 @ipoib_cm_max_mtu(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @ipoib_flush_paths(%struct.net_device*) #1

declare dso_local i32 @rtnl_trylock(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
