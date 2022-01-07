; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_roce_gid_mgmt.c_inetaddr_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_roce_gid_mgmt.c_inetaddr_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }
%struct.in_ifaddr = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.net_device* }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @inetaddr_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inetaddr_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.in_ifaddr*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.in_ifaddr*
  store %struct.in_ifaddr* %11, %struct.in_ifaddr** %9, align 8
  %12 = load i32, i32* @AF_INET, align 4
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %15 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %20 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %8, align 8
  %24 = load %struct.notifier_block*, %struct.notifier_block** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  %28 = call i32 @addr_event(%struct.notifier_block* %24, i64 %25, %struct.sockaddr* %26, %struct.net_device* %27)
  ret i32 %28
}

declare dso_local i32 @addr_event(%struct.notifier_block*, i64, %struct.sockaddr*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
