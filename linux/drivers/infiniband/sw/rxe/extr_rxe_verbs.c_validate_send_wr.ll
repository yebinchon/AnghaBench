; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_validate_send_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_validate_send_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.rxe_sq }
%struct.rxe_sq = type { i32, i32 }
%struct.ib_send_wr = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@WR_ATOMIC_MASK = common dso_local global i32 0, align 4
@IB_SEND_INLINE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.ib_send_wr*, i32, i32)* @validate_send_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_send_wr(%struct.rxe_qp* %0, %struct.ib_send_wr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rxe_qp*, align 8
  %7 = alloca %struct.ib_send_wr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rxe_sq*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %6, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %13 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load %struct.rxe_qp*, %struct.rxe_qp** %6, align 8
  %16 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %15, i32 0, i32 0
  store %struct.rxe_sq* %16, %struct.rxe_sq** %11, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.rxe_sq*, %struct.rxe_sq** %11, align 8
  %19 = getelementptr inbounds %struct.rxe_sq, %struct.rxe_sq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %65

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @WR_ATOMIC_MASK, align 4
  %29 = and i32 %27, %28
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  %34 = icmp ult i32 %33, 8
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %65

36:                                               ; preds = %32
  %37 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %38 = call %struct.TYPE_2__* @atomic_wr(%struct.ib_send_wr* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 7
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %65

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %26
  %46 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %47 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IB_SEND_INLINE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.rxe_sq*, %struct.rxe_sq** %11, align 8
  %55 = getelementptr inbounds %struct.rxe_sq, %struct.rxe_sq* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ugt i32 %53, %56
  br label %58

58:                                               ; preds = %52, %45
  %59 = phi i1 [ false, %45 ], [ %57, %52 ]
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %65

64:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %68

65:                                               ; preds = %63, %43, %35, %25
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %65, %64
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_2__* @atomic_wr(%struct.ib_send_wr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
