; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_av.c_rxe_av_fill_ip_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_av.c_rxe_av_fill_ip_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_av = type { i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ib_gid_attr* }
%struct.ib_gid_attr = type { i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxe_av_fill_ip_info(%struct.rxe_av* %0, %struct.rdma_ah_attr* %1) #0 {
  %3 = alloca %struct.rxe_av*, align 8
  %4 = alloca %struct.rdma_ah_attr*, align 8
  %5 = alloca %struct.ib_gid_attr*, align 8
  store %struct.rxe_av* %0, %struct.rxe_av** %3, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %4, align 8
  %6 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %7 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %8, align 8
  store %struct.ib_gid_attr* %9, %struct.ib_gid_attr** %5, align 8
  %10 = load %struct.rxe_av*, %struct.rxe_av** %3, align 8
  %11 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %10, i32 0, i32 2
  %12 = bitcast i32* %11 to %struct.sockaddr*
  %13 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %14 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %13, i32 0, i32 0
  %15 = call i32 @rdma_gid2ip(%struct.sockaddr* %12, i32* %14)
  %16 = load %struct.rxe_av*, %struct.rxe_av** %3, align 8
  %17 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %16, i32 0, i32 1
  %18 = bitcast i32* %17 to %struct.sockaddr*
  %19 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %20 = call %struct.TYPE_4__* @rdma_ah_read_grh(%struct.rdma_ah_attr* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @rdma_gid2ip(%struct.sockaddr* %18, i32* %21)
  %23 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %24 = call i32 @rdma_gid_attr_network_type(%struct.ib_gid_attr* %23)
  %25 = load %struct.rxe_av*, %struct.rxe_av** %3, align 8
  %26 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  ret void
}

declare dso_local i32 @rdma_gid2ip(%struct.sockaddr*, i32*) #1

declare dso_local %struct.TYPE_4__* @rdma_ah_read_grh(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_gid_attr_network_type(%struct.ib_gid_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
