; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_rtu_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_rtu_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_work = type { i32, %struct.TYPE_13__*, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.cm_id_private = type { i32, i32, i32, i32, %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.cm_rtu_msg = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_CM_REP_SENT = common dso_local global i64 0, align 8
@IB_CM_MRA_REP_RCVD = common dso_local global i64 0, align 8
@CM_RECV_DUPLICATES = common dso_local global i64 0, align 8
@CM_RTU_COUNTER = common dso_local global i64 0, align 8
@IB_CM_ESTABLISHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_work*)* @cm_rtu_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_rtu_handler(%struct.cm_work* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cm_work*, align 8
  %4 = alloca %struct.cm_id_private*, align 8
  %5 = alloca %struct.cm_rtu_msg*, align 8
  %6 = alloca i32, align 4
  store %struct.cm_work* %0, %struct.cm_work** %3, align 8
  %7 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %8 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %7, i32 0, i32 3
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.cm_rtu_msg*
  store %struct.cm_rtu_msg* %13, %struct.cm_rtu_msg** %5, align 8
  %14 = load %struct.cm_rtu_msg*, %struct.cm_rtu_msg** %5, align 8
  %15 = getelementptr inbounds %struct.cm_rtu_msg, %struct.cm_rtu_msg* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cm_rtu_msg*, %struct.cm_rtu_msg** %5, align 8
  %18 = getelementptr inbounds %struct.cm_rtu_msg, %struct.cm_rtu_msg* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.cm_id_private* @cm_acquire_id(i32 %16, i32 %19)
  store %struct.cm_id_private* %20, %struct.cm_id_private** %4, align 8
  %21 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %22 = icmp ne %struct.cm_id_private* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %109

26:                                               ; preds = %1
  %27 = load %struct.cm_rtu_msg*, %struct.cm_rtu_msg** %5, align 8
  %28 = getelementptr inbounds %struct.cm_rtu_msg, %struct.cm_rtu_msg* %27, i32 0, i32 0
  %29 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %30 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  store i32* %28, i32** %31, align 8
  %32 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %33 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_irq(i32* %33)
  %35 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %36 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IB_CM_REP_SENT, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %26
  %42 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %43 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IB_CM_MRA_REP_RCVD, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %41
  %49 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %50 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock_irq(i32* %50)
  %52 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %53 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %52, i32 0, i32 1
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = load i64, i64* @CM_RECV_DUPLICATES, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @CM_RTU_COUNTER, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = call i32 @atomic_long_inc(i32* %62)
  br label %104

64:                                               ; preds = %41, %26
  %65 = load i64, i64* @IB_CM_ESTABLISHED, align 8
  %66 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %67 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  %69 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %70 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %76 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ib_cancel_mad(i32 %74, i32 %77)
  %79 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %80 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %79, i32 0, i32 2
  %81 = call i32 @atomic_inc_and_test(i32* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %64
  %85 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %86 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %85, i32 0, i32 0
  %87 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %88 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %87, i32 0, i32 1
  %89 = call i32 @list_add_tail(i32* %86, i32* %88)
  br label %90

90:                                               ; preds = %84, %64
  %91 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %92 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %91, i32 0, i32 0
  %93 = call i32 @spin_unlock_irq(i32* %92)
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %98 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %99 = call i32 @cm_process_work(%struct.cm_id_private* %97, %struct.cm_work* %98)
  br label %103

100:                                              ; preds = %90
  %101 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %102 = call i32 @cm_deref_id(%struct.cm_id_private* %101)
  br label %103

103:                                              ; preds = %100, %96
  store i32 0, i32* %2, align 4
  br label %109

104:                                              ; preds = %48
  %105 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %106 = call i32 @cm_deref_id(%struct.cm_id_private* %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %104, %103, %23
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.cm_id_private* @cm_acquire_id(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @ib_cancel_mad(i32, i32) #1

declare dso_local i32 @atomic_inc_and_test(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @cm_process_work(%struct.cm_id_private*, %struct.cm_work*) #1

declare dso_local i32 @cm_deref_id(%struct.cm_id_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
