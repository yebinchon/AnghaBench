; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_addr6_resolve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_addr6_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.neighbour = type { i32, i32 }
%struct.dst_entry = type { i64 }
%struct.flowi6 = type { i32, i32 }

@init_net = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ip6_route_output returned dst->error = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@QEDR_MSG_QP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"mac_addr=[%pM]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*, %struct.sockaddr_in6*, %struct.sockaddr_in6*, i32*)* @qedr_addr6_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_addr6_resolve(%struct.qedr_dev* %0, %struct.sockaddr_in6* %1, %struct.sockaddr_in6* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qedr_dev*, align 8
  %7 = alloca %struct.sockaddr_in6*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.neighbour*, align 8
  %11 = alloca %struct.dst_entry*, align 8
  %12 = alloca %struct.flowi6, align 4
  %13 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %6, align 8
  store %struct.sockaddr_in6* %1, %struct.sockaddr_in6** %7, align 8
  store %struct.sockaddr_in6* %2, %struct.sockaddr_in6** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.neighbour* null, %struct.neighbour** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = call i32 @memset(%struct.flowi6* %12, i32 0, i32 8)
  %15 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %16 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %12, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %12, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = call %struct.dst_entry* @ip6_route_output(i32* @init_net, i32* null, %struct.flowi6* %12)
  store %struct.dst_entry* %23, %struct.dst_entry** %11, align 8
  %24 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %25 = icmp ne %struct.dst_entry* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %28 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26, %4
  %32 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %33 = icmp ne %struct.dst_entry* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %36 = call i32 @dst_release(%struct.dst_entry* %35)
  %37 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %38 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %39 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @DP_ERR(%struct.qedr_dev* %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %34, %31
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %80

45:                                               ; preds = %26
  %46 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %47 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %12, i32 0, i32 0
  %48 = call %struct.neighbour* @dst_neigh_lookup(%struct.dst_entry* %46, i32* %47)
  store %struct.neighbour* %48, %struct.neighbour** %10, align 8
  %49 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %50 = icmp ne %struct.neighbour* %49, null
  br i1 %50, label %51, label %76

51:                                               ; preds = %45
  %52 = call i32 (...) @rcu_read_lock()
  %53 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %54 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NUD_VALID, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %51
  %60 = load i32*, i32** %9, align 8
  %61 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %62 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ether_addr_copy(i32* %60, i32 %63)
  %65 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %66 = load i32, i32* @QEDR_MSG_QP, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @DP_DEBUG(%struct.qedr_dev* %65, i32 %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %67)
  br label %72

69:                                               ; preds = %51
  %70 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %71 = call i32 @neigh_event_send(%struct.neighbour* %70, i32* null)
  br label %72

72:                                               ; preds = %69, %59
  %73 = call i32 (...) @rcu_read_unlock()
  %74 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %75 = call i32 @neigh_release(%struct.neighbour* %74)
  br label %76

76:                                               ; preds = %72, %45
  %77 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %78 = call i32 @dst_release(%struct.dst_entry* %77)
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %76, %42
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @memset(%struct.flowi6*, i32, i32) #1

declare dso_local %struct.dst_entry* @ip6_route_output(i32*, i32*, %struct.flowi6*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, i64) #1

declare dso_local %struct.neighbour* @dst_neigh_lookup(%struct.dst_entry*, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ether_addr_copy(i32*, i32) #1

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, i32*) #1

declare dso_local i32 @neigh_event_send(%struct.neighbour*, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
