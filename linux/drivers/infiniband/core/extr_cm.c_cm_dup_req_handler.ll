; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_dup_req_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_dup_req_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_work = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.cm_id_private = type { i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ib_mad_send_buf = type { i64 }
%struct.cm_mra_msg = type { i32 }
%struct.cm_rej_msg = type { i32 }

@CM_RECV_DUPLICATES = common dso_local global i64 0, align 8
@CM_REQ_COUNTER = common dso_local global i64 0, align 8
@IB_CM_REQ_RCVD = common dso_local global i32 0, align 4
@CM_MSG_RESPONSE_REQ = common dso_local global i32 0, align 4
@IB_CM_REJ_STALE_CONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_work*, %struct.cm_id_private*)* @cm_dup_req_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_dup_req_handler(%struct.cm_work* %0, %struct.cm_id_private* %1) #0 {
  %3 = alloca %struct.cm_work*, align 8
  %4 = alloca %struct.cm_id_private*, align 8
  %5 = alloca %struct.ib_mad_send_buf*, align 8
  %6 = alloca i32, align 4
  store %struct.cm_work* %0, %struct.cm_work** %3, align 8
  store %struct.cm_id_private* %1, %struct.cm_id_private** %4, align 8
  store %struct.ib_mad_send_buf* null, %struct.ib_mad_send_buf** %5, align 8
  %7 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %8 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load i64, i64* @CM_RECV_DUPLICATES, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @CM_REQ_COUNTER, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = call i32 @atomic_long_inc(i32* %17)
  %19 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %20 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IB_CM_REQ_RCVD, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %88

26:                                               ; preds = %2
  %27 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %28 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %31 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @cm_alloc_response_msg(%struct.TYPE_6__* %29, i32 %32, %struct.ib_mad_send_buf** %5)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %88

37:                                               ; preds = %26
  %38 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %39 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %38, i32 0, i32 0
  %40 = call i32 @spin_lock_irq(i32* %39)
  %41 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %42 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %70 [
    i32 129, label %45
    i32 128, label %62
  ]

45:                                               ; preds = %37
  %46 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %47 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.cm_mra_msg*
  %50 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %51 = load i32, i32* @CM_MSG_RESPONSE_REQ, align 4
  %52 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %53 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %56 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %59 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @cm_format_mra(%struct.cm_mra_msg* %49, %struct.cm_id_private* %50, i32 %51, i32 %54, i32 %57, i32 %60)
  br label %71

62:                                               ; preds = %37
  %63 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %64 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.cm_rej_msg*
  %67 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %68 = load i32, i32* @IB_CM_REJ_STALE_CONN, align 4
  %69 = call i32 @cm_format_rej(%struct.cm_rej_msg* %66, %struct.cm_id_private* %67, i32 %68, i32* null, i32 0, i32* null, i32 0)
  br label %71

70:                                               ; preds = %37
  br label %81

71:                                               ; preds = %62, %45
  %72 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %73 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock_irq(i32* %73)
  %75 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %76 = call i32 @ib_post_send_mad(%struct.ib_mad_send_buf* %75, i32* null)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %85

80:                                               ; preds = %71
  br label %88

81:                                               ; preds = %70
  %82 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %83 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %82, i32 0, i32 0
  %84 = call i32 @spin_unlock_irq(i32* %83)
  br label %85

85:                                               ; preds = %81, %79
  %86 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %87 = call i32 @cm_free_msg(%struct.ib_mad_send_buf* %86)
  br label %88

88:                                               ; preds = %85, %80, %36, %25
  ret void
}

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @cm_alloc_response_msg(%struct.TYPE_6__*, i32, %struct.ib_mad_send_buf**) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @cm_format_mra(%struct.cm_mra_msg*, %struct.cm_id_private*, i32, i32, i32, i32) #1

declare dso_local i32 @cm_format_rej(%struct.cm_rej_msg*, %struct.cm_id_private*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ib_post_send_mad(%struct.ib_mad_send_buf*, i32*) #1

declare dso_local i32 @cm_free_msg(%struct.ib_mad_send_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
