; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_match_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_match_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.cm_work = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.cm_id_private = type { i32, %struct.ib_cm_id, i32, i32 }
%struct.ib_cm_id = type { i32, i32 }
%struct.cm_timewait_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.cm_req_msg = type { i32 }

@cm = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@IB_CM_REJ_STALE_CONN = common dso_local global i32 0, align 4
@CM_MSG_RESPONSE_REQ = common dso_local global i32 0, align 4
@IB_CM_REJ_INVALID_SERVICE_ID = common dso_local global i32 0, align 4
@IB_CM_REQ_RCVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cm_id_private* (%struct.cm_work*, %struct.cm_id_private*)* @cm_match_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cm_id_private* @cm_match_req(%struct.cm_work* %0, %struct.cm_id_private* %1) #0 {
  %3 = alloca %struct.cm_id_private*, align 8
  %4 = alloca %struct.cm_work*, align 8
  %5 = alloca %struct.cm_id_private*, align 8
  %6 = alloca %struct.cm_id_private*, align 8
  %7 = alloca %struct.cm_id_private*, align 8
  %8 = alloca %struct.cm_timewait_info*, align 8
  %9 = alloca %struct.cm_req_msg*, align 8
  %10 = alloca %struct.ib_cm_id*, align 8
  store %struct.cm_work* %0, %struct.cm_work** %4, align 8
  store %struct.cm_id_private* %1, %struct.cm_id_private** %5, align 8
  %11 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %12 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.cm_req_msg*
  store %struct.cm_req_msg* %17, %struct.cm_req_msg** %9, align 8
  %18 = call i32 @spin_lock_irq(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cm, i32 0, i32 0))
  %19 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %20 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.cm_timewait_info* @cm_insert_remote_id(i32 %21)
  store %struct.cm_timewait_info* %22, %struct.cm_timewait_info** %8, align 8
  %23 = load %struct.cm_timewait_info*, %struct.cm_timewait_info** %8, align 8
  %24 = icmp ne %struct.cm_timewait_info* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %2
  %26 = load %struct.cm_timewait_info*, %struct.cm_timewait_info** %8, align 8
  %27 = getelementptr inbounds %struct.cm_timewait_info, %struct.cm_timewait_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cm_timewait_info*, %struct.cm_timewait_info** %8, align 8
  %31 = getelementptr inbounds %struct.cm_timewait_info, %struct.cm_timewait_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.cm_id_private* @cm_get_id(i32 %29, i32 %33)
  store %struct.cm_id_private* %34, %struct.cm_id_private** %7, align 8
  %35 = call i32 @spin_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cm, i32 0, i32 0))
  %36 = load %struct.cm_id_private*, %struct.cm_id_private** %7, align 8
  %37 = icmp ne %struct.cm_id_private* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %25
  %39 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %40 = load %struct.cm_id_private*, %struct.cm_id_private** %7, align 8
  %41 = call i32 @cm_dup_req_handler(%struct.cm_work* %39, %struct.cm_id_private* %40)
  %42 = load %struct.cm_id_private*, %struct.cm_id_private** %7, align 8
  %43 = call i32 @cm_deref_id(%struct.cm_id_private* %42)
  br label %44

44:                                               ; preds = %38, %25
  store %struct.cm_id_private* null, %struct.cm_id_private** %3, align 8
  br label %129

45:                                               ; preds = %2
  %46 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %47 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.cm_timewait_info* @cm_insert_remote_qpn(i32 %48)
  store %struct.cm_timewait_info* %49, %struct.cm_timewait_info** %8, align 8
  %50 = load %struct.cm_timewait_info*, %struct.cm_timewait_info** %8, align 8
  %51 = icmp ne %struct.cm_timewait_info* %50, null
  br i1 %51, label %52, label %86

