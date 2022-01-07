; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_dealloc_xrcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_dealloc_xrcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_xrcd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_xrcd*, %struct.ib_udata*)* @mlx4_ib_dealloc_xrcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_dealloc_xrcd(%struct.ib_xrcd* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_xrcd*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  store %struct.ib_xrcd* %0, %struct.ib_xrcd** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %5 = load %struct.ib_xrcd*, %struct.ib_xrcd** %3, align 8
  %6 = call %struct.TYPE_3__* @to_mxrcd(%struct.ib_xrcd* %5)
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ib_destroy_cq(i32 %8)
  %10 = load %struct.ib_xrcd*, %struct.ib_xrcd** %3, align 8
  %11 = call %struct.TYPE_3__* @to_mxrcd(%struct.ib_xrcd* %10)
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ib_dealloc_pd(i32 %13)
  %15 = load %struct.ib_xrcd*, %struct.ib_xrcd** %3, align 8
  %16 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_4__* @to_mdev(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ib_xrcd*, %struct.ib_xrcd** %3, align 8
  %22 = call %struct.TYPE_3__* @to_mxrcd(%struct.ib_xrcd* %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mlx4_xrcd_free(i32 %20, i32 %24)
  %26 = load %struct.ib_xrcd*, %struct.ib_xrcd** %3, align 8
  %27 = call i32 @kfree(%struct.ib_xrcd* %26)
  ret i32 0
}

declare dso_local i32 @ib_destroy_cq(i32) #1

declare dso_local %struct.TYPE_3__* @to_mxrcd(%struct.ib_xrcd*) #1

declare dso_local i32 @ib_dealloc_pd(i32) #1

declare dso_local i32 @mlx4_xrcd_free(i32, i32) #1

declare dso_local %struct.TYPE_4__* @to_mdev(i32) #1

declare dso_local i32 @kfree(%struct.ib_xrcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
