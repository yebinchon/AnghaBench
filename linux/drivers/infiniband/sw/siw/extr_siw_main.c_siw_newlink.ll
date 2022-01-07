; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_main.c_siw_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_main.c_siw_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ib_device = type { i32 }
%struct.siw_device = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RDMA_DRIVER_SIW = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"siw: new device\0A\00", align 1
@IB_PORT_ACTIVE = common dso_local global i32 0, align 4
@IB_PORT_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.net_device*)* @siw_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_newlink(i8* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.siw_device*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.siw_device* null, %struct.siw_device** %7, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call i32 @siw_dev_qualified(%struct.net_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %65

17:                                               ; preds = %2
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = load i32, i32* @RDMA_DRIVER_SIW, align 4
  %20 = call %struct.ib_device* @ib_device_get_by_netdev(%struct.net_device* %18, i32 %19)
  store %struct.ib_device* %20, %struct.ib_device** %6, align 8
  %21 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %22 = icmp ne %struct.ib_device* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %25 = call i32 @ib_device_put(%struct.ib_device* %24)
  %26 = load i32, i32* @EEXIST, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %65

28:                                               ; preds = %17
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = call %struct.siw_device* @siw_device_create(%struct.net_device* %29)
  store %struct.siw_device* %30, %struct.siw_device** %7, align 8
  %31 = load %struct.siw_device*, %struct.siw_device** %7, align 8
  %32 = icmp ne %struct.siw_device* %31, null
  br i1 %32, label %33, label %63

33:                                               ; preds = %28
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = call i32 @dev_dbg(i32* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = call i64 @netif_running(%struct.net_device* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = call i64 @netif_carrier_ok(%struct.net_device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @IB_PORT_ACTIVE, align 4
  %46 = load %struct.siw_device*, %struct.siw_device** %7, align 8
  %47 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %52

48:                                               ; preds = %40, %33
  %49 = load i32, i32* @IB_PORT_DOWN, align 4
  %50 = load %struct.siw_device*, %struct.siw_device** %7, align 8
  %51 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %44
  %53 = load %struct.siw_device*, %struct.siw_device** %7, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @siw_device_register(%struct.siw_device* %53, i8* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.siw_device*, %struct.siw_device** %7, align 8
  %60 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %59, i32 0, i32 0
  %61 = call i32 @ib_dealloc_device(i32* %60)
  br label %62

62:                                               ; preds = %58, %52
  br label %63

63:                                               ; preds = %62, %28
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %23, %14
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @siw_dev_qualified(%struct.net_device*) #1

declare dso_local %struct.ib_device* @ib_device_get_by_netdev(%struct.net_device*, i32) #1

declare dso_local i32 @ib_device_put(%struct.ib_device*) #1

declare dso_local %struct.siw_device* @siw_device_create(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @siw_device_register(%struct.siw_device*, i8*) #1

declare dso_local i32 @ib_dealloc_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
