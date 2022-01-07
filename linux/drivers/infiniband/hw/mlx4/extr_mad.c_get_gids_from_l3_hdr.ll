; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_get_gids_from_l3_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_get_gids_from_l3_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_grh = type { i32 }
%union.ib_gid = type { i32 }
%union.rdma_network_hdr = type { i32 }

@RDMA_NETWORK_IPV4 = common dso_local global i32 0, align 4
@RDMA_NETWORK_IPV6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_grh*, %union.ib_gid*, %union.ib_gid*)* @get_gids_from_l3_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_gids_from_l3_hdr(%struct.ib_grh* %0, %union.ib_gid* %1, %union.ib_gid* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_grh*, align 8
  %6 = alloca %union.ib_gid*, align 8
  %7 = alloca %union.ib_gid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ib_grh* %0, %struct.ib_grh** %5, align 8
  store %union.ib_gid* %1, %union.ib_gid** %6, align 8
  store %union.ib_gid* %2, %union.ib_gid** %7, align 8
  %10 = load %struct.ib_grh*, %struct.ib_grh** %5, align 8
  %11 = bitcast %struct.ib_grh* %10 to %union.rdma_network_hdr*
  %12 = call i32 @ib_get_rdma_header_version(%union.rdma_network_hdr* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @RDMA_NETWORK_IPV4, align 4
  store i32 %16, i32* %9, align 4
  br label %26

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 6
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @RDMA_NETWORK_IPV6, align 4
  store i32 %21, i32* %9, align 4
  br label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %33

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %15
  %27 = load %struct.ib_grh*, %struct.ib_grh** %5, align 8
  %28 = bitcast %struct.ib_grh* %27 to %union.rdma_network_hdr*
  %29 = load i32, i32* %9, align 4
  %30 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %31 = load %union.ib_gid*, %union.ib_gid** %7, align 8
  %32 = call i32 @ib_get_gids_from_rdma_hdr(%union.rdma_network_hdr* %28, i32 %29, %union.ib_gid* %30, %union.ib_gid* %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %26, %22
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @ib_get_rdma_header_version(%union.rdma_network_hdr*) #1

declare dso_local i32 @ib_get_gids_from_rdma_hdr(%union.rdma_network_hdr*, i32, %union.ib_gid*, %union.ib_gid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
