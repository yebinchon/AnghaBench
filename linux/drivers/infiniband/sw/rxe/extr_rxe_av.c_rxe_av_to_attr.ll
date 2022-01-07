; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_av.c_rxe_av_to_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_av.c_rxe_av_to_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_av = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.ib_global_route = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@RDMA_AH_ATTR_TYPE_ROCE = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxe_av_to_attr(%struct.rxe_av* %0, %struct.rdma_ah_attr* %1) #0 {
  %3 = alloca %struct.rxe_av*, align 8
  %4 = alloca %struct.rdma_ah_attr*, align 8
  %5 = alloca %struct.ib_global_route*, align 8
  store %struct.rxe_av* %0, %struct.rxe_av** %3, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %4, align 8
  %6 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %7 = call %struct.ib_global_route* @rdma_ah_retrieve_grh(%struct.rdma_ah_attr* %6)
  store %struct.ib_global_route* %7, %struct.ib_global_route** %5, align 8
  %8 = load i32, i32* @RDMA_AH_ATTR_TYPE_ROCE, align 4
  %9 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %10 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.ib_global_route*, %struct.ib_global_route** %5, align 8
  %12 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rxe_av*, %struct.rxe_av** %3, align 8
  %16 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @memcpy(i32 %14, i32 %19, i32 4)
  %21 = load %struct.rxe_av*, %struct.rxe_av** %3, align 8
  %22 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ib_global_route*, %struct.ib_global_route** %5, align 8
  %26 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.rxe_av*, %struct.rxe_av** %3, align 8
  %28 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ib_global_route*, %struct.ib_global_route** %5, align 8
  %32 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.rxe_av*, %struct.rxe_av** %3, align 8
  %34 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ib_global_route*, %struct.ib_global_route** %5, align 8
  %38 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.rxe_av*, %struct.rxe_av** %3, align 8
  %40 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ib_global_route*, %struct.ib_global_route** %5, align 8
  %44 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %46 = load i32, i32* @IB_AH_GRH, align 4
  %47 = call i32 @rdma_ah_set_ah_flags(%struct.rdma_ah_attr* %45, i32 %46)
  %48 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %49 = load %struct.rxe_av*, %struct.rxe_av** %3, align 8
  %50 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr* %48, i32 %51)
  ret void
}

declare dso_local %struct.ib_global_route* @rdma_ah_retrieve_grh(%struct.rdma_ah_attr*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @rdma_ah_set_ah_flags(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
