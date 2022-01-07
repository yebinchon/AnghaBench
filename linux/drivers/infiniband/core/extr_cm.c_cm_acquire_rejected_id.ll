; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_acquire_rejected_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_acquire_rejected_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.cm_id_private = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.cm_rej_msg = type { i64, i32, i64, i32 }
%struct.cm_timewait_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IB_CM_REJ_TIMEOUT = common dso_local global i64 0, align 8
@cm = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@CM_MSG_RESPONSE_REQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cm_id_private* (%struct.cm_rej_msg*)* @cm_acquire_rejected_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cm_id_private* @cm_acquire_rejected_id(%struct.cm_rej_msg* %0) #0 {
  %2 = alloca %struct.cm_id_private*, align 8
  %3 = alloca %struct.cm_rej_msg*, align 8
  %4 = alloca %struct.cm_timewait_info*, align 8
  %5 = alloca %struct.cm_id_private*, align 8
  %6 = alloca i64, align 8
  store %struct.cm_rej_msg* %0, %struct.cm_rej_msg** %3, align 8
  %7 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %3, align 8
  %8 = getelementptr inbounds %struct.cm_rej_msg, %struct.cm_rej_msg* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %3, align 8
  %11 = getelementptr inbounds %struct.cm_rej_msg, %struct.cm_rej_msg* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @__be16_to_cpu(i32 %12)
  %14 = load i64, i64* @IB_CM_REJ_TIMEOUT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %1
  %17 = call i32 @spin_lock_irq(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cm, i32 0, i32 0))
  %18 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %3, align 8
  %19 = getelementptr inbounds %struct.cm_rej_msg, %struct.cm_rej_msg* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call %struct.cm_timewait_info* @cm_find_remote_id(i32 %22, i64 %23)
  store %struct.cm_timewait_info* %24, %struct.cm_timewait_info** %4, align 8
  %25 = load %struct.cm_timewait_info*, %struct.cm_timewait_info** %4, align 8
  %26 = icmp ne %struct.cm_timewait_info* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %16
  %28 = call i32 @spin_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cm, i32 0, i32 0))
  store %struct.cm_id_private* null, %struct.cm_id_private** %2, align 8
  br label %72

29:                                               ; preds = %16
  %30 = load %struct.cm_timewait_info*, %struct.cm_timewait_info** %4, align 8
  %31 = getelementptr inbounds %struct.cm_timewait_info, %struct.cm_timewait_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cm_local_id(i32 %33)
  %35 = call %struct.cm_id_private* @xa_load(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cm, i32 0, i32 1), i32 %34)
  store %struct.cm_id_private* %35, %struct.cm_id_private** %5, align 8
  %36 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %37 = icmp ne %struct.cm_id_private* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %29
  %39 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %40 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %47 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %46, i32 0, i32 0
  %48 = call i32 @atomic_inc(i32* %47)
  br label %50

49:                                               ; preds = %38
  store %struct.cm_id_private* null, %struct.cm_id_private** %5, align 8
  br label %50

50:                                               ; preds = %49, %45
  br label %51

51:                                               ; preds = %50, %29
  %52 = call i32 @spin_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cm, i32 0, i32 0))
  br label %70

53:                                               ; preds = %1
  %54 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %3, align 8
  %55 = call i64 @cm_rej_get_msg_rejected(%struct.cm_rej_msg* %54)
  %56 = load i64, i64* @CM_MSG_RESPONSE_REQ, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %3, align 8
  %60 = getelementptr inbounds %struct.cm_rej_msg, %struct.cm_rej_msg* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.cm_id_private* @cm_acquire_id(i32 %61, i64 0)
  store %struct.cm_id_private* %62, %struct.cm_id_private** %5, align 8
  br label %69

63:                                               ; preds = %53
  %64 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %3, align 8
  %65 = getelementptr inbounds %struct.cm_rej_msg, %struct.cm_rej_msg* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call %struct.cm_id_private* @cm_acquire_id(i32 %66, i64 %67)
  store %struct.cm_id_private* %68, %struct.cm_id_private** %5, align 8
  br label %69

69:                                               ; preds = %63, %58
  br label %70

70:                                               ; preds = %69, %51
  %71 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  store %struct.cm_id_private* %71, %struct.cm_id_private** %2, align 8
  br label %72

72:                                               ; preds = %70, %27
  %73 = load %struct.cm_id_private*, %struct.cm_id_private** %2, align 8
  ret %struct.cm_id_private* %73
}

declare dso_local i64 @__be16_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.cm_timewait_info* @cm_find_remote_id(i32, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.cm_id_private* @xa_load(i32*, i32) #1

declare dso_local i32 @cm_local_id(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @cm_rej_get_msg_rejected(%struct.cm_rej_msg*) #1

declare dso_local %struct.cm_id_private* @cm_acquire_id(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
