; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c___rdma_counter_unbind_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c___rdma_counter_unbind_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { %struct.TYPE_4__*, %struct.rdma_counter* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { {}* }
%struct.rdma_counter = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*)* @__rdma_counter_unbind_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rdma_counter_unbind_qp(%struct.ib_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_qp*, align 8
  %4 = alloca %struct.rdma_counter*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %3, align 8
  %6 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %7 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %6, i32 0, i32 1
  %8 = load %struct.rdma_counter*, %struct.rdma_counter** %7, align 8
  store %struct.rdma_counter* %8, %struct.rdma_counter** %4, align 8
  %9 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %10 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.ib_qp*)**
  %15 = load i32 (%struct.ib_qp*)*, i32 (%struct.ib_qp*)** %14, align 8
  %16 = icmp ne i32 (%struct.ib_qp*)* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %37

20:                                               ; preds = %1
  %21 = load %struct.rdma_counter*, %struct.rdma_counter** %4, align 8
  %22 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %25 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.ib_qp*)**
  %30 = load i32 (%struct.ib_qp*)*, i32 (%struct.ib_qp*)** %29, align 8
  %31 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %32 = call i32 %30(%struct.ib_qp* %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.rdma_counter*, %struct.rdma_counter** %4, align 8
  %34 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %20, %17
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
