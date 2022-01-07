; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_rdma_alloc_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_rdma_alloc_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ib_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.ib_device.0*, i32, i32, %struct.rdma_netdev_alloc_params*)* }
%struct.ib_device.0 = type opaque
%struct.rdma_netdev_alloc_params = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @rdma_alloc_netdev(%struct.ib_device* %0, i32 %1, i32 %2, i8* %3, i8 zeroext %4, void (%struct.net_device*)* %5) #0 {
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ib_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca void (%struct.net_device*)*, align 8
  %14 = alloca %struct.rdma_netdev_alloc_params, align 4
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8 %4, i8* %12, align 1
  store void (%struct.net_device*)* %5, void (%struct.net_device*)** %13, align 8
  %17 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %18 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.ib_device.0*, i32, i32, %struct.rdma_netdev_alloc_params*)*, i32 (%struct.ib_device.0*, i32, i32, %struct.rdma_netdev_alloc_params*)** %19, align 8
  %21 = icmp ne i32 (%struct.ib_device.0*, i32, i32, %struct.rdma_netdev_alloc_params*)* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.net_device* @ERR_PTR(i32 %24)
  store %struct.net_device* %25, %struct.net_device** %7, align 8
  br label %60

26:                                               ; preds = %6
  %27 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %28 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.ib_device.0*, i32, i32, %struct.rdma_netdev_alloc_params*)*, i32 (%struct.ib_device.0*, i32, i32, %struct.rdma_netdev_alloc_params*)** %29, align 8
  %31 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %32 = bitcast %struct.ib_device* %31 to %struct.ib_device.0*
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 %30(%struct.ib_device.0* %32, i32 %33, i32 %34, %struct.rdma_netdev_alloc_params* %14)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load i32, i32* %16, align 4
  %40 = call %struct.net_device* @ERR_PTR(i32 %39)
  store %struct.net_device* %40, %struct.net_device** %7, align 8
  br label %60

41:                                               ; preds = %26
  %42 = getelementptr inbounds %struct.rdma_netdev_alloc_params, %struct.rdma_netdev_alloc_params* %14, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %11, align 8
  %45 = load i8, i8* %12, align 1
  %46 = load void (%struct.net_device*)*, void (%struct.net_device*)** %13, align 8
  %47 = getelementptr inbounds %struct.rdma_netdev_alloc_params, %struct.rdma_netdev_alloc_params* %14, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.rdma_netdev_alloc_params, %struct.rdma_netdev_alloc_params* %14, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.net_device* @alloc_netdev_mqs(i32 %43, i8* %44, i8 zeroext %45, void (%struct.net_device*)* %46, i32 %48, i32 %50)
  store %struct.net_device* %51, %struct.net_device** %15, align 8
  %52 = load %struct.net_device*, %struct.net_device** %15, align 8
  %53 = icmp ne %struct.net_device* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %41
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  %57 = call %struct.net_device* @ERR_PTR(i32 %56)
  store %struct.net_device* %57, %struct.net_device** %7, align 8
  br label %60

58:                                               ; preds = %41
  %59 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %59, %struct.net_device** %7, align 8
  br label %60

60:                                               ; preds = %58, %54, %38, %22
  %61 = load %struct.net_device*, %struct.net_device** %7, align 8
  ret %struct.net_device* %61
}

declare dso_local %struct.net_device* @ERR_PTR(i32) #1

declare dso_local %struct.net_device* @alloc_netdev_mqs(i32, i8*, i8 zeroext, void (%struct.net_device*)*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
