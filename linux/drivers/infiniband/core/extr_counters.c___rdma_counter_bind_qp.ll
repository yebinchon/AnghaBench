; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c___rdma_counter_bind_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c___rdma_counter_bind_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_counter = type { i32 }
%struct.ib_qp = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { {}* }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_counter*, %struct.ib_qp*)* @__rdma_counter_bind_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rdma_counter_bind_qp(%struct.rdma_counter* %0, %struct.ib_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_counter*, align 8
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca i32, align 4
  store %struct.rdma_counter* %0, %struct.rdma_counter** %4, align 8
  store %struct.ib_qp* %1, %struct.ib_qp** %5, align 8
  %7 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %8 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %44

14:                                               ; preds = %2
  %15 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %16 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.rdma_counter*, %struct.ib_qp*)**
  %21 = load i32 (%struct.rdma_counter*, %struct.ib_qp*)*, i32 (%struct.rdma_counter*, %struct.ib_qp*)** %20, align 8
  %22 = icmp ne i32 (%struct.rdma_counter*, %struct.ib_qp*)* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %44

26:                                               ; preds = %14
  %27 = load %struct.rdma_counter*, %struct.rdma_counter** %4, align 8
  %28 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %31 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i32 (%struct.rdma_counter*, %struct.ib_qp*)**
  %36 = load i32 (%struct.rdma_counter*, %struct.ib_qp*)*, i32 (%struct.rdma_counter*, %struct.ib_qp*)** %35, align 8
  %37 = load %struct.rdma_counter*, %struct.rdma_counter** %4, align 8
  %38 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %39 = call i32 %36(%struct.rdma_counter* %37, %struct.ib_qp* %38)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.rdma_counter*, %struct.rdma_counter** %4, align 8
  %41 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %26, %23, %11
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
