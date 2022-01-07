; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_mcast = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ipoib_dev_priv = type { i32 }
%struct.rdma_netdev = type { i32 (%struct.net_device.0*, i32, %struct.TYPE_4__*, i32)* }
%struct.net_device.0 = type opaque

@IPOIB_MCAST_FLAG_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ipoib_mcast_leave on an in-flight join\0A\00", align 1
@IPOIB_MCAST_FLAG_ATTACHED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"leaving MGID %pI6\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"ib_detach_mcast failed (result = %d)\0A\00", align 1
@IPOIB_MCAST_FLAG_SENDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"leaving with no mcmember but not a SENDONLY join\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ipoib_mcast*)* @ipoib_mcast_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_mcast_leave(%struct.net_device* %0, %struct.ipoib_mcast* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ipoib_mcast*, align 8
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca %struct.rdma_netdev*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ipoib_mcast* %1, %struct.ipoib_mcast** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %8)
  store %struct.ipoib_dev_priv* %9, %struct.ipoib_dev_priv** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.rdma_netdev* @netdev_priv(%struct.net_device* %10)
  store %struct.rdma_netdev* %11, %struct.rdma_netdev** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* @IPOIB_MCAST_FLAG_BUSY, align 4
  %13 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %4, align 8
  %14 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %13, i32 0, i32 0
  %15 = call i64 @test_and_clear_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %19 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %4, align 8
  %22 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @IS_ERR_OR_NULL(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %4, align 8
  %28 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ib_sa_free_multicast(i32 %29)
  br label %31

31:                                               ; preds = %26, %20
  %32 = load i32, i32* @IPOIB_MCAST_FLAG_ATTACHED, align 4
  %33 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %4, align 8
  %34 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %33, i32 0, i32 0
  %35 = call i64 @test_and_clear_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %69

37:                                               ; preds = %31
  %38 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %39 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %4, align 8
  %40 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.rdma_netdev*, %struct.rdma_netdev** %6, align 8
  %46 = getelementptr inbounds %struct.rdma_netdev, %struct.rdma_netdev* %45, i32 0, i32 0
  %47 = load i32 (%struct.net_device.0*, i32, %struct.TYPE_4__*, i32)*, i32 (%struct.net_device.0*, i32, %struct.TYPE_4__*, i32)** %46, align 8
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = bitcast %struct.net_device* %48 to %struct.net_device.0*
  %50 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %51 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %4, align 8
  %54 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %4, align 8
  %57 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @be16_to_cpu(i32 %59)
  %61 = call i32 %47(%struct.net_device.0* %49, i32 %52, %struct.TYPE_4__* %55, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %37
  %65 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %37
  br label %79

69:                                               ; preds = %31
  %70 = load i32, i32* @IPOIB_MCAST_FLAG_SENDONLY, align 4
  %71 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %4, align 8
  %72 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %71, i32 0, i32 0
  %73 = call i32 @test_bit(i32 %70, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %77 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %76, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %69
  br label %79

79:                                               ; preds = %78, %68
  ret i32 0
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local %struct.rdma_netdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, ...) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @ib_sa_free_multicast(i32) #1

declare dso_local i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv*, i8*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
