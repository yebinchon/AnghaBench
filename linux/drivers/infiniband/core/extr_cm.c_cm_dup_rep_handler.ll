; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_dup_rep_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_dup_rep_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_work = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.cm_id_private = type { i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.cm_rep_msg = type { i32, i32 }
%struct.ib_mad_send_buf = type { i64 }
%struct.cm_rtu_msg = type { i32 }
%struct.cm_mra_msg = type { i32 }

@CM_RECV_DUPLICATES = common dso_local global i64 0, align 8
@CM_REP_COUNTER = common dso_local global i64 0, align 8
@IB_CM_ESTABLISHED = common dso_local global i64 0, align 8
@IB_CM_MRA_REP_SENT = common dso_local global i64 0, align 8
@CM_MSG_RESPONSE_REP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_work*)* @cm_dup_rep_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_dup_rep_handler(%struct.cm_work* %0) #0 {
  %2 = alloca %struct.cm_work*, align 8
  %3 = alloca %struct.cm_id_private*, align 8
  %4 = alloca %struct.cm_rep_msg*, align 8
  %5 = alloca %struct.ib_mad_send_buf*, align 8
  %6 = alloca i32, align 4
  store %struct.cm_work* %0, %struct.cm_work** %2, align 8
  store %struct.ib_mad_send_buf* null, %struct.ib_mad_send_buf** %5, align 8
  %7 = load %struct.cm_work*, %struct.cm_work** %2, align 8
  %8 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %7, i32 0, i32 0
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.cm_rep_msg*
  store %struct.cm_rep_msg* %13, %struct.cm_rep_msg** %4, align 8
  %14 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %4, align 8
  %15 = getelementptr inbounds %struct.cm_rep_msg, %struct.cm_rep_msg* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %4, align 8
  %18 = getelementptr inbounds %struct.cm_rep_msg, %struct.cm_rep_msg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.cm_id_private* @cm_acquire_id(i32 %16, i32 %19)
  store %struct.cm_id_private* %20, %struct.cm_id_private** %3, align 8
  %21 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  %22 = icmp ne %struct.cm_id_private* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %116

24:                                               ; preds = %1
  %25 = load %struct.cm_work*, %struct.cm_work** %2, align 8
  %26 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load i64, i64* @CM_RECV_DUPLICATES, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @CM_REP_COUNTER, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = call i32 @atomic_long_inc(i32* %35)
  %37 = load %struct.cm_work*, %struct.cm_work** %2, align 8
  %38 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = load %struct.cm_work*, %struct.cm_work** %2, align 8
  %41 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = call i32 @cm_alloc_response_msg(%struct.TYPE_9__* %39, %struct.TYPE_10__* %42, %struct.ib_mad_send_buf** %5)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %24
  br label %113

47:                                               ; preds = %24
  %48 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  %49 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %48, i32 0, i32 0
  %50 = call i32 @spin_lock_irq(i32* %49)
  %51 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  %52 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IB_CM_ESTABLISHED, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %47
  %58 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %59 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.cm_rtu_msg*
  %62 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  %63 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  %64 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  %67 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cm_format_rtu(%struct.cm_rtu_msg* %61, %struct.cm_id_private* %62, i32 %65, i32 %68)
  br label %96

70:                                               ; preds = %47
  %71 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  %72 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @IB_CM_MRA_REP_SENT, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %70
  %78 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %79 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.cm_mra_msg*
  %82 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  %83 = load i32, i32* @CM_MSG_RESPONSE_REP, align 4
  %84 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  %85 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  %88 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  %91 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @cm_format_mra(%struct.cm_mra_msg* %81, %struct.cm_id_private* %82, i32 %83, i32 %86, i32 %89, i32 %92)
  br label %95

94:                                               ; preds = %70
  br label %106

95:                                               ; preds = %77
  br label %96

96:                                               ; preds = %95, %57
  %97 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  %98 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %97, i32 0, i32 0
  %99 = call i32 @spin_unlock_irq(i32* %98)
  %100 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %101 = call i32 @ib_post_send_mad(%struct.ib_mad_send_buf* %100, i32* null)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %110

105:                                              ; preds = %96
  br label %113

106:                                              ; preds = %94
  %107 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  %108 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %107, i32 0, i32 0
  %109 = call i32 @spin_unlock_irq(i32* %108)
  br label %110

110:                                              ; preds = %106, %104
  %111 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %112 = call i32 @cm_free_msg(%struct.ib_mad_send_buf* %111)
  br label %113

113:                                              ; preds = %110, %105, %46
  %114 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  %115 = call i32 @cm_deref_id(%struct.cm_id_private* %114)
  br label %116

116:                                              ; preds = %113, %23
  ret void
}

declare dso_local %struct.cm_id_private* @cm_acquire_id(i32, i32) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @cm_alloc_response_msg(%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.ib_mad_send_buf**) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @cm_format_rtu(%struct.cm_rtu_msg*, %struct.cm_id_private*, i32, i32) #1

declare dso_local i32 @cm_format_mra(%struct.cm_mra_msg*, %struct.cm_id_private*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ib_post_send_mad(%struct.ib_mad_send_buf*, i32*) #1

declare dso_local i32 @cm_free_msg(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @cm_deref_id(%struct.cm_id_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
