; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_inetaddr_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_inetaddr_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.in_ifaddr = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.i40iw_device = type { i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.net_device* }
%struct.i40iw_handler = type { %struct.i40iw_device }
%struct.in_device = type { i32 }

@I40IW_ARP_ADD = common dso_local global i64 0, align 8
@NOTIFY_DONE = common dso_local global i32 0, align 4
@IP_ADDR_REGISTERED = common dso_local global i64 0, align 8
@I40IW_ARP_DELETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_inetaddr_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.in_ifaddr*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.i40iw_device*, align 8
  %13 = alloca %struct.i40iw_handler*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.in_device*, align 8
  %17 = alloca %struct.in_ifaddr*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.in_ifaddr*
  store %struct.in_ifaddr* %19, %struct.in_ifaddr** %8, align 8
  %20 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %21 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  store %struct.net_device* %24, %struct.net_device** %9, align 8
  %25 = load i64, i64* @I40IW_ARP_ADD, align 8
  store i64 %25, i64* %15, align 8
  %26 = load %struct.net_device*, %struct.net_device** %9, align 8
  %27 = call %struct.i40iw_handler* @i40iw_find_netdev(%struct.net_device* %26)
  store %struct.i40iw_handler* %27, %struct.i40iw_handler** %13, align 8
  %28 = load %struct.i40iw_handler*, %struct.i40iw_handler** %13, align 8
  %29 = icmp ne %struct.i40iw_handler* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %31, i32* %4, align 4
  br label %115

32:                                               ; preds = %3
  %33 = load %struct.i40iw_handler*, %struct.i40iw_handler** %13, align 8
  %34 = getelementptr inbounds %struct.i40iw_handler, %struct.i40iw_handler* %33, i32 0, i32 0
  store %struct.i40iw_device* %34, %struct.i40iw_device** %12, align 8
  %35 = load %struct.i40iw_device*, %struct.i40iw_device** %12, align 8
  %36 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IP_ADDR_REGISTERED, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %32
  %41 = load %struct.i40iw_device*, %struct.i40iw_device** %12, align 8
  %42 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40, %32
  %46 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %46, i32* %4, align 4
  br label %115

47:                                               ; preds = %40
  %48 = load %struct.i40iw_device*, %struct.i40iw_device** %12, align 8
  %49 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.net_device*, %struct.net_device** %51, align 8
  store %struct.net_device* %52, %struct.net_device** %10, align 8
  %53 = load %struct.net_device*, %struct.net_device** %10, align 8
  %54 = call %struct.net_device* @netdev_master_upper_dev_get(%struct.net_device* %53)
  store %struct.net_device* %54, %struct.net_device** %11, align 8
  %55 = load %struct.net_device*, %struct.net_device** %10, align 8
  %56 = load %struct.net_device*, %struct.net_device** %9, align 8
  %57 = icmp ne %struct.net_device* %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %59, i32* %4, align 4
  br label %115

60:                                               ; preds = %47
  %61 = load %struct.net_device*, %struct.net_device** %11, align 8
  %62 = icmp ne %struct.net_device* %61, null
  br i1 %62, label %63, label %84

63:                                               ; preds = %60
  %64 = call i32 (...) @rcu_read_lock()
  %65 = load %struct.net_device*, %struct.net_device** %11, align 8
  %66 = call %struct.in_device* @__in_dev_get_rcu(%struct.net_device* %65)
  store %struct.in_device* %66, %struct.in_device** %16, align 8
  store i64 0, i64* %14, align 8
  %67 = load %struct.in_device*, %struct.in_device** %16, align 8
  %68 = icmp ne %struct.in_device* %67, null
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = load %struct.in_device*, %struct.in_device** %16, align 8
  %71 = getelementptr inbounds %struct.in_device, %struct.in_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.in_ifaddr* @rcu_dereference(i32 %72)
  store %struct.in_ifaddr* %73, %struct.in_ifaddr** %17, align 8
  %74 = load %struct.in_ifaddr*, %struct.in_ifaddr** %17, align 8
  %75 = icmp ne %struct.in_ifaddr* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.in_ifaddr*, %struct.in_ifaddr** %17, align 8
  %78 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @ntohl(i32 %79)
  store i64 %80, i64* %14, align 8
  br label %81

81:                                               ; preds = %76, %69
  br label %82

82:                                               ; preds = %81, %63
  %83 = call i32 (...) @rcu_read_unlock()
  br label %89

84:                                               ; preds = %60
  %85 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %86 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @ntohl(i32 %87)
  store i64 %88, i64* %14, align 8
  br label %89

89:                                               ; preds = %84, %82
  %90 = load i64, i64* %6, align 8
  switch i64 %90, label %112 [
    i64 129, label %91
    i64 128, label %93
    i64 130, label %93
  ]

91:                                               ; preds = %89
  %92 = load i64, i64* @I40IW_ARP_DELETE, align 8
  store i64 %92, i64* %15, align 8
  br label %93

93:                                               ; preds = %89, %89, %91
  %94 = load i64, i64* %14, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  br label %113

97:                                               ; preds = %93
  %98 = load %struct.i40iw_device*, %struct.i40iw_device** %12, align 8
  %99 = load %struct.net_device*, %struct.net_device** %10, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* %15, align 8
  %103 = call i32 @i40iw_manage_arp_cache(%struct.i40iw_device* %98, i32 %101, i64* %14, i32 1, i64 %102)
  %104 = load %struct.i40iw_device*, %struct.i40iw_device** %12, align 8
  %105 = load %struct.net_device*, %struct.net_device** %10, align 8
  %106 = load i64, i64* %15, align 8
  %107 = load i64, i64* @I40IW_ARP_ADD, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 1, i32 0
  %111 = call i32 @i40iw_if_notify(%struct.i40iw_device* %104, %struct.net_device* %105, i64* %14, i32 1, i32 %110)
  br label %113

112:                                              ; preds = %89
  br label %113

113:                                              ; preds = %112, %97, %96
  %114 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %58, %45, %30
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.i40iw_handler* @i40iw_find_netdev(%struct.net_device*) #1

declare dso_local %struct.net_device* @netdev_master_upper_dev_get(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.in_device* @__in_dev_get_rcu(%struct.net_device*) #1

declare dso_local %struct.in_ifaddr* @rcu_dereference(i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @i40iw_manage_arp_cache(%struct.i40iw_device*, i32, i64*, i32, i64) #1

declare dso_local i32 @i40iw_if_notify(%struct.i40iw_device*, %struct.net_device*, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
