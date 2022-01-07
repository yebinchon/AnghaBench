; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_recv_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_recv_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.ib_mad_agent = type { %struct.cm_port* }
%struct.cm_port = type { %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32* }
%struct.ib_mad_send_buf = type { i32 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.cm_work = type { i32, %struct.cm_port*, %struct.ib_mad_recv_wc*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.cm_req_msg = type { i32 }

@IB_CM_REQ_RECEIVED = common dso_local global i32 0, align 4
@IB_CM_MRA_RECEIVED = common dso_local global i32 0, align 4
@IB_CM_REJ_RECEIVED = common dso_local global i32 0, align 4
@IB_CM_REP_RECEIVED = common dso_local global i32 0, align 4
@IB_CM_RTU_RECEIVED = common dso_local global i32 0, align 4
@IB_CM_DREQ_RECEIVED = common dso_local global i32 0, align 4
@IB_CM_DREP_RECEIVED = common dso_local global i32 0, align 4
@IB_CM_SIDR_REQ_RECEIVED = common dso_local global i32 0, align 4
@IB_CM_SIDR_REP_RECEIVED = common dso_local global i32 0, align 4
@IB_CM_LAP_RECEIVED = common dso_local global i32 0, align 4
@IB_CM_APR_RECEIVED = common dso_local global i32 0, align 4
@CM_RECV = common dso_local global i64 0, align 8
@CM_ATTR_ID_OFFSET = common dso_local global i64 0, align 8
@path = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@cm_work_handler = common dso_local global i32 0, align 4
@cm = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_agent*, %struct.ib_mad_send_buf*, %struct.ib_mad_recv_wc*)* @cm_recv_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_recv_handler(%struct.ib_mad_agent* %0, %struct.ib_mad_send_buf* %1, %struct.ib_mad_recv_wc* %2) #0 {
  %4 = alloca %struct.ib_mad_agent*, align 8
  %5 = alloca %struct.ib_mad_send_buf*, align 8
  %6 = alloca %struct.ib_mad_recv_wc*, align 8
  %7 = alloca %struct.cm_port*, align 8
  %8 = alloca %struct.cm_work*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_mad_agent* %0, %struct.ib_mad_agent** %4, align 8
  store %struct.ib_mad_send_buf* %1, %struct.ib_mad_send_buf** %5, align 8
  store %struct.ib_mad_recv_wc* %2, %struct.ib_mad_recv_wc** %6, align 8
  %14 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %15 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %14, i32 0, i32 0
  %16 = load %struct.cm_port*, %struct.cm_port** %15, align 8
  store %struct.cm_port* %16, %struct.cm_port** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %18 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %56 [
    i32 131, label %24
    i32 134, label %36
    i32 133, label %38
    i32 132, label %40
    i32 130, label %42
    i32 136, label %44
    i32 137, label %46
    i32 128, label %48
    i32 129, label %50
    i32 135, label %52
    i32 138, label %54
  ]

24:                                               ; preds = %3
  %25 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %26 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = bitcast %struct.TYPE_9__* %28 to %struct.cm_req_msg*
  %30 = call i32 @cm_req_has_alt_path(%struct.cm_req_msg* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = add nsw i32 1, %33
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* @IB_CM_REQ_RECEIVED, align 4
  store i32 %35, i32* %9, align 4
  br label %59

36:                                               ; preds = %3
  %37 = load i32, i32* @IB_CM_MRA_RECEIVED, align 4
  store i32 %37, i32* %9, align 4
  br label %59

38:                                               ; preds = %3
  %39 = load i32, i32* @IB_CM_REJ_RECEIVED, align 4
  store i32 %39, i32* %9, align 4
  br label %59

40:                                               ; preds = %3
  %41 = load i32, i32* @IB_CM_REP_RECEIVED, align 4
  store i32 %41, i32* %9, align 4
  br label %59

42:                                               ; preds = %3
  %43 = load i32, i32* @IB_CM_RTU_RECEIVED, align 4
  store i32 %43, i32* %9, align 4
  br label %59

44:                                               ; preds = %3
  %45 = load i32, i32* @IB_CM_DREQ_RECEIVED, align 4
  store i32 %45, i32* %9, align 4
  br label %59

46:                                               ; preds = %3
  %47 = load i32, i32* @IB_CM_DREP_RECEIVED, align 4
  store i32 %47, i32* %9, align 4
  br label %59

48:                                               ; preds = %3
  %49 = load i32, i32* @IB_CM_SIDR_REQ_RECEIVED, align 4
  store i32 %49, i32* %9, align 4
  br label %59

50:                                               ; preds = %3
  %51 = load i32, i32* @IB_CM_SIDR_REP_RECEIVED, align 4
  store i32 %51, i32* %9, align 4
  br label %59

52:                                               ; preds = %3
  store i32 1, i32* %12, align 4
  %53 = load i32, i32* @IB_CM_LAP_RECEIVED, align 4
  store i32 %53, i32* %9, align 4
  br label %59

54:                                               ; preds = %3
  %55 = load i32, i32* @IB_CM_APR_RECEIVED, align 4
  store i32 %55, i32* %9, align 4
  br label %59

56:                                               ; preds = %3
  %57 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %58 = call i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc* %57)
  br label %128

59:                                               ; preds = %54, %52, %50, %48, %46, %44, %42, %40, %38, %36, %24
  %60 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %61 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @be16_to_cpu(i32 %66)
  store i64 %67, i64* %11, align 8
  %68 = load %struct.cm_port*, %struct.cm_port** %7, align 8
  %69 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %68, i32 0, i32 1
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = load i64, i64* @CM_RECV, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* @CM_ATTR_ID_OFFSET, align 8
  %77 = sub i64 %75, %76
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = call i32 @atomic_long_inc(i32* %78)
  %80 = load %struct.cm_work*, %struct.cm_work** %8, align 8
  %81 = load i32, i32* @path, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @struct_size(%struct.cm_work* %80, i32 %81, i32 %82)
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call %struct.cm_work* @kmalloc(i32 %83, i32 %84)
  store %struct.cm_work* %85, %struct.cm_work** %8, align 8
  %86 = load %struct.cm_work*, %struct.cm_work** %8, align 8
  %87 = icmp ne %struct.cm_work* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %59
  %89 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %90 = call i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc* %89)
  br label %128

