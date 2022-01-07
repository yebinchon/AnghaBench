; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_flow_is_multicast_only.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_flow_is_multicast_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_flow_attr = type { i64, i32 }
%union.ib_flow_spec = type { i64 }
%struct.ib_flow_spec_ipv4 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ib_flow_spec_eth = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@IB_FLOW_ATTR_NORMAL = common dso_local global i64 0, align 8
@IB_FLOW_SPEC_IPV4 = common dso_local global i64 0, align 8
@IB_FLOW_SPEC_ETH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_flow_attr*)* @flow_is_multicast_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_is_multicast_only(%struct.ib_flow_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_flow_attr*, align 8
  %4 = alloca %union.ib_flow_spec*, align 8
  %5 = alloca %struct.ib_flow_spec_ipv4*, align 8
  %6 = alloca %struct.ib_flow_spec_eth*, align 8
  store %struct.ib_flow_attr* %0, %struct.ib_flow_attr** %3, align 8
  %7 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %3, align 8
  %8 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IB_FLOW_ATTR_NORMAL, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %3, align 8
  %14 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %64

18:                                               ; preds = %12
  %19 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %3, align 8
  %20 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %19, i64 1
  %21 = bitcast %struct.ib_flow_attr* %20 to %union.ib_flow_spec*
  store %union.ib_flow_spec* %21, %union.ib_flow_spec** %4, align 8
  %22 = load %union.ib_flow_spec*, %union.ib_flow_spec** %4, align 8
  %23 = bitcast %union.ib_flow_spec* %22 to i64*
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IB_FLOW_SPEC_IPV4, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %18
  %28 = load %union.ib_flow_spec*, %union.ib_flow_spec** %4, align 8
  %29 = bitcast %union.ib_flow_spec* %28 to %struct.ib_flow_spec_ipv4*
  store %struct.ib_flow_spec_ipv4* %29, %struct.ib_flow_spec_ipv4** %5, align 8
  %30 = load %struct.ib_flow_spec_ipv4*, %struct.ib_flow_spec_ipv4** %5, align 8
  %31 = getelementptr inbounds %struct.ib_flow_spec_ipv4, %struct.ib_flow_spec_ipv4* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @ipv4_is_multicast(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %64

37:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %64

38:                                               ; preds = %18
  %39 = load %union.ib_flow_spec*, %union.ib_flow_spec** %4, align 8
  %40 = bitcast %union.ib_flow_spec* %39 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IB_FLOW_SPEC_ETH, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %38
  %45 = load %union.ib_flow_spec*, %union.ib_flow_spec** %4, align 8
  %46 = bitcast %union.ib_flow_spec* %45 to %struct.ib_flow_spec_eth*
  store %struct.ib_flow_spec_eth* %46, %struct.ib_flow_spec_eth** %6, align 8
  %47 = load %struct.ib_flow_spec_eth*, %struct.ib_flow_spec_eth** %6, align 8
  %48 = getelementptr inbounds %struct.ib_flow_spec_eth, %struct.ib_flow_spec_eth* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @is_multicast_ether_addr(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load %struct.ib_flow_spec_eth*, %struct.ib_flow_spec_eth** %6, align 8
  %55 = getelementptr inbounds %struct.ib_flow_spec_eth, %struct.ib_flow_spec_eth* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @is_multicast_ether_addr(i32 %57)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %53, %44
  %61 = phi i1 [ false, %44 ], [ %59, %53 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %2, align 4
  br label %64

63:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %60, %37, %36, %17
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @ipv4_is_multicast(i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
