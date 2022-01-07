; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_apr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_apr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_work = type { i32, %struct.TYPE_18__, %struct.TYPE_15__*, %struct.TYPE_13__* }
%struct.TYPE_18__ = type { i32*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.cm_id_private = type { i32, i32, i32, i32*, %struct.TYPE_11__, %struct.TYPE_19__ }
%struct.TYPE_11__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.cm_apr_msg = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_CM_ESTABLISHED = common dso_local global i64 0, align 8
@IB_CM_LAP_SENT = common dso_local global i64 0, align 8
@IB_CM_MRA_LAP_RCVD = common dso_local global i64 0, align 8
@IB_CM_LAP_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_work*)* @cm_apr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_apr_handler(%struct.cm_work* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cm_work*, align 8
  %4 = alloca %struct.cm_id_private*, align 8
  %5 = alloca %struct.cm_apr_msg*, align 8
  %6 = alloca i32, align 4
  store %struct.cm_work* %0, %struct.cm_work** %3, align 8
  %7 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %8 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %7, i32 0, i32 3
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %15 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %14, i32 0, i32 3
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @rdma_protocol_roce(i32 %13, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %147

24:                                               ; preds = %1
  %25 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %26 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %25, i32 0, i32 2
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.cm_apr_msg*
  store %struct.cm_apr_msg* %31, %struct.cm_apr_msg** %5, align 8
  %32 = load %struct.cm_apr_msg*, %struct.cm_apr_msg** %5, align 8
  %33 = getelementptr inbounds %struct.cm_apr_msg, %struct.cm_apr_msg* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cm_apr_msg*, %struct.cm_apr_msg** %5, align 8
  %36 = getelementptr inbounds %struct.cm_apr_msg, %struct.cm_apr_msg* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.cm_id_private* @cm_acquire_id(i32 %34, i32 %37)
  store %struct.cm_id_private* %38, %struct.cm_id_private** %4, align 8
  %39 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %40 = icmp ne %struct.cm_id_private* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %24
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %147

44:                                               ; preds = %24
  %45 = load %struct.cm_apr_msg*, %struct.cm_apr_msg** %5, align 8
  %46 = getelementptr inbounds %struct.cm_apr_msg, %struct.cm_apr_msg* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %49 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 2
  store i32 %47, i32* %52, align 8
  %53 = load %struct.cm_apr_msg*, %struct.cm_apr_msg** %5, align 8
  %54 = getelementptr inbounds %struct.cm_apr_msg, %struct.cm_apr_msg* %53, i32 0, i32 2
  %55 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %56 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  store i32* %54, i32** %59, align 8
  %60 = load %struct.cm_apr_msg*, %struct.cm_apr_msg** %5, align 8
  %61 = getelementptr inbounds %struct.cm_apr_msg, %struct.cm_apr_msg* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %64 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  store i32 %62, i32* %67, align 8
  %68 = load %struct.cm_apr_msg*, %struct.cm_apr_msg** %5, align 8
  %69 = getelementptr inbounds %struct.cm_apr_msg, %struct.cm_apr_msg* %68, i32 0, i32 0
  %70 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %71 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  store i32* %69, i32** %72, align 8
  %73 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %74 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %73, i32 0, i32 0
  %75 = call i32 @spin_lock_irq(i32* %74)
  %76 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %77 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @IB_CM_ESTABLISHED, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %96, label %82

82:                                               ; preds = %44
  %83 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %84 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @IB_CM_LAP_SENT, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %82
  %90 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %91 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @IB_CM_MRA_LAP_RCVD, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %89, %44
  %97 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %98 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %97, i32 0, i32 0
  %99 = call i32 @spin_unlock_irq(i32* %98)
  br label %142

100:                                              ; preds = %89, %82
  %101 = load i64, i64* @IB_CM_LAP_IDLE, align 8
  %102 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %103 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  store i64 %101, i64* %104, align 8
  %105 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %106 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %112 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @ib_cancel_mad(i32 %110, i32* %113)
  %115 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %116 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %115, i32 0, i32 3
  store i32* null, i32** %116, align 8
  %117 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %118 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %117, i32 0, i32 2
  %119 = call i32 @atomic_inc_and_test(i32* %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %100
  %123 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %124 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %123, i32 0, i32 0
  %125 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %126 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %125, i32 0, i32 1
  %127 = call i32 @list_add_tail(i32* %124, i32* %126)
  br label %128

128:                                              ; preds = %122, %100
  %129 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %130 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %129, i32 0, i32 0
  %131 = call i32 @spin_unlock_irq(i32* %130)
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %136 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %137 = call i32 @cm_process_work(%struct.cm_id_private* %135, %struct.cm_work* %136)
  br label %141

138:                                              ; preds = %128
  %139 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %140 = call i32 @cm_deref_id(%struct.cm_id_private* %139)
  br label %141

141:                                              ; preds = %138, %134
  store i32 0, i32* %2, align 4
  br label %147

142:                                              ; preds = %96
  %143 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %144 = call i32 @cm_deref_id(%struct.cm_id_private* %143)
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %142, %141, %41, %21
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i64 @rdma_protocol_roce(i32, i32) #1

declare dso_local %struct.cm_id_private* @cm_acquire_id(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ib_cancel_mad(i32, i32*) #1

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
