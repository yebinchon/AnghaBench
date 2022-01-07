; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_iwcm.c_cm_close_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_iwcm.c_cm_close_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwcm_id_private = type { i32, %struct.TYPE_6__, i32, %struct.ib_qp* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, %struct.iw_cm_event*)*, %struct.TYPE_5__* }
%struct.iw_cm_event = type opaque
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ib_qp*)* }
%struct.ib_qp = type { i32 }
%struct.iw_cm_event.0 = type { i32 }

@IW_CM_STATE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwcm_id_private*, %struct.iw_cm_event.0*)* @cm_close_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_close_handler(%struct.iwcm_id_private* %0, %struct.iw_cm_event.0* %1) #0 {
  %3 = alloca %struct.iwcm_id_private*, align 8
  %4 = alloca %struct.iw_cm_event.0*, align 8
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwcm_id_private* %0, %struct.iwcm_id_private** %3, align 8
  store %struct.iw_cm_event.0* %1, %struct.iw_cm_event.0** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %10 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %9, i32 0, i32 2
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %14 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %13, i32 0, i32 3
  %15 = load %struct.ib_qp*, %struct.ib_qp** %14, align 8
  store %struct.ib_qp* %15, %struct.ib_qp** %5, align 8
  %16 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %17 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %16, i32 0, i32 3
  store %struct.ib_qp* null, %struct.ib_qp** %17, align 8
  %18 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %19 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %26 [
    i32 128, label %21
    i32 130, label %21
    i32 129, label %25
  ]

21:                                               ; preds = %2, %2
  %22 = load i32, i32* @IW_CM_STATE_IDLE, align 4
  %23 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %24 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  store i32 1, i32* %8, align 4
  br label %28

25:                                               ; preds = %2
  br label %28

26:                                               ; preds = %2
  %27 = call i32 (...) @BUG()
  br label %28

28:                                               ; preds = %26, %25, %21
  %29 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %30 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %29, i32 0, i32 2
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %34 = icmp ne %struct.ib_qp* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %37 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (%struct.ib_qp*)*, i32 (%struct.ib_qp*)** %41, align 8
  %43 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %44 = call i32 %42(%struct.ib_qp* %43)
  br label %45

45:                                               ; preds = %35, %28
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %50 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_6__*, %struct.iw_cm_event*)*, i32 (%struct.TYPE_6__*, %struct.iw_cm_event*)** %51, align 8
  %53 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %54 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %53, i32 0, i32 1
  %55 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %56 = bitcast %struct.iw_cm_event.0* %55 to %struct.iw_cm_event*
  %57 = call i32 %52(%struct.TYPE_6__* %54, %struct.iw_cm_event* %56)
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %48, %45
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
