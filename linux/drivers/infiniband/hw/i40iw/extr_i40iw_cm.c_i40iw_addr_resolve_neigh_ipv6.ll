; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_addr_resolve_neigh_ipv6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_addr_resolve_neigh_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { %struct.TYPE_6__*, i32, %struct.net_device* }
%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { i32 }
%struct.neighbour = type { i32, i32 }
%struct.dst_entry = type { i64 }
%struct.sockaddr_in6 = type { %struct.TYPE_5__, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@AF_INET6 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"ip6_route_output returned dst->error = %d\0A\00", align 1
@I40IW_DEBUG_CM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"dst_neigh_lookup MAC=%pM\0A\00", align 1
@NUD_VALID = common dso_local global i32 0, align 4
@I40IW_ARP_DELETE = common dso_local global i32 0, align 4
@I40IW_ARP_ADD = common dso_local global i32 0, align 4
@I40IW_ARP_RESOLVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*, i32*, i32*, i32)* @i40iw_addr_resolve_neigh_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_addr_resolve_neigh_ipv6(%struct.i40iw_device* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.neighbour*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.dst_entry*, align 8
  %14 = alloca %struct.sockaddr_in6, align 8
  %15 = alloca %struct.sockaddr_in6, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %18 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %17, i32 0, i32 2
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %12, align 8
  %20 = call i32 @memset(%struct.sockaddr_in6* %14, i32 0, i32 16)
  %21 = load i8*, i8** @AF_INET6, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @i40iw_copy_ip_htonl(i32 %26, i32* %27)
  %29 = call i32 @memset(%struct.sockaddr_in6* %15, i32 0, i32 16)
  %30 = load i8*, i8** @AF_INET6, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @i40iw_copy_ip_htonl(i32 %35, i32* %36)
  %38 = call %struct.dst_entry* @i40iw_get_dst_ipv6(%struct.sockaddr_in6* %15, %struct.sockaddr_in6* %14)
  store %struct.dst_entry* %38, %struct.dst_entry** %13, align 8
  %39 = load %struct.dst_entry*, %struct.dst_entry** %13, align 8
  %40 = icmp ne %struct.dst_entry* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %4
  %42 = load %struct.dst_entry*, %struct.dst_entry** %13, align 8
  %43 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %41, %4
  %47 = load %struct.dst_entry*, %struct.dst_entry** %13, align 8
  %48 = icmp ne %struct.dst_entry* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.dst_entry*, %struct.dst_entry** %13, align 8
  %51 = call i32 @dst_release(%struct.dst_entry* %50)
  %52 = load %struct.dst_entry*, %struct.dst_entry** %13, align 8
  %53 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %49, %46
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %148

58:                                               ; preds = %41
  %59 = load %struct.net_device*, %struct.net_device** %12, align 8
  %60 = call i64 @netif_is_bond_slave(%struct.net_device* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.net_device*, %struct.net_device** %12, align 8
  %64 = call %struct.net_device* @netdev_master_upper_dev_get(%struct.net_device* %63)
  store %struct.net_device* %64, %struct.net_device** %12, align 8
  br label %65

65:                                               ; preds = %62, %58
  %66 = load %struct.dst_entry*, %struct.dst_entry** %13, align 8
  %67 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.neighbour* @dst_neigh_lookup(%struct.dst_entry* %66, i32 %70)
  store %struct.neighbour* %71, %struct.neighbour** %10, align 8
  %72 = call i32 (...) @rcu_read_lock()
  %73 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %74 = icmp ne %struct.neighbour* %73, null
  br i1 %74, label %75, label %136

75:                                               ; preds = %65
  %76 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %77 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %76, i32 0, i32 1
  %78 = load i32, i32* @I40IW_DEBUG_CM, align 4
  %79 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %80 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @i40iw_debug(i32* %77, i32 %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %84 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NUD_VALID, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %132

89:                                               ; preds = %75
  %90 = load i32, i32* %9, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %120

92:                                               ; preds = %89
  %93 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %94 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %102 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @ether_addr_equal(i32 %100, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %92
  br label %137

107:                                              ; preds = %92
  %108 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %109 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %110 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %8, align 8
  %118 = load i32, i32* @I40IW_ARP_DELETE, align 4
  %119 = call i32 @i40iw_manage_arp_cache(%struct.i40iw_device* %108, i32 %116, i32* %117, i32 0, i32 %118)
  br label %120

120:                                              ; preds = %107, %89
  %121 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %122 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %123 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* @I40IW_ARP_ADD, align 4
  %127 = call i32 @i40iw_manage_arp_cache(%struct.i40iw_device* %121, i32 %124, i32* %125, i32 0, i32 %126)
  %128 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %129 = load i32*, i32** %8, align 8
  %130 = load i32, i32* @I40IW_ARP_RESOLVE, align 4
  %131 = call i32 @i40iw_arp_table(%struct.i40iw_device* %128, i32* %129, i32 0, i32* null, i32 %130)
  store i32 %131, i32* %11, align 4
  br label %135

132:                                              ; preds = %75
  %133 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %134 = call i32 @neigh_event_send(%struct.neighbour* %133, i32* null)
  br label %135

135:                                              ; preds = %132, %120
  br label %136

136:                                              ; preds = %135, %65
  br label %137

137:                                              ; preds = %136, %106
  %138 = call i32 (...) @rcu_read_unlock()
  %139 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %140 = icmp ne %struct.neighbour* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %143 = call i32 @neigh_release(%struct.neighbour* %142)
  br label %144

144:                                              ; preds = %141, %137
  %145 = load %struct.dst_entry*, %struct.dst_entry** %13, align 8
  %146 = call i32 @dst_release(%struct.dst_entry* %145)
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %144, %56
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i32 @i40iw_copy_ip_htonl(i32, i32*) #1

declare dso_local %struct.dst_entry* @i40iw_get_dst_ipv6(%struct.sockaddr_in6*, %struct.sockaddr_in6*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i32 @i40iw_pr_err(i8*, i64) #1

declare dso_local i64 @netif_is_bond_slave(%struct.net_device*) #1

declare dso_local %struct.net_device* @netdev_master_upper_dev_get(%struct.net_device*) #1

declare dso_local %struct.neighbour* @dst_neigh_lookup(%struct.dst_entry*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @i40iw_debug(i32*, i32, i8*, i32) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @i40iw_manage_arp_cache(%struct.i40iw_device*, i32, i32*, i32, i32) #1

declare dso_local i32 @i40iw_arp_table(%struct.i40iw_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @neigh_event_send(%struct.neighbour*, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
