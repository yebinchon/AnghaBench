; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_misc.c_rdma_ah_attr_to_pvrdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_misc.c_rdma_ah_attr_to_pvrdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvrdma_ah_attr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdma_ah_attr_to_pvrdma(%struct.pvrdma_ah_attr* %0, %struct.rdma_ah_attr* %1) #0 {
  %3 = alloca %struct.pvrdma_ah_attr*, align 8
  %4 = alloca %struct.rdma_ah_attr*, align 8
  store %struct.pvrdma_ah_attr* %0, %struct.pvrdma_ah_attr** %3, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %4, align 8
  %5 = load %struct.pvrdma_ah_attr*, %struct.pvrdma_ah_attr** %3, align 8
  %6 = getelementptr inbounds %struct.pvrdma_ah_attr, %struct.pvrdma_ah_attr* %5, i32 0, i32 7
  %7 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %8 = call i32 @rdma_ah_read_grh(%struct.rdma_ah_attr* %7)
  %9 = call i32 @ib_global_route_to_pvrdma(i32* %6, i32 %8)
  %10 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %11 = call i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %10)
  %12 = load %struct.pvrdma_ah_attr*, %struct.pvrdma_ah_attr** %3, align 8
  %13 = getelementptr inbounds %struct.pvrdma_ah_attr, %struct.pvrdma_ah_attr* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 4
  %14 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %15 = call i32 @rdma_ah_get_sl(%struct.rdma_ah_attr* %14)
  %16 = load %struct.pvrdma_ah_attr*, %struct.pvrdma_ah_attr** %3, align 8
  %17 = getelementptr inbounds %struct.pvrdma_ah_attr, %struct.pvrdma_ah_attr* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %19 = call i32 @rdma_ah_get_path_bits(%struct.rdma_ah_attr* %18)
  %20 = load %struct.pvrdma_ah_attr*, %struct.pvrdma_ah_attr** %3, align 8
  %21 = getelementptr inbounds %struct.pvrdma_ah_attr, %struct.pvrdma_ah_attr* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %23 = call i32 @rdma_ah_get_static_rate(%struct.rdma_ah_attr* %22)
  %24 = load %struct.pvrdma_ah_attr*, %struct.pvrdma_ah_attr** %3, align 8
  %25 = getelementptr inbounds %struct.pvrdma_ah_attr, %struct.pvrdma_ah_attr* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %27 = call i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr* %26)
  %28 = load %struct.pvrdma_ah_attr*, %struct.pvrdma_ah_attr** %3, align 8
  %29 = getelementptr inbounds %struct.pvrdma_ah_attr, %struct.pvrdma_ah_attr* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %31 = call i32 @rdma_ah_get_port_num(%struct.rdma_ah_attr* %30)
  %32 = load %struct.pvrdma_ah_attr*, %struct.pvrdma_ah_attr** %3, align 8
  %33 = getelementptr inbounds %struct.pvrdma_ah_attr, %struct.pvrdma_ah_attr* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.pvrdma_ah_attr*, %struct.pvrdma_ah_attr** %3, align 8
  %35 = getelementptr inbounds %struct.pvrdma_ah_attr, %struct.pvrdma_ah_attr* %34, i32 0, i32 0
  %36 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %37 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @memcpy(i32* %35, i32 %39, i32 4)
  ret void
}

declare dso_local i32 @ib_global_route_to_pvrdma(i32*, i32) #1

declare dso_local i32 @rdma_ah_read_grh(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_ah_get_sl(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_ah_get_path_bits(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_ah_get_static_rate(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_ah_get_port_num(%struct.rdma_ah_attr*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
