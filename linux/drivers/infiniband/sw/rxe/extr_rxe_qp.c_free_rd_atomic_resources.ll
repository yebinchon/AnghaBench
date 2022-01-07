; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_qp.c_free_rd_atomic_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_qp.c_free_rd_atomic_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.resp_res* }
%struct.resp_res = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxe_qp*)* @free_rd_atomic_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_rd_atomic_resources(%struct.rxe_qp* %0) #0 {
  %2 = alloca %struct.rxe_qp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.resp_res*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %2, align 8
  %5 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %6 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.resp_res*, %struct.resp_res** %7, align 8
  %9 = icmp ne %struct.resp_res* %8, null
  br i1 %9, label %10, label %41

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %29, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %14 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %11
  %19 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %20 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.resp_res*, %struct.resp_res** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %22, i64 %24
  store %struct.resp_res* %25, %struct.resp_res** %4, align 8
  %26 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %27 = load %struct.resp_res*, %struct.resp_res** %4, align 8
  %28 = call i32 @free_rd_atomic_resource(%struct.rxe_qp* %26, %struct.resp_res* %27)
  br label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %11

32:                                               ; preds = %11
  %33 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %34 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.resp_res*, %struct.resp_res** %35, align 8
  %37 = call i32 @kfree(%struct.resp_res* %36)
  %38 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %39 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store %struct.resp_res* null, %struct.resp_res** %40, align 8
  br label %41

41:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @free_rd_atomic_resource(%struct.rxe_qp*, %struct.resp_res*) #1

declare dso_local i32 @kfree(%struct.resp_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
