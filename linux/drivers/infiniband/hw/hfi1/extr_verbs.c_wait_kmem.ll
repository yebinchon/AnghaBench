; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_wait_kmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_wait_kmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ibdev = type { i32 }
%struct.rvt_qp = type { i64, i32 }
%struct.hfi1_pkt_state = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ib_rvt_state_ops = common dso_local global i32* null, align 8
@RVT_PROCESS_RECV_OK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_ibdev*, %struct.rvt_qp*, %struct.hfi1_pkt_state*)* @wait_kmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_kmem(%struct.hfi1_ibdev* %0, %struct.rvt_qp* %1, %struct.hfi1_pkt_state* %2) #0 {
  %4 = alloca %struct.hfi1_ibdev*, align 8
  %5 = alloca %struct.rvt_qp*, align 8
  %6 = alloca %struct.hfi1_pkt_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.hfi1_ibdev* %0, %struct.hfi1_ibdev** %4, align 8
  store %struct.rvt_qp* %1, %struct.rvt_qp** %5, align 8
  store %struct.hfi1_pkt_state* %2, %struct.hfi1_pkt_state** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %10 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %9, i32 0, i32 1
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32*, i32** @ib_rvt_state_ops, align 8
  %14 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %15 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RVT_PROCESS_RECV_OK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %3
  %23 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %4, align 8
  %24 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %23, i32 0, i32 0
  %25 = call i32 @write_seqlock(i32* %24)
  %26 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %27 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %32 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i32 @list_add_tail(i32* %30, i32* %34)
  %36 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %37 = call i32 @hfi1_wait_kmem(%struct.rvt_qp* %36)
  %38 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %4, align 8
  %39 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %38, i32 0, i32 0
  %40 = call i32 @write_sequnlock(i32* %39)
  %41 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %42 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %43 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = call i32 @hfi1_qp_unbusy(%struct.rvt_qp* %41, %struct.TYPE_6__* %44)
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %22, %3
  %49 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %50 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %49, i32 0, i32 1
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @hfi1_wait_kmem(%struct.rvt_qp*) #1

declare dso_local i32 @write_sequnlock(i32*) #1

declare dso_local i32 @hfi1_qp_unbusy(%struct.rvt_qp*, %struct.TYPE_6__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
