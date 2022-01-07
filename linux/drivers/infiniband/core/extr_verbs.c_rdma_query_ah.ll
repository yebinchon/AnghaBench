; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_rdma_query_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_rdma_query_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { {}* }
%struct.rdma_ah_attr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_query_ah(%struct.ib_ah* %0, %struct.rdma_ah_attr* %1) #0 {
  %3 = alloca %struct.ib_ah*, align 8
  %4 = alloca %struct.rdma_ah_attr*, align 8
  store %struct.ib_ah* %0, %struct.ib_ah** %3, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %4, align 8
  %5 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %6 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32* null, i32** %7, align 8
  %8 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %9 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.ib_ah*, %struct.rdma_ah_attr*)**
  %14 = load i32 (%struct.ib_ah*, %struct.rdma_ah_attr*)*, i32 (%struct.ib_ah*, %struct.rdma_ah_attr*)** %13, align 8
  %15 = icmp ne i32 (%struct.ib_ah*, %struct.rdma_ah_attr*)* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %18 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.ib_ah*, %struct.rdma_ah_attr*)**
  %23 = load i32 (%struct.ib_ah*, %struct.rdma_ah_attr*)*, i32 (%struct.ib_ah*, %struct.rdma_ah_attr*)** %22, align 8
  %24 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %25 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %26 = call i32 %23(%struct.ib_ah* %24, %struct.rdma_ah_attr* %25)
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  br label %30

30:                                               ; preds = %27, %16
  %31 = phi i32 [ %26, %16 ], [ %29, %27 ]
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
