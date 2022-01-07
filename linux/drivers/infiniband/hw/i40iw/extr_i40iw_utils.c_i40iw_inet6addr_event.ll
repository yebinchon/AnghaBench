; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_inet6addr_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_inet6addr_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.inet6_ifaddr = type { %struct.TYPE_8__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.i40iw_device = type { i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { %struct.net_device* }
%struct.i40iw_handler = type { %struct.i40iw_device }

@I40IW_ARP_ADD = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@IP_ADDR_REGISTERED = common dso_local global i64 0, align 8
@I40IW_ARP_DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_inet6addr_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.inet6_ifaddr*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.i40iw_device*, align 8
  %12 = alloca %struct.i40iw_handler*, align 8
  %13 = alloca [4 x i32], align 16
  %14 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.inet6_ifaddr*
  store %struct.inet6_ifaddr* %16, %struct.inet6_ifaddr** %8, align 8
  %17 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %8, align 8
  %18 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %9, align 8
  %22 = load i32, i32* @I40IW_ARP_ADD, align 4
  store i32 %22, i32* %14, align 4
  %23 = load %struct.net_device*, %struct.net_device** %9, align 8
  %24 = call %struct.i40iw_handler* @i40iw_find_netdev(%struct.net_device* %23)
  store %struct.i40iw_handler* %24, %struct.i40iw_handler** %12, align 8
  %25 = load %struct.i40iw_handler*, %struct.i40iw_handler** %12, align 8
  %26 = icmp ne %struct.i40iw_handler* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %28, i32* %4, align 4
  br label %86

29:                                               ; preds = %3
  %30 = load %struct.i40iw_handler*, %struct.i40iw_handler** %12, align 8
  %31 = getelementptr inbounds %struct.i40iw_handler, %struct.i40iw_handler* %30, i32 0, i32 0
  store %struct.i40iw_device* %31, %struct.i40iw_device** %11, align 8
  %32 = load %struct.i40iw_device*, %struct.i40iw_device** %11, align 8
  %33 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IP_ADDR_REGISTERED, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %29
  %38 = load %struct.i40iw_device*, %struct.i40iw_device** %11, align 8
  %39 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37, %29
  %43 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %43, i32* %4, align 4
  br label %86

44:                                               ; preds = %37
  %45 = load %struct.i40iw_device*, %struct.i40iw_device** %11, align 8
  %46 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.net_device*, %struct.net_device** %48, align 8
  store %struct.net_device* %49, %struct.net_device** %10, align 8
  %50 = load %struct.net_device*, %struct.net_device** %10, align 8
  %51 = load %struct.net_device*, %struct.net_device** %9, align 8
  %52 = icmp ne %struct.net_device* %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %54, i32* %4, align 4
  br label %86

55:                                               ; preds = %44
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %57 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %8, align 8
  %58 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @i40iw_copy_ip_ntohl(i32* %56, i32 %61)
  %63 = load i64, i64* %6, align 8
  switch i64 %63, label %83 [
    i64 129, label %64
    i64 128, label %66
    i64 130, label %66
  ]

64:                                               ; preds = %55
  %65 = load i32, i32* @I40IW_ARP_DELETE, align 4
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %55, %55, %64
  %67 = load %struct.i40iw_device*, %struct.i40iw_device** %11, align 8
  %68 = load %struct.net_device*, %struct.net_device** %10, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @i40iw_manage_arp_cache(%struct.i40iw_device* %67, i32 %70, i32* %71, i32 0, i32 %72)
  %74 = load %struct.i40iw_device*, %struct.i40iw_device** %11, align 8
  %75 = load %struct.net_device*, %struct.net_device** %10, align 8
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @I40IW_ARP_ADD, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 1, i32 0
  %82 = call i32 @i40iw_if_notify(%struct.i40iw_device* %74, %struct.net_device* %75, i32* %76, i32 0, i32 %81)
  br label %84

83:                                               ; preds = %55
  br label %84

84:                                               ; preds = %83, %66
  %85 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %53, %42, %27
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.i40iw_handler* @i40iw_find_netdev(%struct.net_device*) #1

declare dso_local i32 @i40iw_copy_ip_ntohl(i32*, i32) #1

declare dso_local i32 @i40iw_manage_arp_cache(%struct.i40iw_device*, i32, i32*, i32, i32) #1

declare dso_local i32 @i40iw_if_notify(%struct.i40iw_device*, %struct.net_device*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
