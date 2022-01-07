; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mlx4_ib.h_mlx4_ib_ah_grh_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mlx4_ib.h_mlx4_ib_ah_grh_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_ah = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@IB_LINK_LAYER_ETHERNET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_ah*)* @mlx4_ib_ah_grh_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_ah_grh_present(%struct.mlx4_ib_ah* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_ib_ah*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx4_ib_ah* %0, %struct.mlx4_ib_ah** %3, align 8
  %5 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %3, align 8
  %6 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @be32_to_cpu(i32 %9)
  %11 = ashr i32 %10, 24
  %12 = and i32 %11, 3
  store i32 %12, i32* %4, align 4
  %13 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %3, align 8
  %14 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @rdma_port_get_link_layer(i32 %16, i32 %17)
  %19 = load i64, i64* @IB_LINK_LAYER_ETHERNET, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %33

22:                                               ; preds = %1
  %23 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %3, align 8
  %24 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 128
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %22, %21
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @rdma_port_get_link_layer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
