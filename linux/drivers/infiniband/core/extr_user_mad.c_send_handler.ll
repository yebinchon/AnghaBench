; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_user_mad.c_send_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_user_mad.c_send_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent = type { %struct.ib_umad_file* }
%struct.ib_umad_file = type { i32 }
%struct.ib_mad_send_wc = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.ib_umad_packet** }
%struct.ib_umad_packet = type { %struct.TYPE_6__, i32, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@RDMA_DESTROY_AH_SLEEPABLE = common dso_local global i32 0, align 4
@IB_WC_RESP_TIMEOUT_ERR = common dso_local global i64 0, align 8
@IB_MGMT_MAD_HDR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_agent*, %struct.ib_mad_send_wc*)* @send_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_handler(%struct.ib_mad_agent* %0, %struct.ib_mad_send_wc* %1) #0 {
  %3 = alloca %struct.ib_mad_agent*, align 8
  %4 = alloca %struct.ib_mad_send_wc*, align 8
  %5 = alloca %struct.ib_umad_file*, align 8
  %6 = alloca %struct.ib_umad_packet*, align 8
  store %struct.ib_mad_agent* %0, %struct.ib_mad_agent** %3, align 8
  store %struct.ib_mad_send_wc* %1, %struct.ib_mad_send_wc** %4, align 8
  %7 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %3, align 8
  %8 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %7, i32 0, i32 0
  %9 = load %struct.ib_umad_file*, %struct.ib_umad_file** %8, align 8
  store %struct.ib_umad_file* %9, %struct.ib_umad_file** %5, align 8
  %10 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %4, align 8
  %11 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.ib_umad_packet**, %struct.ib_umad_packet*** %13, align 8
  %15 = getelementptr inbounds %struct.ib_umad_packet*, %struct.ib_umad_packet** %14, i64 0
  %16 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %15, align 8
  store %struct.ib_umad_packet* %16, %struct.ib_umad_packet** %6, align 8
  %17 = load %struct.ib_umad_file*, %struct.ib_umad_file** %5, align 8
  %18 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %19 = call i32 @dequeue_send(%struct.ib_umad_file* %17, %struct.ib_umad_packet* %18)
  %20 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %21 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %20, i32 0, i32 2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @RDMA_DESTROY_AH_SLEEPABLE, align 4
  %26 = call i32 @rdma_destroy_ah(i32 %24, i32 %25)
  %27 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %28 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %27, i32 0, i32 2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = call i32 @ib_free_send_mad(%struct.TYPE_8__* %29)
  %31 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %4, align 8
  %32 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IB_WC_RESP_TIMEOUT_ERR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %2
  %37 = load i32, i32* @IB_MGMT_MAD_HDR, align 4
  %38 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %39 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %42 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 8
  %45 = load %struct.ib_umad_file*, %struct.ib_umad_file** %5, align 8
  %46 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %3, align 8
  %47 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %48 = call i32 @queue_packet(%struct.ib_umad_file* %45, %struct.ib_mad_agent* %46, %struct.ib_umad_packet* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %36
  br label %55

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51, %2
  %53 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %54 = call i32 @kfree(%struct.ib_umad_packet* %53)
  br label %55

55:                                               ; preds = %52, %50
  ret void
}

declare dso_local i32 @dequeue_send(%struct.ib_umad_file*, %struct.ib_umad_packet*) #1

declare dso_local i32 @rdma_destroy_ah(i32, i32) #1

declare dso_local i32 @ib_free_send_mad(%struct.TYPE_8__*) #1

declare dso_local i32 @queue_packet(%struct.ib_umad_file*, %struct.ib_mad_agent*, %struct.ib_umad_packet*) #1

declare dso_local i32 @kfree(%struct.ib_umad_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
