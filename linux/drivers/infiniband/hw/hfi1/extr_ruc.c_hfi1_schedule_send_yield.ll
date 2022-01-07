; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_ruc.c_hfi1_schedule_send_yield.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_ruc.c_hfi1_schedule_send_yield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, i32, %struct.hfi1_qp_priv* }
%struct.hfi1_qp_priv = type { i32 }
%struct.hfi1_pkt_state = type { i32, i64, i64, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32* }

@jiffies = common dso_local global i64 0, align 8
@RVT_S_BUSY = common dso_local global i32 0, align 4
@HFI1_S_TID_BUSY_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_schedule_send_yield(%struct.rvt_qp* %0, %struct.hfi1_pkt_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvt_qp*, align 8
  %6 = alloca %struct.hfi1_pkt_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hfi1_qp_priv*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %5, align 8
  store %struct.hfi1_pkt_state* %1, %struct.hfi1_pkt_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %10 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load i64, i64* @jiffies, align 8
  %12 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %13 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @time_after(i64 %11, i64 %14)
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %123

18:                                               ; preds = %3
  %19 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %20 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %25 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %28 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @workqueue_congested(i32 %26, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %105

34:                                               ; preds = %23, %18
  %35 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %36 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %35, i32 0, i32 1
  %37 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %38 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %36, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* @RVT_S_BUSY, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %47 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %51 = call i32 @hfi1_schedule_send(%struct.rvt_qp* %50)
  br label %87

52:                                               ; preds = %34
  %53 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %54 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %53, i32 0, i32 2
  %55 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %54, align 8
  store %struct.hfi1_qp_priv* %55, %struct.hfi1_qp_priv** %8, align 8
  %56 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %57 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @HFI1_S_TID_BUSY_SET, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %52
  %63 = load i32, i32* @RVT_S_BUSY, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %66 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load i32, i32* @HFI1_S_TID_BUSY_SET, align 4
  %70 = load i32, i32* @RVT_S_BUSY, align 4
  %71 = or i32 %69, %70
  %72 = xor i32 %71, -1
  %73 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %74 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %84

77:                                               ; preds = %52
  %78 = load i32, i32* @RVT_S_BUSY, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %81 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %77, %62
  %85 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %86 = call i32 @hfi1_schedule_tid_send(%struct.rvt_qp* %85)
  br label %87

87:                                               ; preds = %84, %43
  %88 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %89 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %88, i32 0, i32 1
  %90 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %91 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %89, i32 %92)
  %94 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %95 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %94, i32 0, i32 3
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @this_cpu_inc(i32 %101)
  %103 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %104 = call i32 @trace_hfi1_rc_expired_time_slice(%struct.rvt_qp* %103, i32 1)
  store i32 1, i32* %4, align 4
  br label %126

105:                                              ; preds = %23
  %106 = call i32 (...) @cond_resched()
  %107 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %108 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %107, i32 0, i32 3
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @this_cpu_inc(i32 %114)
  %116 = load i64, i64* @jiffies, align 8
  %117 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %118 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %116, %119
  %121 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %6, align 8
  %122 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %121, i32 0, i32 2
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %105, %3
  %124 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %125 = call i32 @trace_hfi1_rc_expired_time_slice(%struct.rvt_qp* %124, i32 0)
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %123, %87
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i64 @workqueue_congested(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @hfi1_schedule_send(%struct.rvt_qp*) #1

declare dso_local i32 @hfi1_schedule_tid_send(%struct.rvt_qp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @trace_hfi1_rc_expired_time_slice(%struct.rvt_qp*, i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
