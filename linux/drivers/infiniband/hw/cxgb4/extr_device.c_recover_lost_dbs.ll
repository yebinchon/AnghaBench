; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_device.c_recover_lost_dbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_device.c_recover_lost_dbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uld_ctx = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.qp_list = type { i32, %struct.c4iw_qp** }
%struct.c4iw_qp = type { %struct.TYPE_16__*, i32, %struct.TYPE_17__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_17__ = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i32 }

@.str = private unnamed_addr constant [73 x i8] c"%s: Fatal error - DB overflow recovery failed - error syncing SQ qid %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"%s: Fatal error - DB overflow recovery failed - error syncing RQ qid %u\0A\00", align 1
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uld_ctx*, %struct.qp_list*)* @recover_lost_dbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recover_lost_dbs(%struct.uld_ctx* %0, %struct.qp_list* %1) #0 {
  %3 = alloca %struct.uld_ctx*, align 8
  %4 = alloca %struct.qp_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.c4iw_qp*, align 8
  store %struct.uld_ctx* %0, %struct.uld_ctx** %3, align 8
  store %struct.qp_list* %1, %struct.qp_list** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %152, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.qp_list*, %struct.qp_list** %4, align 8
  %11 = getelementptr inbounds %struct.qp_list, %struct.qp_list* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %155

14:                                               ; preds = %8
  %15 = load %struct.qp_list*, %struct.qp_list** %4, align 8
  %16 = getelementptr inbounds %struct.qp_list, %struct.qp_list* %15, i32 0, i32 1
  %17 = load %struct.c4iw_qp**, %struct.c4iw_qp*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.c4iw_qp*, %struct.c4iw_qp** %17, i64 %19
  %21 = load %struct.c4iw_qp*, %struct.c4iw_qp** %20, align 8
  store %struct.c4iw_qp* %21, %struct.c4iw_qp** %7, align 8
  %22 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %23 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %22, i32 0, i32 0
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = call i32 @xa_lock_irq(i32* %25)
  %27 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %28 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %27, i32 0, i32 1
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %31 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %30, i32 0, i32 0
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %40 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %45 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %44, i32 0, i32 2
  %46 = call i32 @t4_sq_host_wq_pidx(%struct.TYPE_17__* %45)
  %47 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %48 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %47, i32 0, i32 2
  %49 = call i32 @t4_sq_wq_size(%struct.TYPE_17__* %48)
  %50 = call i32 @cxgb4_sync_txq_pidx(i32 %38, i32 %43, i32 %46, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %14
  %54 = load %struct.uld_ctx*, %struct.uld_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pci_name(i32 %57)
  %59 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %60 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @pr_err(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %63)
  %65 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %66 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %65, i32 0, i32 1
  %67 = call i32 @spin_unlock(i32* %66)
  %68 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %69 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %68, i32 0, i32 0
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = call i32 @xa_unlock_irq(i32* %71)
  br label %155

73:                                               ; preds = %14
  %74 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %75 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  %78 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %79 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %78, i32 0, i32 0
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %88 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %93 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %92, i32 0, i32 2
  %94 = call i32 @t4_rq_host_wq_pidx(%struct.TYPE_17__* %93)
  %95 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %96 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %95, i32 0, i32 2
  %97 = call i32 @t4_rq_wq_size(%struct.TYPE_17__* %96)
  %98 = call i32 @cxgb4_sync_txq_pidx(i32 %86, i32 %91, i32 %94, i32 %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %73
  %102 = load %struct.uld_ctx*, %struct.uld_ctx** %3, align 8
  %103 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @pci_name(i32 %105)
  %107 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %108 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @pr_err(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %111)
  %113 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %114 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %113, i32 0, i32 1
  %115 = call i32 @spin_unlock(i32* %114)
  %116 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %117 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %116, i32 0, i32 0
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  %120 = call i32 @xa_unlock_irq(i32* %119)
  br label %155

121:                                              ; preds = %73
  %122 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %123 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  store i64 0, i64* %125, align 8
  %126 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %127 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %126, i32 0, i32 1
  %128 = call i32 @spin_unlock(i32* %127)
  %129 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %130 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %129, i32 0, i32 0
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = call i32 @xa_unlock_irq(i32* %132)
  br label %134

134:                                              ; preds = %146, %121
  %135 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %136 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %135, i32 0, i32 0
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @cxgb4_dbfifo_count(i32 %143, i32 1)
  %145 = icmp sgt i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %134
  %147 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %148 = call i32 @set_current_state(i32 %147)
  %149 = call i32 @usecs_to_jiffies(i32 10)
  %150 = call i32 @schedule_timeout(i32 %149)
  br label %134

151:                                              ; preds = %134
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %5, align 4
  br label %8

155:                                              ; preds = %53, %101, %8
  ret void
}

declare dso_local i32 @xa_lock_irq(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cxgb4_sync_txq_pidx(i32, i32, i32, i32) #1

declare dso_local i32 @t4_sq_host_wq_pidx(%struct.TYPE_17__*) #1

declare dso_local i32 @t4_sq_wq_size(%struct.TYPE_17__*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @xa_unlock_irq(i32*) #1

declare dso_local i32 @t4_rq_host_wq_pidx(%struct.TYPE_17__*) #1

declare dso_local i32 @t4_rq_wq_size(%struct.TYPE_17__*) #1

declare dso_local i64 @cxgb4_dbfifo_count(i32, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
