; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_query_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_query_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_srq_attr = type { i32, i32, i32 }
%struct.rxe_srq = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_srq*, %struct.ib_srq_attr*)* @rxe_query_srq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_query_srq(%struct.ib_srq* %0, %struct.ib_srq_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_srq_attr*, align 8
  %6 = alloca %struct.rxe_srq*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %4, align 8
  store %struct.ib_srq_attr* %1, %struct.ib_srq_attr** %5, align 8
  %7 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %8 = call %struct.rxe_srq* @to_rsrq(%struct.ib_srq* %7)
  store %struct.rxe_srq* %8, %struct.rxe_srq** %6, align 8
  %9 = load %struct.rxe_srq*, %struct.rxe_srq** %6, align 8
  %10 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %38

16:                                               ; preds = %2
  %17 = load %struct.rxe_srq*, %struct.rxe_srq** %6, align 8
  %18 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %26 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.rxe_srq*, %struct.rxe_srq** %6, align 8
  %28 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %32 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.rxe_srq*, %struct.rxe_srq** %6, align 8
  %34 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %37 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %16, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.rxe_srq* @to_rsrq(%struct.ib_srq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
