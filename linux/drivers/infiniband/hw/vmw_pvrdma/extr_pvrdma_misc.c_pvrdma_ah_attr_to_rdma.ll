; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_misc.c_pvrdma_ah_attr_to_rdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_misc.c_pvrdma_ah_attr_to_rdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_ah_attr = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pvrdma_ah_attr = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@RDMA_AH_ATTR_TYPE_ROCE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvrdma_ah_attr_to_rdma(%struct.rdma_ah_attr* %0, %struct.pvrdma_ah_attr* %1) #0 {
  %3 = alloca %struct.rdma_ah_attr*, align 8
  %4 = alloca %struct.pvrdma_ah_attr*, align 8
  store %struct.rdma_ah_attr* %0, %struct.rdma_ah_attr** %3, align 8
  store %struct.pvrdma_ah_attr* %1, %struct.pvrdma_ah_attr** %4, align 8
  %5 = load i32, i32* @RDMA_AH_ATTR_TYPE_ROCE, align 4
  %6 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %3, align 8
  %7 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 4
  %8 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %3, align 8
  %9 = call i32 @rdma_ah_retrieve_grh(%struct.rdma_ah_attr* %8)
  %10 = load %struct.pvrdma_ah_attr*, %struct.pvrdma_ah_attr** %4, align 8
  %11 = getelementptr inbounds %struct.pvrdma_ah_attr, %struct.pvrdma_ah_attr* %10, i32 0, i32 7
  %12 = call i32 @pvrdma_global_route_to_ib(i32 %9, i32* %11)
  %13 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %3, align 8
  %14 = load %struct.pvrdma_ah_attr*, %struct.pvrdma_ah_attr** %4, align 8
  %15 = getelementptr inbounds %struct.pvrdma_ah_attr, %struct.pvrdma_ah_attr* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr* %13, i32 %16)
  %18 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %3, align 8
  %19 = load %struct.pvrdma_ah_attr*, %struct.pvrdma_ah_attr** %4, align 8
  %20 = getelementptr inbounds %struct.pvrdma_ah_attr, %struct.pvrdma_ah_attr* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @rdma_ah_set_sl(%struct.rdma_ah_attr* %18, i32 %21)
  %23 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %3, align 8
  %24 = load %struct.pvrdma_ah_attr*, %struct.pvrdma_ah_attr** %4, align 8
  %25 = getelementptr inbounds %struct.pvrdma_ah_attr, %struct.pvrdma_ah_attr* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rdma_ah_set_path_bits(%struct.rdma_ah_attr* %23, i32 %26)
  %28 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %3, align 8
  %29 = load %struct.pvrdma_ah_attr*, %struct.pvrdma_ah_attr** %4, align 8
  %30 = getelementptr inbounds %struct.pvrdma_ah_attr, %struct.pvrdma_ah_attr* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @rdma_ah_set_static_rate(%struct.rdma_ah_attr* %28, i32 %31)
  %33 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %3, align 8
  %34 = load %struct.pvrdma_ah_attr*, %struct.pvrdma_ah_attr** %4, align 8
  %35 = getelementptr inbounds %struct.pvrdma_ah_attr, %struct.pvrdma_ah_attr* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rdma_ah_set_ah_flags(%struct.rdma_ah_attr* %33, i32 %36)
  %38 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %3, align 8
  %39 = load %struct.pvrdma_ah_attr*, %struct.pvrdma_ah_attr** %4, align 8
  %40 = getelementptr inbounds %struct.pvrdma_ah_attr, %struct.pvrdma_ah_attr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr* %38, i32 %41)
  %43 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %3, align 8
  %44 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pvrdma_ah_attr*, %struct.pvrdma_ah_attr** %4, align 8
  %48 = getelementptr inbounds %struct.pvrdma_ah_attr, %struct.pvrdma_ah_attr* %47, i32 0, i32 0
  %49 = load i32, i32* @ETH_ALEN, align 4
  %50 = call i32 @memcpy(i32 %46, i32* %48, i32 %49)
  ret void
}

declare dso_local i32 @pvrdma_global_route_to_ib(i32, i32*) #1

declare dso_local i32 @rdma_ah_retrieve_grh(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_sl(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_path_bits(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_static_rate(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_ah_flags(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
