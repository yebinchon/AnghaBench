; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_pernet_xa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_pernet_xa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xarray = type { i32 }
%struct.net = type { i32 }
%struct.cma_pernet = type { %struct.xarray, %struct.xarray, %struct.xarray, %struct.xarray }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xarray* (%struct.net*, i32)* @cma_pernet_xa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xarray* @cma_pernet_xa(%struct.net* %0, i32 %1) #0 {
  %3 = alloca %struct.xarray*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cma_pernet*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net*, %struct.net** %4, align 8
  %8 = call %struct.cma_pernet* @cma_pernet(%struct.net* %7)
  store %struct.cma_pernet* %8, %struct.cma_pernet** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %22 [
    i32 129, label %10
    i32 128, label %13
    i32 130, label %16
    i32 131, label %19
  ]

10:                                               ; preds = %2
  %11 = load %struct.cma_pernet*, %struct.cma_pernet** %6, align 8
  %12 = getelementptr inbounds %struct.cma_pernet, %struct.cma_pernet* %11, i32 0, i32 3
  store %struct.xarray* %12, %struct.xarray** %3, align 8
  br label %23

13:                                               ; preds = %2
  %14 = load %struct.cma_pernet*, %struct.cma_pernet** %6, align 8
  %15 = getelementptr inbounds %struct.cma_pernet, %struct.cma_pernet* %14, i32 0, i32 2
  store %struct.xarray* %15, %struct.xarray** %3, align 8
  br label %23

16:                                               ; preds = %2
  %17 = load %struct.cma_pernet*, %struct.cma_pernet** %6, align 8
  %18 = getelementptr inbounds %struct.cma_pernet, %struct.cma_pernet* %17, i32 0, i32 1
  store %struct.xarray* %18, %struct.xarray** %3, align 8
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.cma_pernet*, %struct.cma_pernet** %6, align 8
  %21 = getelementptr inbounds %struct.cma_pernet, %struct.cma_pernet* %20, i32 0, i32 0
  store %struct.xarray* %21, %struct.xarray** %3, align 8
  br label %23

22:                                               ; preds = %2
  store %struct.xarray* null, %struct.xarray** %3, align 8
  br label %23

23:                                               ; preds = %22, %19, %16, %13, %10
  %24 = load %struct.xarray*, %struct.xarray** %3, align 8
  ret %struct.xarray* %24
}

declare dso_local %struct.cma_pernet* @cma_pernet(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
