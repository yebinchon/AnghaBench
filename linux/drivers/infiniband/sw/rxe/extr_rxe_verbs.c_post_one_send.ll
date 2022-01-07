; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_post_one_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_post_one_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.rxe_sq }
%struct.rxe_sq = type { i32, i32 }
%struct.ib_send_wr = type { i32 }
%struct.rxe_send_wqe = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.ib_send_wr*, i32, i32)* @post_one_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @post_one_send(%struct.rxe_qp* %0, %struct.ib_send_wr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rxe_qp*, align 8
  %7 = alloca %struct.ib_send_wr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rxe_sq*, align 8
  %12 = alloca %struct.rxe_send_wqe*, align 8
  %13 = alloca i64, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %6, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.rxe_qp*, %struct.rxe_qp** %6, align 8
  %15 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %14, i32 0, i32 0
  store %struct.rxe_sq* %15, %struct.rxe_sq** %11, align 8
  %16 = load %struct.rxe_qp*, %struct.rxe_qp** %6, align 8
  %17 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @validate_send_wr(%struct.rxe_qp* %16, %struct.ib_send_wr* %17, i32 %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %73

25:                                               ; preds = %4
  %26 = load %struct.rxe_qp*, %struct.rxe_qp** %6, align 8
  %27 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.rxe_sq, %struct.rxe_sq* %27, i32 0, i32 0
  %29 = load i64, i64* %13, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.rxe_sq*, %struct.rxe_sq** %11, align 8
  %32 = getelementptr inbounds %struct.rxe_sq, %struct.rxe_sq* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @queue_full(i32 %33)
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %10, align 4
  br label %66

40:                                               ; preds = %25
  %41 = load %struct.rxe_sq*, %struct.rxe_sq** %11, align 8
  %42 = getelementptr inbounds %struct.rxe_sq, %struct.rxe_sq* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.rxe_send_wqe* @producer_addr(i32 %43)
  store %struct.rxe_send_wqe* %44, %struct.rxe_send_wqe** %12, align 8
  %45 = load %struct.rxe_qp*, %struct.rxe_qp** %6, align 8
  %46 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %12, align 8
  %50 = call i32 @init_send_wqe(%struct.rxe_qp* %45, %struct.ib_send_wr* %46, i32 %47, i32 %48, %struct.rxe_send_wqe* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %66

55:                                               ; preds = %40
  %56 = call i32 (...) @smp_wmb()
  %57 = load %struct.rxe_sq*, %struct.rxe_sq** %11, align 8
  %58 = getelementptr inbounds %struct.rxe_sq, %struct.rxe_sq* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @advance_producer(i32 %59)
  %61 = load %struct.rxe_qp*, %struct.rxe_qp** %6, align 8
  %62 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.rxe_sq, %struct.rxe_sq* %62, i32 0, i32 0
  %64 = load i64, i64* %13, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  store i32 0, i32* %5, align 4
  br label %73

66:                                               ; preds = %54, %37
  %67 = load %struct.rxe_qp*, %struct.rxe_qp** %6, align 8
  %68 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.rxe_sq, %struct.rxe_sq* %68, i32 0, i32 0
  %70 = load i64, i64* %13, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %66, %55, %23
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @validate_send_wr(%struct.rxe_qp*, %struct.ib_send_wr*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @queue_full(i32) #1

declare dso_local %struct.rxe_send_wqe* @producer_addr(i32) #1

declare dso_local i32 @init_send_wqe(%struct.rxe_qp*, %struct.ib_send_wr*, i32, i32, %struct.rxe_send_wqe*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @advance_producer(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