52:                                               ; preds = %45
  %53 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %54 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cm_cleanup_timewait(i32 %55)
  %57 = load %struct.cm_timewait_info*, %struct.cm_timewait_info** %8, align 8
  %58 = getelementptr inbounds %struct.cm_timewait_info, %struct.cm_timewait_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.cm_timewait_info*, %struct.cm_timewait_info** %8, align 8
  %62 = getelementptr inbounds %struct.cm_timewait_info, %struct.cm_timewait_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.cm_id_private* @cm_get_id(i32 %60, i32 %64)
  store %struct.cm_id_private* %65, %struct.cm_id_private** %7, align 8
  %66 = call i32 @spin_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cm, i32 0, i32 0))
  %67 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %68 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %71 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load i32, i32* @IB_CM_REJ_STALE_CONN, align 4
  %74 = load i32, i32* @CM_MSG_RESPONSE_REQ, align 4
  %75 = call i32 @cm_issue_rej(i32 %69, %struct.TYPE_7__* %72, i32 %73, i32 %74, i32* null, i32 0)
  %76 = load %struct.cm_id_private*, %struct.cm_id_private** %7, align 8
  %77 = icmp ne %struct.cm_id_private* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %52
  %79 = load %struct.cm_id_private*, %struct.cm_id_private** %7, align 8
  %80 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %79, i32 0, i32 1
  store %struct.ib_cm_id* %80, %struct.ib_cm_id** %10, align 8
  %81 = load %struct.ib_cm_id*, %struct.ib_cm_id** %10, align 8
  %82 = call i32 @ib_send_cm_dreq(%struct.ib_cm_id* %81, i32* null, i32 0)
  %83 = load %struct.cm_id_private*, %struct.cm_id_private** %7, align 8
  %84 = call i32 @cm_deref_id(%struct.cm_id_private* %83)
  br label %85

85:                                               ; preds = %78, %52
  store %struct.cm_id_private* null, %struct.cm_id_private** %3, align 8
  br label %129

86:                                               ; preds = %45
  %87 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %88 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.cm_req_msg*, %struct.cm_req_msg** %9, align 8
  %92 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call %struct.cm_id_private* @cm_find_listen(i32 %90, i32 %93)
  store %struct.cm_id_private* %94, %struct.cm_id_private** %6, align 8
  %95 = load %struct.cm_id_private*, %struct.cm_id_private** %6, align 8
  %96 = icmp ne %struct.cm_id_private* %95, null
  br i1 %96, label %112, label %97

97:                                               ; preds = %86
  %98 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %99 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @cm_cleanup_timewait(i32 %100)
  %102 = call i32 @spin_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cm, i32 0, i32 0))
  %103 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %104 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %107 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %106, i32 0, i32 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = load i32, i32* @IB_CM_REJ_INVALID_SERVICE_ID, align 4
  %110 = load i32, i32* @CM_MSG_RESPONSE_REQ, align 4
  %111 = call i32 @cm_issue_rej(i32 %105, %struct.TYPE_7__* %108, i32 %109, i32 %110, i32* null, i32 0)
  br label %127

112:                                              ; preds = %86
  %113 = load %struct.cm_id_private*, %struct.cm_id_private** %6, align 8
  %114 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %113, i32 0, i32 2
  %115 = call i32 @atomic_inc(i32* %114)
  %116 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %117 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %116, i32 0, i32 2
  %118 = call i32 @atomic_inc(i32* %117)
  %119 = load i32, i32* @IB_CM_REQ_RCVD, align 4
  %120 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %121 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 4
  %123 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %124 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %123, i32 0, i32 0
  %125 = call i32 @atomic_inc(i32* %124)
  %126 = call i32 @spin_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cm, i32 0, i32 0))
  br label %127

127:                                              ; preds = %112, %97
  %128 = load %struct.cm_id_private*, %struct.cm_id_private** %6, align 8
  store %struct.cm_id_private* %128, %struct.cm_id_private** %3, align 8
  br label %129

129:                                              ; preds = %127, %85, %44
  %130 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  ret %struct.cm_id_private* %130
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.cm_timewait_info* @cm_insert_remote_id(i32) #1

declare dso_local %struct.cm_id_private* @cm_get_id(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cm_dup_req_handler(%struct.cm_work*, %struct.cm_id_private*) #1

declare dso_local i32 @cm_deref_id(%struct.cm_id_private*) #1

declare dso_local %struct.cm_timewait_info* @cm_insert_remote_qpn(i32) #1

declare dso_local i32 @cm_cleanup_timewait(i32) #1

declare dso_local i32 @cm_issue_rej(i32, %struct.TYPE_7__*, i32, i32, i32*, i32) #1

declare dso_local i32 @ib_send_cm_dreq(%struct.ib_cm_id*, i32*, i32) #1

declare dso_local %struct.cm_id_private* @cm_find_listen(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
