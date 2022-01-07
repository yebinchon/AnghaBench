; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_set_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { i32 }
%struct.sockaddr_storage = type { i64 }
%union.ib_gid = type { i32 }

@IFF_LIVE_ADDR_CHANGE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ipoib_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @ipoib_set_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_set_mac(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ipoib_dev_priv*, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %9)
  store %struct.ipoib_dev_priv* %10, %struct.ipoib_dev_priv** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.sockaddr_storage*
  store %struct.sockaddr_storage* %12, %struct.sockaddr_storage** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFF_LIVE_ADDR_CHANGE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call i64 @netif_running(%struct.net_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %46

26:                                               ; preds = %19, %2
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %29 = call i32 @ipoib_check_lladdr(%struct.net_device* %27, %struct.sockaddr_storage* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %46

34:                                               ; preds = %26
  %35 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %36 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %37 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 4
  %40 = inttoptr i64 %39 to %union.ib_gid*
  %41 = call i32 @set_base_guid(%struct.ipoib_dev_priv* %35, %union.ib_gid* %40)
  %42 = load i32, i32* @ipoib_workqueue, align 4
  %43 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %44 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %43, i32 0, i32 0
  %45 = call i32 @queue_work(i32 %42, i32* %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %34, %32, %23
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ipoib_check_lladdr(%struct.net_device*, %struct.sockaddr_storage*) #1

declare dso_local i32 @set_base_guid(%struct.ipoib_dev_priv*, %union.ib_gid*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
