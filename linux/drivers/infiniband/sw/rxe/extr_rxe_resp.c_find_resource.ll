; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_find_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_find_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resp_res = type { i64, i32, i32 }
%struct.rxe_qp = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.resp_res* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resp_res* (%struct.rxe_qp*, i32)* @find_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resp_res* @find_resource(%struct.rxe_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.resp_res*, align 8
  %4 = alloca %struct.rxe_qp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.resp_res*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %45, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %11 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %8
  %16 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %17 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.resp_res*, %struct.resp_res** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %19, i64 %21
  store %struct.resp_res* %22, %struct.resp_res** %7, align 8
  %23 = load %struct.resp_res*, %struct.resp_res** %7, align 8
  %24 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %45

28:                                               ; preds = %15
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.resp_res*, %struct.resp_res** %7, align 8
  %31 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @psn_compare(i32 %29, i32 %32)
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.resp_res*, %struct.resp_res** %7, align 8
  %38 = getelementptr inbounds %struct.resp_res, %struct.resp_res* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @psn_compare(i32 %36, i32 %39)
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load %struct.resp_res*, %struct.resp_res** %7, align 8
  store %struct.resp_res* %43, %struct.resp_res** %3, align 8
  br label %49

44:                                               ; preds = %35, %28
  br label %45

45:                                               ; preds = %44, %27
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %8

48:                                               ; preds = %8
  store %struct.resp_res* null, %struct.resp_res** %3, align 8
  br label %49

49:                                               ; preds = %48, %42
  %50 = load %struct.resp_res*, %struct.resp_res** %3, align 8
  ret %struct.resp_res* %50
}

declare dso_local i64 @psn_compare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
