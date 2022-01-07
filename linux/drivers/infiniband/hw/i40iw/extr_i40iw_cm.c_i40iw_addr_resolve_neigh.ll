; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_addr_resolve_neigh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_addr_resolve_neigh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.rtable = type { i32 }
%struct.neighbour = type { i32, i32 }

@init_net = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ip_route_output\0A\00", align 1
@NUD_VALID = common dso_local global i32 0, align 4
@I40IW_ARP_DELETE = common dso_local global i32 0, align 4
@I40IW_ARP_ADD = common dso_local global i32 0, align 4
@I40IW_ARP_RESOLVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*, i32, i32, i32)* @i40iw_addr_resolve_neigh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_addr_resolve_neigh(%struct.i40iw_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtable*, align 8
  %11 = alloca %struct.neighbour*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %18 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %17, i32 0, i32 1
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %13, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @htonl(i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @htonl(i32 %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %15, align 4
  %26 = call %struct.rtable* @ip_route_output(i32* @init_net, i32 %24, i32 %25, i32 0, i32 0)
  store %struct.rtable* %26, %struct.rtable** %10, align 8
  %27 = load %struct.rtable*, %struct.rtable** %10, align 8
  %28 = call i64 @IS_ERR(%struct.rtable* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %5, align 4
  br label %110

33:                                               ; preds = %4
  %34 = load %struct.net_device*, %struct.net_device** %13, align 8
  %35 = call i64 @netif_is_bond_slave(%struct.net_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.net_device*, %struct.net_device** %13, align 8
  %39 = call %struct.net_device* @netdev_master_upper_dev_get(%struct.net_device* %38)
  store %struct.net_device* %39, %struct.net_device** %13, align 8
  br label %40

40:                                               ; preds = %37, %33
  %41 = load %struct.rtable*, %struct.rtable** %10, align 8
  %42 = getelementptr inbounds %struct.rtable, %struct.rtable* %41, i32 0, i32 0
  %43 = call %struct.neighbour* @dst_neigh_lookup(i32* %42, i32* %14)
  store %struct.neighbour* %43, %struct.neighbour** %11, align 8
  %44 = call i32 (...) @rcu_read_lock()
  %45 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %46 = icmp ne %struct.neighbour* %45, null
  br i1 %46, label %47, label %98

47:                                               ; preds = %40
  %48 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %49 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @NUD_VALID, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %94

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %54
  %58 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %59 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %67 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @ether_addr_equal(i32 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  br label %99

72:                                               ; preds = %57
  %73 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %74 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %75 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @I40IW_ARP_DELETE, align 4
  %83 = call i32 @i40iw_manage_arp_cache(%struct.i40iw_device* %73, i32 %81, i32* %8, i32 1, i32 %82)
  br label %84

84:                                               ; preds = %72, %54
  %85 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %86 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %87 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @I40IW_ARP_ADD, align 4
  %90 = call i32 @i40iw_manage_arp_cache(%struct.i40iw_device* %85, i32 %88, i32* %8, i32 1, i32 %89)
  %91 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %92 = load i32, i32* @I40IW_ARP_RESOLVE, align 4
  %93 = call i32 @i40iw_arp_table(%struct.i40iw_device* %91, i32* %8, i32 1, i32* null, i32 %92)
  store i32 %93, i32* %12, align 4
  br label %97

94:                                               ; preds = %47
  %95 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %96 = call i32 @neigh_event_send(%struct.neighbour* %95, i32* null)
  br label %97

97:                                               ; preds = %94, %84
  br label %98

98:                                               ; preds = %97, %40
  br label %99

99:                                               ; preds = %98, %71
  %100 = call i32 (...) @rcu_read_unlock()
  %101 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %102 = icmp ne %struct.neighbour* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %105 = call i32 @neigh_release(%struct.neighbour* %104)
  br label %106

106:                                              ; preds = %103, %99
  %107 = load %struct.rtable*, %struct.rtable** %10, align 8
  %108 = call i32 @ip_rt_put(%struct.rtable* %107)
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %106, %30
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @htonl(i32) #1

declare dso_local %struct.rtable* @ip_route_output(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

declare dso_local i64 @netif_is_bond_slave(%struct.net_device*) #1

declare dso_local %struct.net_device* @netdev_master_upper_dev_get(%struct.net_device*) #1

declare dso_local %struct.neighbour* @dst_neigh_lookup(i32*, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @i40iw_manage_arp_cache(%struct.i40iw_device*, i32, i32*, i32, i32) #1

declare dso_local i32 @i40iw_arp_table(%struct.i40iw_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @neigh_event_send(%struct.neighbour*, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
