; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_rdma_update_sgid_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_rdma_update_sgid_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_ah_attr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ib_gid_attr* }
%struct.ib_gid_attr = type { i32 }

@IB_AH_GRH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_gid_attr* (%struct.rdma_ah_attr*, %struct.ib_gid_attr*)* @rdma_update_sgid_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_gid_attr* @rdma_update_sgid_attr(%struct.rdma_ah_attr* %0, %struct.ib_gid_attr* %1) #0 {
  %3 = alloca %struct.ib_gid_attr*, align 8
  %4 = alloca %struct.rdma_ah_attr*, align 8
  %5 = alloca %struct.ib_gid_attr*, align 8
  store %struct.rdma_ah_attr* %0, %struct.rdma_ah_attr** %4, align 8
  store %struct.ib_gid_attr* %1, %struct.ib_gid_attr** %5, align 8
  %6 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %7 = icmp ne %struct.ib_gid_attr* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %10 = call i32 @rdma_put_gid_attr(%struct.ib_gid_attr* %9)
  br label %11

11:                                               ; preds = %8, %2
  %12 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %13 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IB_AH_GRH, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %11
  %19 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %20 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %21, align 8
  %23 = call i32 @rdma_hold_gid_attr(%struct.ib_gid_attr* %22)
  %24 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %25 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %26, align 8
  store %struct.ib_gid_attr* %27, %struct.ib_gid_attr** %3, align 8
  br label %29

28:                                               ; preds = %11
  store %struct.ib_gid_attr* null, %struct.ib_gid_attr** %3, align 8
  br label %29

29:                                               ; preds = %28, %18
  %30 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %3, align 8
  ret %struct.ib_gid_attr* %30
}

declare dso_local i32 @rdma_put_gid_attr(%struct.ib_gid_attr*) #1

declare dso_local i32 @rdma_hold_gid_attr(%struct.ib_gid_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
