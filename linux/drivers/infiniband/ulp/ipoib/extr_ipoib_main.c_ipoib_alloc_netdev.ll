; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_alloc_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_alloc_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ib_device = type { i32 }

@RDMA_NETDEV_IPOIB = common dso_local global i32 0, align 4
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@ipoib_setup_common = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.ib_device*, i32, i8*)* @ipoib_alloc_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @ipoib_alloc_netdev(%struct.ib_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @RDMA_NETDEV_IPOIB, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %14 = load i32, i32* @ipoib_setup_common, align 4
  %15 = call %struct.net_device* @rdma_alloc_netdev(%struct.ib_device* %9, i32 %10, i32 %11, i8* %12, i32 %13, i32 %14)
  store %struct.net_device* %15, %struct.net_device** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = call i32 @IS_ERR(%struct.net_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  %21 = call i32 @PTR_ERR(%struct.net_device* %20)
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19, %3
  %26 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %26, %struct.net_device** %4, align 8
  br label %40

27:                                               ; preds = %19
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %30 = load i32, i32* @ipoib_setup_common, align 4
  %31 = call %struct.net_device* @alloc_netdev(i32 4, i8* %28, i32 %29, i32 %30)
  store %struct.net_device* %31, %struct.net_device** %8, align 8
  %32 = load %struct.net_device*, %struct.net_device** %8, align 8
  %33 = icmp ne %struct.net_device* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.net_device* @ERR_PTR(i32 %36)
  store %struct.net_device* %37, %struct.net_device** %4, align 8
  br label %40

38:                                               ; preds = %27
  %39 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %39, %struct.net_device** %4, align 8
  br label %40

40:                                               ; preds = %38, %34, %25
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  ret %struct.net_device* %41
}

declare dso_local %struct.net_device* @rdma_alloc_netdev(%struct.ib_device*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.net_device*) #1

declare dso_local i32 @PTR_ERR(%struct.net_device*) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local %struct.net_device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
