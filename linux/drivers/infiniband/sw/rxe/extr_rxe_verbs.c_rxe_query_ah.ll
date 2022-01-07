; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_query_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_query_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.rxe_ah = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_ah*, %struct.rdma_ah_attr*)* @rxe_query_ah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_query_ah(%struct.ib_ah* %0, %struct.rdma_ah_attr* %1) #0 {
  %3 = alloca %struct.ib_ah*, align 8
  %4 = alloca %struct.rdma_ah_attr*, align 8
  %5 = alloca %struct.rxe_ah*, align 8
  store %struct.ib_ah* %0, %struct.ib_ah** %3, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %4, align 8
  %6 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %7 = call %struct.rxe_ah* @to_rah(%struct.ib_ah* %6)
  store %struct.rxe_ah* %7, %struct.rxe_ah** %5, align 8
  %8 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %9 = call i32 @memset(%struct.rdma_ah_attr* %8, i32 0, i32 4)
  %10 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %11 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %14 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.rxe_ah*, %struct.rxe_ah** %5, align 8
  %16 = getelementptr inbounds %struct.rxe_ah, %struct.rxe_ah* %15, i32 0, i32 0
  %17 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %18 = call i32 @rxe_av_to_attr(i32* %16, %struct.rdma_ah_attr* %17)
  ret i32 0
}

declare dso_local %struct.rxe_ah* @to_rah(%struct.ib_ah*) #1

declare dso_local i32 @memset(%struct.rdma_ah_attr*, i32, i32) #1

declare dso_local i32 @rxe_av_to_attr(i32*, %struct.rdma_ah_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
