; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mcg.c_send_join_to_wire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mcg.c_send_join_to_wire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcast_group = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32* }
%struct.ib_sa_mad = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ib_sa_mcmember_data = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ib_mad = type { i32 }

@MAD_TIMEOUT_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcast_group*, %struct.ib_sa_mad*)* @send_join_to_wire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_join_to_wire(%struct.mcast_group* %0, %struct.ib_sa_mad* %1) #0 {
  %3 = alloca %struct.mcast_group*, align 8
  %4 = alloca %struct.ib_sa_mad*, align 8
  %5 = alloca %struct.ib_sa_mad, align 4
  %6 = alloca %struct.ib_sa_mcmember_data*, align 8
  %7 = alloca i32, align 4
  store %struct.mcast_group* %0, %struct.mcast_group** %3, align 8
  store %struct.ib_sa_mad* %1, %struct.ib_sa_mad** %4, align 8
  %8 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %5, i32 0, i32 1
  %9 = bitcast i32* %8 to %struct.ib_sa_mcmember_data*
  store %struct.ib_sa_mcmember_data* %9, %struct.ib_sa_mcmember_data** %6, align 8
  %10 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %4, align 8
  %11 = call i32 @memcpy(%struct.ib_sa_mad* %5, %struct.ib_sa_mad* %10, i32 8)
  %12 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %13 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %6, align 8
  %20 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 4
  %23 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %24 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = call i32 @mlx4_ib_get_new_demux_tid(%struct.TYPE_9__* %25)
  %27 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %5, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %5, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %33 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %35 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = bitcast %struct.ib_sa_mad* %5 to %struct.ib_mad*
  %38 = call i32 @send_mad_to_wire(%struct.TYPE_9__* %36, %struct.ib_mad* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %2
  %42 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %43 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %48 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %47, i32 0, i32 0
  %49 = load i32, i32* @MAD_TIMEOUT_MS, align 4
  %50 = call i32 @msecs_to_jiffies(i32 %49)
  %51 = call i32 @queue_delayed_work(i32 %46, i32* %48, i32 %50)
  br label %52

52:                                               ; preds = %41, %2
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @memcpy(%struct.ib_sa_mad*, %struct.ib_sa_mad*, i32) #1

declare dso_local i32 @mlx4_ib_get_new_demux_tid(%struct.TYPE_9__*) #1

declare dso_local i32 @send_mad_to_wire(%struct.TYPE_9__*, %struct.ib_mad*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
