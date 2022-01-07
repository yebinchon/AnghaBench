; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_pio_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_pio_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, i32, i32, %struct.hfi1_qp_priv* }
%struct.hfi1_qp_priv = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.send_context = type { i32, i32, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { %struct.hfi1_ibdev }
%struct.hfi1_ibdev = type { i32, i32 }
%struct.hfi1_pkt_state = type { %struct.TYPE_9__*, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ib_rvt_state_ops = common dso_local global i32* null, align 8
@RVT_PROCESS_RECV_OK = common dso_local global i32 0, align 4
@RVT_S_WAIT_PIO = common dso_local global i32 0, align 4
@HFI1_S_WAIT_PIO_DRAIN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvt_qp*, %struct.send_context*, %struct.hfi1_pkt_state*, i32)* @pio_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pio_wait(%struct.rvt_qp* %0, %struct.send_context* %1, %struct.hfi1_pkt_state* %2, i32 %3) #0 {
  %5 = alloca %struct.rvt_qp*, align 8
  %6 = alloca %struct.send_context*, align 8
  %7 = alloca %struct.hfi1_pkt_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hfi1_qp_priv*, align 8
  %10 = alloca %struct.hfi1_devdata*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hfi1_ibdev*, align 8
  %14 = alloca i32, align 4
  store %struct.rvt_qp* %0, %struct.rvt_qp** %5, align 8
  store %struct.send_context* %1, %struct.send_context** %6, align 8
  store %struct.hfi1_pkt_state* %2, %struct.hfi1_pkt_state** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %16 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %15, i32 0, i32 3
  %17 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %16, align 8
  store %struct.hfi1_qp_priv* %17, %struct.hfi1_qp_priv** %9, align 8
  %18 = load %struct.send_context*, %struct.send_context** %6, align 8
  %19 = getelementptr inbounds %struct.send_context, %struct.send_context* %18, i32 0, i32 2
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %19, align 8
  store %struct.hfi1_devdata* %20, %struct.hfi1_devdata** %10, align 8
  store i32 0, i32* %12, align 4
  %21 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %22 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %21, i32 0, i32 2
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load i32*, i32** @ib_rvt_state_ops, align 8
  %26 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %27 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RVT_PROCESS_RECV_OK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %124

34:                                               ; preds = %4
  %35 = load %struct.send_context*, %struct.send_context** %6, align 8
  %36 = getelementptr inbounds %struct.send_context, %struct.send_context* %35, i32 0, i32 0
  %37 = call i32 @write_seqlock(i32* %36)
  %38 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %7, align 8
  %39 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %38, i32 0, i32 2
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %7, align 8
  %44 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = call i32 @list_add_tail(i32* %42, i32* %46)
  %48 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %9, align 8
  %49 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = call i32 @list_empty(i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %113

53:                                               ; preds = %34
  %54 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %55 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %54, i32 0, i32 0
  store %struct.hfi1_ibdev* %55, %struct.hfi1_ibdev** %13, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @RVT_S_WAIT_PIO, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %13, align 8
  %64 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @HFI1_S_WAIT_PIO_DRAIN, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %13, align 8
  %75 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %80 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.send_context*, %struct.send_context** %6, align 8
  %84 = getelementptr inbounds %struct.send_context, %struct.send_context* %83, i32 0, i32 1
  %85 = call i32 @list_empty(i32* %84)
  store i32 %85, i32* %14, align 4
  %86 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %9, align 8
  %87 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %86, i32 0, i32 0
  %88 = call i32 @iowait_get_priority(%struct.TYPE_8__* %87)
  %89 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %7, align 8
  %90 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %9, align 8
  %93 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %92, i32 0, i32 0
  %94 = load %struct.send_context*, %struct.send_context** %6, align 8
  %95 = getelementptr inbounds %struct.send_context, %struct.send_context* %94, i32 0, i32 1
  %96 = call i32 @iowait_queue(i32 %91, %struct.TYPE_8__* %93, i32* %95)
  %97 = load %struct.send_context*, %struct.send_context** %6, align 8
  %98 = getelementptr inbounds %struct.send_context, %struct.send_context* %97, i32 0, i32 0
  %99 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %9, align 8
  %100 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i32* %98, i32** %101, align 8
  %102 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %103 = load i32, i32* @RVT_S_WAIT_PIO, align 4
  %104 = call i32 @trace_hfi1_qpsleep(%struct.rvt_qp* %102, i32 %103)
  %105 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %106 = call i32 @rvt_get_qp(%struct.rvt_qp* %105)
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %53
  %110 = load %struct.send_context*, %struct.send_context** %6, align 8
  %111 = call i32 @hfi1_sc_wantpiobuf_intr(%struct.send_context* %110, i32 1)
  br label %112

112:                                              ; preds = %109, %53
  br label %113

113:                                              ; preds = %112, %34
  %114 = load %struct.send_context*, %struct.send_context** %6, align 8
  %115 = getelementptr inbounds %struct.send_context, %struct.send_context* %114, i32 0, i32 0
  %116 = call i32 @write_sequnlock(i32* %115)
  %117 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %118 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %7, align 8
  %119 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %118, i32 0, i32 0
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = call i32 @hfi1_qp_unbusy(%struct.rvt_qp* %117, %struct.TYPE_9__* %120)
  %122 = load i32, i32* @EBUSY, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %113, %4
  %125 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %126 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %125, i32 0, i32 2
  %127 = load i64, i64* %11, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* %126, i64 %127)
  %129 = load i32, i32* %12, align 4
  ret i32 %129
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @iowait_get_priority(%struct.TYPE_8__*) #1

declare dso_local i32 @iowait_queue(i32, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @trace_hfi1_qpsleep(%struct.rvt_qp*, i32) #1

declare dso_local i32 @rvt_get_qp(%struct.rvt_qp*) #1

declare dso_local i32 @hfi1_sc_wantpiobuf_intr(%struct.send_context*, i32) #1

declare dso_local i32 @write_sequnlock(i32*) #1

declare dso_local i32 @hfi1_qp_unbusy(%struct.rvt_qp*, %struct.TYPE_9__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
