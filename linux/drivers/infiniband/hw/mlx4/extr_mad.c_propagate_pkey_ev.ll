; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_propagate_pkey_ev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_propagate_pkey_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_eqe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_dev*, i32, %struct.mlx4_eqe*)* @propagate_pkey_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @propagate_pkey_ev(%struct.mlx4_ib_dev* %0, i32 %1, %struct.mlx4_eqe* %2) #0 {
  %4 = alloca %struct.mlx4_ib_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_eqe*, align 8
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mlx4_eqe* %2, %struct.mlx4_eqe** %6, align 8
  %7 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %6, align 8
  %10 = call i32 @GET_BLK_PTR_FROM_EQE(%struct.mlx4_eqe* %9)
  %11 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %6, align 8
  %12 = call i32 @GET_MASK_FROM_EQE(%struct.mlx4_eqe* %11)
  %13 = call i32 @__propagate_pkey_ev(%struct.mlx4_ib_dev* %7, i32 %8, i32 %10, i32 %12)
  ret void
}

declare dso_local i32 @__propagate_pkey_ev(%struct.mlx4_ib_dev*, i32, i32, i32) #1

declare dso_local i32 @GET_BLK_PTR_FROM_EQE(%struct.mlx4_eqe*) #1

declare dso_local i32 @GET_MASK_FROM_EQE(%struct.mlx4_eqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
