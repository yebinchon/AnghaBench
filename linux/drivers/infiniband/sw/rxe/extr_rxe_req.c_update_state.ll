; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_req.c_update_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_req.c_update_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { i64, i32, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.rxe_send_wqe = type { i32 }
%struct.rxe_pkt_info = type { i32, i32 }

@RXE_END_MASK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxe_qp*, %struct.rxe_send_wqe*, %struct.rxe_pkt_info*, i32)* @update_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_state(%struct.rxe_qp* %0, %struct.rxe_send_wqe* %1, %struct.rxe_pkt_info* %2, i32 %3) #0 {
  %5 = alloca %struct.rxe_qp*, align 8
  %6 = alloca %struct.rxe_send_wqe*, align 8
  %7 = alloca %struct.rxe_pkt_info*, align 8
  %8 = alloca i32, align 4
  store %struct.rxe_qp* %0, %struct.rxe_qp** %5, align 8
  store %struct.rxe_send_wqe* %1, %struct.rxe_send_wqe** %6, align 8
  store %struct.rxe_pkt_info* %2, %struct.rxe_pkt_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %7, align 8
  %10 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %13 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  %15 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %7, align 8
  %16 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RXE_END_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %4
  %22 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %23 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %27 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @next_index(i32 %25, i32 %29)
  %31 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %32 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  br label %34

34:                                               ; preds = %21, %4
  %35 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %36 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %38 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %34
  %42 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %43 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %42, i32 0, i32 1
  %44 = call i32 @timer_pending(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %41
  %47 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %48 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %47, i32 0, i32 1
  %49 = load i64, i64* @jiffies, align 8
  %50 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %51 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = call i32 @mod_timer(i32* %48, i64 %53)
  br label %55

55:                                               ; preds = %46, %41, %34
  ret void
}

declare dso_local i32 @next_index(i32, i32) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
