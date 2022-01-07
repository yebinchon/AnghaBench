; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_query_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_query_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { {}* }
%struct.ib_srq_attr = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_query_srq(%struct.ib_srq* %0, %struct.ib_srq_attr* %1) #0 {
  %3 = alloca %struct.ib_srq*, align 8
  %4 = alloca %struct.ib_srq_attr*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %3, align 8
  store %struct.ib_srq_attr* %1, %struct.ib_srq_attr** %4, align 8
  %5 = load %struct.ib_srq*, %struct.ib_srq** %3, align 8
  %6 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to i32 (%struct.ib_srq*, %struct.ib_srq_attr*)**
  %11 = load i32 (%struct.ib_srq*, %struct.ib_srq_attr*)*, i32 (%struct.ib_srq*, %struct.ib_srq_attr*)** %10, align 8
  %12 = icmp ne i32 (%struct.ib_srq*, %struct.ib_srq_attr*)* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.ib_srq*, %struct.ib_srq** %3, align 8
  %15 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.ib_srq*, %struct.ib_srq_attr*)**
  %20 = load i32 (%struct.ib_srq*, %struct.ib_srq_attr*)*, i32 (%struct.ib_srq*, %struct.ib_srq_attr*)** %19, align 8
  %21 = load %struct.ib_srq*, %struct.ib_srq** %3, align 8
  %22 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %4, align 8
  %23 = call i32 %20(%struct.ib_srq* %21, %struct.ib_srq_attr* %22)
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  br label %27

27:                                               ; preds = %24, %13
  %28 = phi i32 [ %23, %13 ], [ %26, %24 ]
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
