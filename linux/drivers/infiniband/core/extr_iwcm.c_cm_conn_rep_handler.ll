; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_iwcm.c_cm_conn_rep_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_iwcm.c_cm_conn_rep_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwcm_id_private = type { i64, i32, %struct.TYPE_6__, i32, %struct.ib_qp*, i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, %struct.iw_cm_event*)*, %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.iw_cm_event = type opaque
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ib_qp*)* }
%struct.ib_qp = type { i32 }
%struct.iw_cm_event.0 = type { i64, i32, i64, i32, i32 }

@IWCM_F_CONNECT_WAIT = common dso_local global i32 0, align 4
@IW_CM_STATE_CONN_SENT = common dso_local global i64 0, align 8
@IW_CM_STATE_ESTABLISHED = common dso_local global i64 0, align 8
@IW_CM_STATE_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwcm_id_private*, %struct.iw_cm_event.0*)* @cm_conn_rep_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_conn_rep_handler(%struct.iwcm_id_private* %0, %struct.iw_cm_event.0* %1) #0 {
  %3 = alloca %struct.iwcm_id_private*, align 8
  %4 = alloca %struct.iw_cm_event.0*, align 8
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.iwcm_id_private* %0, %struct.iwcm_id_private** %3, align 8
  store %struct.iw_cm_event.0* %1, %struct.iw_cm_event.0** %4, align 8
  store %struct.ib_qp* null, %struct.ib_qp** %5, align 8
  %8 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %9 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %8, i32 0, i32 3
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* @IWCM_F_CONNECT_WAIT, align 4
  %13 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %14 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %13, i32 0, i32 5
  %15 = call i32 @clear_bit(i32 %12, i32* %14)
  %16 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %17 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IW_CM_STATE_CONN_SENT, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %24 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %2
  %28 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %29 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %32 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 5
  store i32 %30, i32* %33, align 4
  %34 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %35 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %38 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  store i32 %36, i32* %39, align 8
  %40 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %41 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %45 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %47 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %51 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load i64, i64* @IW_CM_STATE_ESTABLISHED, align 8
  %53 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %54 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %64

55:                                               ; preds = %2
  %56 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %57 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %56, i32 0, i32 4
  %58 = load %struct.ib_qp*, %struct.ib_qp** %57, align 8
  store %struct.ib_qp* %58, %struct.ib_qp** %5, align 8
  %59 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %60 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %59, i32 0, i32 4
  store %struct.ib_qp* null, %struct.ib_qp** %60, align 8
  %61 = load i64, i64* @IW_CM_STATE_IDLE, align 8
  %62 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %63 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %55, %27
  %65 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %66 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %65, i32 0, i32 3
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %70 = icmp ne %struct.ib_qp* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %64
  %72 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %73 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32 (%struct.ib_qp*)*, i32 (%struct.ib_qp*)** %77, align 8
  %79 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %80 = call i32 %78(%struct.ib_qp* %79)
  br label %81

81:                                               ; preds = %71, %64
  %82 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %83 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32 (%struct.TYPE_6__*, %struct.iw_cm_event*)*, i32 (%struct.TYPE_6__*, %struct.iw_cm_event*)** %84, align 8
  %86 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %87 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %86, i32 0, i32 2
  %88 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %89 = bitcast %struct.iw_cm_event.0* %88 to %struct.iw_cm_event*
  %90 = call i32 %85(%struct.TYPE_6__* %87, %struct.iw_cm_event* %89)
  store i32 %90, i32* %7, align 4
  %91 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %92 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %81
  %96 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %97 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @kfree(i32 %98)
  br label %100

100:                                              ; preds = %95, %81
  %101 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %102 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %101, i32 0, i32 1
  %103 = call i32 @wake_up_all(i32* %102)
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
