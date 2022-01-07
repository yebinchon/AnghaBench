; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_efa_com_wait_and_process_admin_cq_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_efa_com_wait_and_process_admin_cq_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_comp_ctx = type { i64, i32, i32, i32 }
%struct.efa_com_admin_queue = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EFA_CMD_SUBMITTED = common dso_local global i64 0, align 8
@EFA_CMD_COMPLETED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [174 x i8] c"The device sent a completion but the driver didn't receive any MSI-X interrupt for admin cmd %s(%d) status %d (ctx: 0x%p, sq producer: %d, sq consumer: %d, cq consumer: %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [132 x i8] c"The device didn't send any completion for admin cmd %s(%d) status %d (ctx 0x%p, sq producer: %d, sq consumer: %d, cq consumer: %d)\0A\00", align 1
@EFA_AQ_STATE_RUNNING_BIT = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efa_comp_ctx*, %struct.efa_com_admin_queue*)* @efa_com_wait_and_process_admin_cq_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efa_com_wait_and_process_admin_cq_interrupts(%struct.efa_comp_ctx* %0, %struct.efa_com_admin_queue* %1) #0 {
  %3 = alloca %struct.efa_comp_ctx*, align 8
  %4 = alloca %struct.efa_com_admin_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.efa_comp_ctx* %0, %struct.efa_comp_ctx** %3, align 8
  store %struct.efa_com_admin_queue* %1, %struct.efa_com_admin_queue** %4, align 8
  %7 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %7, i32 0, i32 3
  %9 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %4, align 8
  %10 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @usecs_to_jiffies(i32 %11)
  %13 = call i32 @wait_for_completion_timeout(i32* %8, i32 %12)
  %14 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EFA_CMD_SUBMITTED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %104

19:                                               ; preds = %2
  %20 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %4, align 8
  %21 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %4, align 8
  %26 = call i32 @efa_com_handle_admin_completion(%struct.efa_com_admin_queue* %25)
  %27 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %4, align 8
  %28 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %4, align 8
  %33 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @atomic64_inc(i32* %34)
  %36 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @EFA_CMD_COMPLETED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %19
  %42 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %4, align 8
  %43 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @efa_com_cmd_str(i32 %47)
  %49 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %3, align 8
  %56 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %4, align 8
  %57 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %4, align 8
  %61 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %4, align 8
  %65 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ibdev_err_ratelimited(i32 %44, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51, i64 %54, %struct.efa_comp_ctx* %55, i32 %59, i32 %63, i32 %67)
  br label %97

69:                                               ; preds = %19
  %70 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %4, align 8
  %71 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %3, align 8
  %74 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @efa_com_cmd_str(i32 %75)
  %77 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %3, align 8
  %78 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %3, align 8
  %81 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %3, align 8
  %84 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %4, align 8
  %85 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %4, align 8
  %89 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %4, align 8
  %93 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ibdev_err_ratelimited(i32 %72, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %79, i64 %82, %struct.efa_comp_ctx* %83, i32 %87, i32 %91, i32 %95)
  br label %97

97:                                               ; preds = %69, %41
  %98 = load i32, i32* @EFA_AQ_STATE_RUNNING_BIT, align 4
  %99 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %4, align 8
  %100 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %99, i32 0, i32 0
  %101 = call i32 @clear_bit(i32 %98, i32* %100)
  %102 = load i32, i32* @ETIME, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %6, align 4
  br label %109

104:                                              ; preds = %2
  %105 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %3, align 8
  %106 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @efa_com_comp_status_to_errno(i32 %107)
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %104, %97
  %110 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %4, align 8
  %111 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %3, align 8
  %112 = call i32 @efa_com_put_comp_ctx(%struct.efa_com_admin_queue* %110, %struct.efa_comp_ctx* %111)
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @efa_com_handle_admin_completion(%struct.efa_com_admin_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @ibdev_err_ratelimited(i32, i8*, i32, i32, i64, %struct.efa_comp_ctx*, i32, i32, i32) #1

declare dso_local i32 @efa_com_cmd_str(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @efa_com_comp_status_to_errno(i32) #1

declare dso_local i32 @efa_com_put_comp_ctx(%struct.efa_com_admin_queue*, %struct.efa_comp_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
