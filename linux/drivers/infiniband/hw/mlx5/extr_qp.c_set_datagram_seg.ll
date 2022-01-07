; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_set_datagram_seg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_set_datagram_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_wqe_datagram_seg = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_7__, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.ib_send_wr = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@MLX5_EXTENDED_UD_AV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_wqe_datagram_seg*, %struct.ib_send_wr*)* @set_datagram_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_datagram_seg(%struct.mlx5_wqe_datagram_seg* %0, %struct.ib_send_wr* %1) #0 {
  %3 = alloca %struct.mlx5_wqe_datagram_seg*, align 8
  %4 = alloca %struct.ib_send_wr*, align 8
  store %struct.mlx5_wqe_datagram_seg* %0, %struct.mlx5_wqe_datagram_seg** %3, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %4, align 8
  %5 = load %struct.mlx5_wqe_datagram_seg*, %struct.mlx5_wqe_datagram_seg** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5_wqe_datagram_seg, %struct.mlx5_wqe_datagram_seg* %5, i32 0, i32 0
  %7 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %8 = call %struct.TYPE_8__* @ud_wr(%struct.ib_send_wr* %7)
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_9__* @to_mah(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = call i32 @memcpy(%struct.TYPE_10__* %6, i32* %12, i32 4)
  %14 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %15 = call %struct.TYPE_8__* @ud_wr(%struct.ib_send_wr* %14)
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MLX5_EXTENDED_UD_AV, align 4
  %19 = or i32 %17, %18
  %20 = call i8* @cpu_to_be32(i32 %19)
  %21 = load %struct.mlx5_wqe_datagram_seg*, %struct.mlx5_wqe_datagram_seg** %3, align 8
  %22 = getelementptr inbounds %struct.mlx5_wqe_datagram_seg, %struct.mlx5_wqe_datagram_seg* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  store i8* %20, i8** %23, align 8
  %24 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %25 = call %struct.TYPE_8__* @ud_wr(%struct.ib_send_wr* %24)
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @cpu_to_be32(i32 %27)
  %29 = load %struct.mlx5_wqe_datagram_seg*, %struct.mlx5_wqe_datagram_seg** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5_wqe_datagram_seg, %struct.mlx5_wqe_datagram_seg* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i8* %28, i8** %33, align 8
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local %struct.TYPE_9__* @to_mah(i32) #1

declare dso_local %struct.TYPE_8__* @ud_wr(%struct.ib_send_wr*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
