; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_av.c_rxe_av_from_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_av.c_rxe_av_from_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_av = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.ib_global_route = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxe_av_from_attr(i32 %0, %struct.rxe_av* %1, %struct.rdma_ah_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxe_av*, align 8
  %6 = alloca %struct.rdma_ah_attr*, align 8
  %7 = alloca %struct.ib_global_route*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.rxe_av* %1, %struct.rxe_av** %5, align 8
  store %struct.rdma_ah_attr* %2, %struct.rdma_ah_attr** %6, align 8
  %8 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %9 = call %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr* %8)
  store %struct.ib_global_route* %9, %struct.ib_global_route** %7, align 8
  %10 = load %struct.rxe_av*, %struct.rxe_av** %5, align 8
  %11 = call i32 @memset(%struct.rxe_av* %10, i32 0, i32 24)
  %12 = load %struct.rxe_av*, %struct.rxe_av** %5, align 8
  %13 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ib_global_route*, %struct.ib_global_route** %7, align 8
  %18 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @memcpy(i32 %16, i32 %20, i32 4)
  %22 = load %struct.ib_global_route*, %struct.ib_global_route** %7, align 8
  %23 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rxe_av*, %struct.rxe_av** %5, align 8
  %26 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 4
  %28 = load %struct.ib_global_route*, %struct.ib_global_route** %7, align 8
  %29 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rxe_av*, %struct.rxe_av** %5, align 8
  %32 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 4
  %34 = load %struct.ib_global_route*, %struct.ib_global_route** %7, align 8
  %35 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rxe_av*, %struct.rxe_av** %5, align 8
  %38 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load %struct.ib_global_route*, %struct.ib_global_route** %7, align 8
  %41 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rxe_av*, %struct.rxe_av** %5, align 8
  %44 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.rxe_av*, %struct.rxe_av** %5, align 8
  %48 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  ret void
}

declare dso_local %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr*) #1

declare dso_local i32 @memset(%struct.rxe_av*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
