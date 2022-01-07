; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_get_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_get_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i32 }

@AF_IB = common dso_local global i64 0, align 8
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*)* @cma_get_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_get_port(%struct.rdma_id_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdma_id_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %3, align 8
  %6 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %7 = call i64 @cma_family(%struct.rdma_id_private* %6)
  %8 = load i64, i64* @AF_IB, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %12 = call i32 @cma_select_inet_ps(%struct.rdma_id_private* %11)
  store i32 %12, i32* %4, align 4
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %15 = call i32 @cma_select_ib_ps(%struct.rdma_id_private* %14)
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @EPROTONOSUPPORT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %39

22:                                               ; preds = %16
  %23 = call i32 @mutex_lock(i32* @lock)
  %24 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %25 = call i32 @cma_src_addr(%struct.rdma_id_private* %24)
  %26 = call i64 @cma_any_port(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %31 = call i32 @cma_alloc_any_port(i32 %29, %struct.rdma_id_private* %30)
  store i32 %31, i32* %5, align 4
  br label %36

32:                                               ; preds = %22
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %35 = call i32 @cma_use_port(i32 %33, %struct.rdma_id_private* %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = call i32 @mutex_unlock(i32* @lock)
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %19
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @cma_family(%struct.rdma_id_private*) #1

declare dso_local i32 @cma_select_inet_ps(%struct.rdma_id_private*) #1

declare dso_local i32 @cma_select_ib_ps(%struct.rdma_id_private*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @cma_any_port(i32) #1

declare dso_local i32 @cma_src_addr(%struct.rdma_id_private*) #1

declare dso_local i32 @cma_alloc_any_port(i32, %struct.rdma_id_private*) #1

declare dso_local i32 @cma_use_port(i32, %struct.rdma_id_private*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
