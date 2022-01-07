; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad_rmpp.c_abort_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad_rmpp.c_abort_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent_private = type { i32 }
%struct.ib_mad_recv_wc = type { i32 }
%struct.ib_mad_send_wr_private = type { i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ib_mad_send_wc = type { %struct.TYPE_2__*, i32, i32 }

@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@IB_WC_REM_ABORT_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*, i32)* @abort_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abort_send(%struct.ib_mad_agent_private* %0, %struct.ib_mad_recv_wc* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_mad_agent_private*, align 8
  %5 = alloca %struct.ib_mad_recv_wc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_mad_send_wr_private*, align 8
  %8 = alloca %struct.ib_mad_send_wc, align 8
  %9 = alloca i64, align 8
  store %struct.ib_mad_agent_private* %0, %struct.ib_mad_agent_private** %4, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %11 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %10, i32 0, i32 0
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %15 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %16 = call %struct.ib_mad_send_wr_private* @ib_find_send_mad(%struct.ib_mad_agent_private* %14, %struct.ib_mad_recv_wc* %15)
  store %struct.ib_mad_send_wr_private* %16, %struct.ib_mad_send_wr_private** %7, align 8
  %17 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %7, align 8
  %18 = icmp ne %struct.ib_mad_send_wr_private* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %57

20:                                               ; preds = %3
  %21 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %7, align 8
  %22 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %7, align 8
  %25 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %23, %27
  br i1 %28, label %40, label %29

29:                                               ; preds = %20
  %30 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %7, align 8
  %31 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %7, align 8
  %36 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IB_WC_SUCCESS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %29, %20
  br label %57

41:                                               ; preds = %34
  %42 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %7, align 8
  %43 = call i32 @ib_mark_mad_done(%struct.ib_mad_send_wr_private* %42)
  %44 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %45 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %44, i32 0, i32 0
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i32, i32* @IB_WC_REM_ABORT_ERR, align 4
  %49 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %8, i32 0, i32 2
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %8, i32 0, i32 1
  store i32 %50, i32* %51, align 8
  %52 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %7, align 8
  %53 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %8, i32 0, i32 0
  store %struct.TYPE_2__* %53, %struct.TYPE_2__** %54, align 8
  %55 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %7, align 8
  %56 = call i32 @ib_mad_complete_send_wr(%struct.ib_mad_send_wr_private* %55, %struct.ib_mad_send_wc* %8)
  br label %62

57:                                               ; preds = %40, %19
  %58 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %59 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %58, i32 0, i32 0
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  br label %62

62:                                               ; preds = %57, %41
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ib_mad_send_wr_private* @ib_find_send_mad(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*) #1

declare dso_local i32 @ib_mark_mad_done(%struct.ib_mad_send_wr_private*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ib_mad_complete_send_wr(%struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
