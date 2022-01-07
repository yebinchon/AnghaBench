; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_resolve_ib_route.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_resolve_ib_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rdma_route }
%struct.rdma_route = type { %struct.cma_work* }
%struct.cma_work = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, i64)* @cma_resolve_ib_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_resolve_ib_route(%struct.rdma_id_private* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rdma_route*, align 8
  %7 = alloca %struct.cma_work*, align 8
  %8 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %10 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.rdma_route* %11, %struct.rdma_route** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.cma_work* @kzalloc(i32 4, i32 %12)
  store %struct.cma_work* %13, %struct.cma_work** %7, align 8
  %14 = load %struct.cma_work*, %struct.cma_work** %7, align 8
  %15 = icmp ne %struct.cma_work* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %54

19:                                               ; preds = %2
  %20 = load %struct.cma_work*, %struct.cma_work** %7, align 8
  %21 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %22 = call i32 @cma_init_resolve_route_work(%struct.cma_work* %20, %struct.rdma_id_private* %21)
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.cma_work* @kmalloc(i32 4, i32 %23)
  %25 = load %struct.rdma_route*, %struct.rdma_route** %6, align 8
  %26 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %25, i32 0, i32 0
  store %struct.cma_work* %24, %struct.cma_work** %26, align 8
  %27 = load %struct.rdma_route*, %struct.rdma_route** %6, align 8
  %28 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %27, i32 0, i32 0
  %29 = load %struct.cma_work*, %struct.cma_work** %28, align 8
  %30 = icmp ne %struct.cma_work* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %50

34:                                               ; preds = %19
  %35 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.cma_work*, %struct.cma_work** %7, align 8
  %38 = call i32 @cma_query_ib_route(%struct.rdma_id_private* %35, i64 %36, %struct.cma_work* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %43

42:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %54

43:                                               ; preds = %41
  %44 = load %struct.rdma_route*, %struct.rdma_route** %6, align 8
  %45 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %44, i32 0, i32 0
  %46 = load %struct.cma_work*, %struct.cma_work** %45, align 8
  %47 = call i32 @kfree(%struct.cma_work* %46)
  %48 = load %struct.rdma_route*, %struct.rdma_route** %6, align 8
  %49 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %48, i32 0, i32 0
  store %struct.cma_work* null, %struct.cma_work** %49, align 8
  br label %50

50:                                               ; preds = %43, %31
  %51 = load %struct.cma_work*, %struct.cma_work** %7, align 8
  %52 = call i32 @kfree(%struct.cma_work* %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %42, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.cma_work* @kzalloc(i32, i32) #1

declare dso_local i32 @cma_init_resolve_route_work(%struct.cma_work*, %struct.rdma_id_private*) #1

declare dso_local %struct.cma_work* @kmalloc(i32, i32) #1

declare dso_local i32 @cma_query_ib_route(%struct.rdma_id_private*, i64, %struct.cma_work*) #1

declare dso_local i32 @kfree(%struct.cma_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