91:                                               ; preds = %59
  %92 = load %struct.cm_work*, %struct.cm_work** %8, align 8
  %93 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %92, i32 0, i32 0
  %94 = load i32, i32* @cm_work_handler, align 4
  %95 = call i32 @INIT_DELAYED_WORK(i32* %93, i32 %94)
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.cm_work*, %struct.cm_work** %8, align 8
  %98 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %101 = load %struct.cm_work*, %struct.cm_work** %8, align 8
  %102 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %101, i32 0, i32 2
  store %struct.ib_mad_recv_wc* %100, %struct.ib_mad_recv_wc** %102, align 8
  %103 = load %struct.cm_port*, %struct.cm_port** %7, align 8
  %104 = load %struct.cm_work*, %struct.cm_work** %8, align 8
  %105 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %104, i32 0, i32 1
  store %struct.cm_port* %103, %struct.cm_port** %105, align 8
  %106 = call i32 @spin_lock_irq(i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cm, i32 0, i32 0))
  %107 = load %struct.cm_port*, %struct.cm_port** %7, align 8
  %108 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %107, i32 0, i32 0
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %91
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cm, i32 0, i32 1), align 4
  %115 = load %struct.cm_work*, %struct.cm_work** %8, align 8
  %116 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %115, i32 0, i32 0
  %117 = call i32 @queue_delayed_work(i32 %114, i32* %116, i32 0)
  br label %119

118:                                              ; preds = %91
  store i32 1, i32* %13, align 4
  br label %119

119:                                              ; preds = %118, %113
  %120 = call i32 @spin_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cm, i32 0, i32 0))
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load %struct.cm_work*, %struct.cm_work** %8, align 8
  %125 = call i32 @kfree(%struct.cm_work* %124)
  %126 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %127 = call i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc* %126)
  br label %128

128:                                              ; preds = %56, %88, %123, %119
  ret void
}

declare dso_local i32 @cm_req_has_alt_path(%struct.cm_req_msg*) #1

declare dso_local i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local %struct.cm_work* @kmalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.cm_work*, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.cm_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
