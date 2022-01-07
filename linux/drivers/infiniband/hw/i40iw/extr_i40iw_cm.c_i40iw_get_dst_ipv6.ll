; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_get_dst_ipv6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_get_dst_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.sockaddr_in6 = type { i32, i32 }
%struct.flowi6 = type { i32, i32, i32 }

@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dst_entry* (%struct.sockaddr_in6*, %struct.sockaddr_in6*)* @i40iw_get_dst_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dst_entry* @i40iw_get_dst_ipv6(%struct.sockaddr_in6* %0, %struct.sockaddr_in6* %1) #0 {
  %3 = alloca %struct.sockaddr_in6*, align 8
  %4 = alloca %struct.sockaddr_in6*, align 8
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.flowi6, align 4
  store %struct.sockaddr_in6* %0, %struct.sockaddr_in6** %3, align 8
  store %struct.sockaddr_in6* %1, %struct.sockaddr_in6** %4, align 8
  %7 = call i32 @memset(%struct.flowi6* %6, i32 0, i32 12)
  %8 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %9 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %6, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %3, align 8
  %13 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %6, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %6, i32 0, i32 1
  %17 = call i32 @ipv6_addr_type(i32* %16)
  %18 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %6, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %21, %2
  %27 = call %struct.dst_entry* @ip6_route_output(i32* @init_net, i32* null, %struct.flowi6* %6)
  store %struct.dst_entry* %27, %struct.dst_entry** %5, align 8
  %28 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  ret %struct.dst_entry* %28
}

declare dso_local i32 @memset(%struct.flowi6*, i32, i32) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local %struct.dst_entry* @ip6_route_output(i32*, i32*, %struct.flowi6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
