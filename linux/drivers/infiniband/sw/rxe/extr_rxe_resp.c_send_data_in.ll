; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_send_data_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_send_data_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@to_mem_obj = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@RESPST_ERR_LENGTH = common dso_local global i32 0, align 4
@RESPST_ERR_MALFORMED_WQE = common dso_local global i32 0, align 4
@RESPST_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, i8*, i32)* @send_data_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_data_in(%struct.rxe_qp* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxe_qp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rxe_qp* %0, %struct.rxe_qp** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %10 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %13 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %14 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @to_mem_obj, align 4
  %21 = call i32 @copy_data(i32 %11, i32 %12, i32* %17, i8* %18, i32 %19, i32 %20, i32* null)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @ENOSPC, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @RESPST_ERR_LENGTH, align 4
  br label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @RESPST_ERR_MALFORMED_WQE, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %4, align 4
  br label %38

36:                                               ; preds = %3
  %37 = load i32, i32* @RESPST_NONE, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @copy_data(i32, i32, i32*, i8*, i32, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
