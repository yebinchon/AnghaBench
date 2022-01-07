; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_qp.c_free_rd_atomic_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_qp.c_free_rd_atomic_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { i32 }
%struct.resp_res = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.rxe_qp* }
%struct.TYPE_3__ = type { i32 }

@RXE_ATOMIC_MASK = common dso_local global i64 0, align 8
@RXE_READ_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_rd_atomic_resource(%struct.rxe_qp* %0, %struct.resp_res* %1) #0 {
  %3 = alloca %struct.rxe_qp*, align 8
  %4 = alloca %struct.resp_res*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %3, align 8
  store %struct.resp_res* %1, %struct.resp_res** %4, align 8
  %5 = load %struct.resp_res*, %struct.resp_res** %4, align 8
  %6 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @RXE_ATOMIC_MASK, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %12 = call i32 @rxe_drop_ref(%struct.rxe_qp* %11)
  %13 = load %struct.resp_res*, %struct.resp_res** %4, align 8
  %14 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @kfree_skb(i32 %16)
  br label %38

18:                                               ; preds = %2
  %19 = load %struct.resp_res*, %struct.resp_res** %4, align 8
  %20 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RXE_READ_MASK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load %struct.resp_res*, %struct.resp_res** %4, align 8
  %26 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.rxe_qp*, %struct.rxe_qp** %27, align 8
  %29 = icmp ne %struct.rxe_qp* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.resp_res*, %struct.resp_res** %4, align 8
  %32 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.rxe_qp*, %struct.rxe_qp** %33, align 8
  %35 = call i32 @rxe_drop_ref(%struct.rxe_qp* %34)
  br label %36

36:                                               ; preds = %30, %24
  br label %37

37:                                               ; preds = %36, %18
  br label %38

38:                                               ; preds = %37, %10
  %39 = load %struct.resp_res*, %struct.resp_res** %4, align 8
  %40 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  ret void
}

declare dso_local i32 @rxe_drop_ref(%struct.rxe_qp*) #1

declare dso_local i32 @kfree_skb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
