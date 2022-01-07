; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_misc.c_ib_global_route_to_pvrdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_misc.c_ib_global_route_to_pvrdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvrdma_global_route = type { i32, i32, i32, i32, i32 }
%struct.ib_global_route = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_global_route_to_pvrdma(%struct.pvrdma_global_route* %0, %struct.ib_global_route* %1) #0 {
  %3 = alloca %struct.pvrdma_global_route*, align 8
  %4 = alloca %struct.ib_global_route*, align 8
  store %struct.pvrdma_global_route* %0, %struct.pvrdma_global_route** %3, align 8
  store %struct.ib_global_route* %1, %struct.ib_global_route** %4, align 8
  %5 = load %struct.pvrdma_global_route*, %struct.pvrdma_global_route** %3, align 8
  %6 = getelementptr inbounds %struct.pvrdma_global_route, %struct.pvrdma_global_route* %5, i32 0, i32 4
  %7 = load %struct.ib_global_route*, %struct.ib_global_route** %4, align 8
  %8 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %7, i32 0, i32 4
  %9 = call i32 @ib_gid_to_pvrdma(i32* %6, i32* %8)
  %10 = load %struct.ib_global_route*, %struct.ib_global_route** %4, align 8
  %11 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.pvrdma_global_route*, %struct.pvrdma_global_route** %3, align 8
  %14 = getelementptr inbounds %struct.pvrdma_global_route, %struct.pvrdma_global_route* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ib_global_route*, %struct.ib_global_route** %4, align 8
  %16 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pvrdma_global_route*, %struct.pvrdma_global_route** %3, align 8
  %19 = getelementptr inbounds %struct.pvrdma_global_route, %struct.pvrdma_global_route* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ib_global_route*, %struct.ib_global_route** %4, align 8
  %21 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pvrdma_global_route*, %struct.pvrdma_global_route** %3, align 8
  %24 = getelementptr inbounds %struct.pvrdma_global_route, %struct.pvrdma_global_route* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ib_global_route*, %struct.ib_global_route** %4, align 8
  %26 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pvrdma_global_route*, %struct.pvrdma_global_route** %3, align 8
  %29 = getelementptr inbounds %struct.pvrdma_global_route, %struct.pvrdma_global_route* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  ret void
}

declare dso_local i32 @ib_gid_to_pvrdma(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
