; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_rdma_move_grh_sgid_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_rdma_move_grh_sgid_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_ah_attr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ib_gid_attr* }
%union.ib_gid = type { i32 }
%struct.ib_gid_attr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdma_move_grh_sgid_attr(%struct.rdma_ah_attr* %0, %union.ib_gid* %1, i32 %2, i32 %3, i32 %4, %struct.ib_gid_attr* %5) #0 {
  %7 = alloca %struct.rdma_ah_attr*, align 8
  %8 = alloca %union.ib_gid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_gid_attr*, align 8
  store %struct.rdma_ah_attr* %0, %struct.rdma_ah_attr** %7, align 8
  store %union.ib_gid* %1, %union.ib_gid** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.ib_gid_attr* %5, %struct.ib_gid_attr** %12, align 8
  %13 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %14 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %12, align 8
  %17 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @rdma_ah_set_grh(%struct.rdma_ah_attr* %13, %union.ib_gid* %14, i32 %15, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %12, align 8
  %23 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %24 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.ib_gid_attr* %22, %struct.ib_gid_attr** %25, align 8
  ret void
}

declare dso_local i32 @rdma_ah_set_grh(%struct.rdma_ah_attr*, %union.ib_gid*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
