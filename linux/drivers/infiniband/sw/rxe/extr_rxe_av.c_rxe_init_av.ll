; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_av.c_rxe_init_av.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_av.c_rxe_init_av.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_ah_attr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rxe_av = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxe_init_av(%struct.rdma_ah_attr* %0, %struct.rxe_av* %1) #0 {
  %3 = alloca %struct.rdma_ah_attr*, align 8
  %4 = alloca %struct.rxe_av*, align 8
  store %struct.rdma_ah_attr* %0, %struct.rdma_ah_attr** %3, align 8
  store %struct.rxe_av* %1, %struct.rxe_av** %4, align 8
  %5 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %3, align 8
  %6 = call i32 @rdma_ah_get_port_num(%struct.rdma_ah_attr* %5)
  %7 = load %struct.rxe_av*, %struct.rxe_av** %4, align 8
  %8 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %3, align 8
  %9 = call i32 @rxe_av_from_attr(i32 %6, %struct.rxe_av* %7, %struct.rdma_ah_attr* %8)
  %10 = load %struct.rxe_av*, %struct.rxe_av** %4, align 8
  %11 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %3, align 8
  %12 = call i32 @rxe_av_fill_ip_info(%struct.rxe_av* %10, %struct.rdma_ah_attr* %11)
  %13 = load %struct.rxe_av*, %struct.rxe_av** %4, align 8
  %14 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %3, align 8
  %17 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = call i32 @memcpy(i32 %15, i32 %19, i32 %20)
  ret void
}

declare dso_local i32 @rxe_av_from_attr(i32, %struct.rxe_av*, %struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_ah_get_port_num(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rxe_av_fill_ip_info(%struct.rxe_av*, %struct.rdma_ah_attr*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
