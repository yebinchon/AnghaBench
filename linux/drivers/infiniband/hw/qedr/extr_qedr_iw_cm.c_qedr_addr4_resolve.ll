; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_addr4_resolve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_addr4_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.neighbour = type { i32, i32 }
%struct.rtable = type { i32 }

@init_net = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ip_route_output returned error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@QEDR_MSG_QP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"mac_addr=[%pM]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*, %struct.sockaddr_in*, %struct.sockaddr_in*, i32*)* @qedr_addr4_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_addr4_resolve(%struct.qedr_dev* %0, %struct.sockaddr_in* %1, %struct.sockaddr_in* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qedr_dev*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.neighbour*, align 8
  %13 = alloca %struct.rtable*, align 8
  %14 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %6, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %7, align 8
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  store %struct.neighbour* null, %struct.neighbour** %12, align 8
  store %struct.rtable* null, %struct.rtable** %13, align 8
  store i32 0, i32* %14, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call %struct.rtable* @ip_route_output(i32* @init_net, i32 %23, i32 %24, i32 0, i32 0)
  store %struct.rtable* %25, %struct.rtable** %13, align 8
  %26 = load %struct.rtable*, %struct.rtable** %13, align 8
  %27 = call i64 @IS_ERR(%struct.rtable* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %4
  %30 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %31 = call i32 @DP_ERR(%struct.qedr_dev* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %69

34:                                               ; preds = %4
  %35 = load %struct.rtable*, %struct.rtable** %13, align 8
  %36 = getelementptr inbounds %struct.rtable, %struct.rtable* %35, i32 0, i32 0
  %37 = call %struct.neighbour* @dst_neigh_lookup(i32* %36, i32* %11)
  store %struct.neighbour* %37, %struct.neighbour** %12, align 8
  %38 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %39 = icmp ne %struct.neighbour* %38, null
  br i1 %39, label %40, label %65

40:                                               ; preds = %34
  %41 = call i32 (...) @rcu_read_lock()
  %42 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %43 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NUD_VALID, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = load i32*, i32** %9, align 8
  %50 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %51 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ether_addr_copy(i32* %49, i32 %52)
  %54 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %55 = load i32, i32* @QEDR_MSG_QP, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @DP_DEBUG(%struct.qedr_dev* %54, i32 %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %56)
  br label %61

58:                                               ; preds = %40
  %59 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %60 = call i32 @neigh_event_send(%struct.neighbour* %59, i32* null)
  br label %61

61:                                               ; preds = %58, %48
  %62 = call i32 (...) @rcu_read_unlock()
  %63 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %64 = call i32 @neigh_release(%struct.neighbour* %63)
  br label %65

65:                                               ; preds = %61, %34
  %66 = load %struct.rtable*, %struct.rtable** %13, align 8
  %67 = call i32 @ip_rt_put(%struct.rtable* %66)
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %29
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.rtable* @ip_route_output(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*) #1

declare dso_local %struct.neighbour* @dst_neigh_lookup(i32*, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ether_addr_copy(i32*, i32) #1

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, i32*) #1

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
