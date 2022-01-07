; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_iwcm.c_cm_conn_est_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_iwcm.c_cm_conn_est_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwcm_id_private = type { i64, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.iw_cm_event*)* }
%struct.iw_cm_event = type opaque
%struct.iw_cm_event.0 = type { i32 }

@IWCM_F_CONNECT_WAIT = common dso_local global i32 0, align 4
@IW_CM_STATE_CONN_RECV = common dso_local global i64 0, align 8
@IW_CM_STATE_ESTABLISHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwcm_id_private*, %struct.iw_cm_event.0*)* @cm_conn_est_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_conn_est_handler(%struct.iwcm_id_private* %0, %struct.iw_cm_event.0* %1) #0 {
  %3 = alloca %struct.iwcm_id_private*, align 8
  %4 = alloca %struct.iw_cm_event.0*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.iwcm_id_private* %0, %struct.iwcm_id_private** %3, align 8
  store %struct.iw_cm_event.0* %1, %struct.iw_cm_event.0** %4, align 8
  %7 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %8 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %7, i32 0, i32 3
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i32, i32* @IWCM_F_CONNECT_WAIT, align 4
  %12 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %13 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %12, i32 0, i32 4
  %14 = call i32 @clear_bit(i32 %11, i32* %13)
  %15 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %16 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IW_CM_STATE_CONN_RECV, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i64, i64* @IW_CM_STATE_ESTABLISHED, align 8
  %23 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %24 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %26 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %25, i32 0, i32 3
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %30 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_2__*, %struct.iw_cm_event*)*, i32 (%struct.TYPE_2__*, %struct.iw_cm_event*)** %31, align 8
  %33 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %34 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %33, i32 0, i32 2
  %35 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %36 = bitcast %struct.iw_cm_event.0* %35 to %struct.iw_cm_event*
  %37 = call i32 %32(%struct.TYPE_2__* %34, %struct.iw_cm_event* %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %39 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %38, i32 0, i32 1
  %40 = call i32 @wake_up_all(i32* %39)
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
