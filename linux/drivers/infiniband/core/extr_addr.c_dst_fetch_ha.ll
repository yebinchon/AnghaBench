; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_addr.c_dst_fetch_ha.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_addr.c_dst_fetch_ha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.rdma_dev_addr = type { i32 }
%struct.neighbour = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_entry*, %struct.rdma_dev_addr*, i8*)* @dst_fetch_ha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_fetch_ha(%struct.dst_entry* %0, %struct.rdma_dev_addr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.rdma_dev_addr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.neighbour*, align 8
  %9 = alloca i32, align 4
  store %struct.dst_entry* %0, %struct.dst_entry** %5, align 8
  store %struct.rdma_dev_addr* %1, %struct.rdma_dev_addr** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call %struct.neighbour* @dst_neigh_lookup(%struct.dst_entry* %10, i8* %11)
  store %struct.neighbour* %12, %struct.neighbour** %8, align 8
  %13 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %14 = icmp ne %struct.neighbour* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODATA, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %43

18:                                               ; preds = %3
  %19 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %20 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NUD_VALID, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %27 = call i32 @neigh_event_send(%struct.neighbour* %26, i32* null)
  %28 = load i32, i32* @ENODATA, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %39

30:                                               ; preds = %18
  %31 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %6, align 8
  %32 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %35 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %36 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @neigh_ha_snapshot(i32 %33, %struct.neighbour* %34, i32 %37)
  br label %39

39:                                               ; preds = %30, %25
  %40 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %41 = call i32 @neigh_release(%struct.neighbour* %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %15
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.neighbour* @dst_neigh_lookup(%struct.dst_entry*, i8*) #1

declare dso_local i32 @neigh_event_send(%struct.neighbour*, i32*) #1

declare dso_local i32 @neigh_ha_snapshot(i32, %struct.neighbour*, i32) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
