; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_ah_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_ah_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32, i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mthca_ah = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_ah*, %struct.rdma_ah_attr*, i32, %struct.ib_udata*)* @mthca_ah_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_ah_create(%struct.ib_ah* %0, %struct.rdma_ah_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca %struct.ib_ah*, align 8
  %6 = alloca %struct.rdma_ah_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_udata*, align 8
  %9 = alloca %struct.mthca_ah*, align 8
  store %struct.ib_ah* %0, %struct.ib_ah** %5, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %8, align 8
  %10 = load %struct.ib_ah*, %struct.ib_ah** %5, align 8
  %11 = call %struct.mthca_ah* @to_mah(%struct.ib_ah* %10)
  store %struct.mthca_ah* %11, %struct.mthca_ah** %9, align 8
  %12 = load %struct.ib_ah*, %struct.ib_ah** %5, align 8
  %13 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @to_mdev(i32 %14)
  %16 = load %struct.ib_ah*, %struct.ib_ah** %5, align 8
  %17 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @to_mpd(i32 %18)
  %20 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %21 = load %struct.mthca_ah*, %struct.mthca_ah** %9, align 8
  %22 = call i32 @mthca_create_ah(i32 %15, i32 %19, %struct.rdma_ah_attr* %20, %struct.mthca_ah* %21)
  ret i32 %22
}

declare dso_local %struct.mthca_ah* @to_mah(%struct.ib_ah*) #1

declare dso_local i32 @mthca_create_ah(i32, i32, %struct.rdma_ah_attr*, %struct.mthca_ah*) #1

declare dso_local i32 @to_mdev(i32) #1

declare dso_local i32 @to_mpd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
