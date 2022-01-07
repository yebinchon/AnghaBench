; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_process_send_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_process_send_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_send_buf = type { %struct.cm_id_private** }
%struct.cm_id_private = type { i32, %struct.TYPE_5__, %struct.ib_mad_send_buf* }
%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_5__*, %struct.ib_cm_event*)* }
%struct.ib_cm_event = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"CM: failed sending MAD in state %d. (%s)\0A\00", align 1
@IB_CM_REQ_ERROR = common dso_local global i32 0, align 4
@IB_CM_REP_ERROR = common dso_local global i32 0, align 4
@IB_CM_DREQ_ERROR = common dso_local global i32 0, align 4
@IB_CM_IDLE = common dso_local global i32 0, align 4
@IB_CM_SIDR_REQ_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_send_buf*, i32)* @cm_process_send_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_process_send_error(%struct.ib_mad_send_buf* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_mad_send_buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cm_id_private*, align 8
  %6 = alloca %struct.ib_cm_event, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ib_mad_send_buf* %0, %struct.ib_mad_send_buf** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 @memset(%struct.ib_cm_event* %6, i32 0, i32 8)
  %10 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %3, align 8
  %11 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %10, i32 0, i32 0
  %12 = load %struct.cm_id_private**, %struct.cm_id_private*** %11, align 8
  %13 = getelementptr inbounds %struct.cm_id_private*, %struct.cm_id_private** %12, i64 0
  %14 = load %struct.cm_id_private*, %struct.cm_id_private** %13, align 8
  store %struct.cm_id_private* %14, %struct.cm_id_private** %5, align 8
  %15 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %16 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %3, align 8
  %19 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %18, i32 0, i32 0
  %20 = load %struct.cm_id_private**, %struct.cm_id_private*** %19, align 8
  %21 = getelementptr inbounds %struct.cm_id_private*, %struct.cm_id_private** %20, i64 1
  %22 = load %struct.cm_id_private*, %struct.cm_id_private** %21, align 8
  %23 = ptrtoint %struct.cm_id_private* %22 to i64
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %3, align 8
  %26 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %27 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %26, i32 0, i32 2
  %28 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %27, align 8
  %29 = icmp ne %struct.ib_mad_send_buf* %25, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %33 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %2
  br label %90

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @ib_wc_status_msg(i32 %40)
  %42 = call i32 @pr_debug_ratelimited(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %41)
  %43 = load i32, i32* %7, align 4
  switch i32 %43, label %66 [
    i32 129, label %44
    i32 131, label %44
    i32 130, label %49
    i32 132, label %49
    i32 133, label %54
    i32 128, label %59
  ]

44:                                               ; preds = %38, %38
  %45 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %46 = call i32 @cm_reset_to_idle(%struct.cm_id_private* %45)
  %47 = load i32, i32* @IB_CM_REQ_ERROR, align 4
  %48 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %6, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  br label %67

49:                                               ; preds = %38, %38
  %50 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %51 = call i32 @cm_reset_to_idle(%struct.cm_id_private* %50)
  %52 = load i32, i32* @IB_CM_REP_ERROR, align 4
  %53 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %6, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  br label %67

54:                                               ; preds = %38
  %55 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %56 = call i32 @cm_enter_timewait(%struct.cm_id_private* %55)
  %57 = load i32, i32* @IB_CM_DREQ_ERROR, align 4
  %58 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %6, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  br label %67

59:                                               ; preds = %38
  %60 = load i32, i32* @IB_CM_IDLE, align 4
  %61 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %62 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load i32, i32* @IB_CM_SIDR_REQ_ERROR, align 4
  %65 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %6, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  br label %67

66:                                               ; preds = %38
  br label %90

67:                                               ; preds = %59, %54, %49, %44
  %68 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %69 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock_irq(i32* %69)
  %71 = load i32, i32* %4, align 4
  %72 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %6, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %75 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32 (%struct.TYPE_5__*, %struct.ib_cm_event*)*, i32 (%struct.TYPE_5__*, %struct.ib_cm_event*)** %76, align 8
  %78 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %79 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %78, i32 0, i32 1
  %80 = call i32 %77(%struct.TYPE_5__* %79, %struct.ib_cm_event* %6)
  store i32 %80, i32* %8, align 4
  %81 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %3, align 8
  %82 = call i32 @cm_free_msg(%struct.ib_mad_send_buf* %81)
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %67
  %86 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %87 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %86, i32 0, i32 1
  %88 = call i32 @ib_destroy_cm_id(%struct.TYPE_5__* %87)
  br label %89

89:                                               ; preds = %85, %67
  br label %96

90:                                               ; preds = %66, %37
  %91 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %92 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %91, i32 0, i32 0
  %93 = call i32 @spin_unlock_irq(i32* %92)
  %94 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %3, align 8
  %95 = call i32 @cm_free_msg(%struct.ib_mad_send_buf* %94)
  br label %96

96:                                               ; preds = %90, %89
  ret void
}

declare dso_local i32 @memset(%struct.ib_cm_event*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @pr_debug_ratelimited(i8*, i32, i32) #1

declare dso_local i32 @ib_wc_status_msg(i32) #1

declare dso_local i32 @cm_reset_to_idle(%struct.cm_id_private*) #1

declare dso_local i32 @cm_enter_timewait(%struct.cm_id_private*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cm_free_msg(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @ib_destroy_cm_id(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
