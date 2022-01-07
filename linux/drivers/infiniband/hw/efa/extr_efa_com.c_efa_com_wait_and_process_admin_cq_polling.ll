; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_efa_com_wait_and_process_admin_cq_polling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_efa_com_wait_and_process_admin_cq_polling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_comp_ctx = type { i64, i32 }
%struct.efa_com_admin_queue = type { i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@EFA_CMD_SUBMITTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Wait for completion (polling) timeout\0A\00", align 1
@EFA_AQ_STATE_RUNNING_BIT = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efa_comp_ctx*, %struct.efa_com_admin_queue*)* @efa_com_wait_and_process_admin_cq_polling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efa_com_wait_and_process_admin_cq_polling(%struct.efa_comp_ctx* %0, %struct.efa_com_admin_queue* %1) #0 {
  %3 = alloca %struct.efa_comp_ctx*, align 8
  %4 = alloca %struct.efa_com_admin_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.efa_comp_ctx* %0, %struct.efa_comp_ctx** %3, align 8
  store %struct.efa_com_admin_queue* %1, %struct.efa_com_admin_queue** %4, align 8
  %8 = load i64, i64* @jiffies, align 8
  %9 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %4, align 8
  %10 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @usecs_to_jiffies(i32 %11)
  %13 = add i64 %8, %12
  store i64 %13, i64* %5, align 8
  br label %14

14:                                               ; preds = %2, %52
  %15 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %4, align 8
  %16 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %4, align 8
  %21 = call i32 @efa_com_handle_admin_completion(%struct.efa_com_admin_queue* %20)
  %22 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %4, align 8
  %23 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @EFA_CMD_SUBMITTED, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %14
  br label %57

33:                                               ; preds = %14
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @time_is_before_jiffies(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %4, align 8
  %39 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ibdev_err_ratelimited(i32 %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %4, align 8
  %43 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @atomic64_inc(i32* %44)
  %46 = load i32, i32* @EFA_AQ_STATE_RUNNING_BIT, align 4
  %47 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %4, align 8
  %48 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %47, i32 0, i32 1
  %49 = call i32 @clear_bit(i32 %46, i32* %48)
  %50 = load i32, i32* @ETIME, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %62

52:                                               ; preds = %33
  %53 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %4, align 8
  %54 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @msleep(i32 %55)
  br label %14

57:                                               ; preds = %32
  %58 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %3, align 8
  %59 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @efa_com_comp_status_to_errno(i32 %60)
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %57, %37
  %63 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %4, align 8
  %64 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %3, align 8
  %65 = call i32 @efa_com_put_comp_ctx(%struct.efa_com_admin_queue* %63, %struct.efa_comp_ctx* %64)
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @efa_com_handle_admin_completion(%struct.efa_com_admin_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i32 @ibdev_err_ratelimited(i32, i8*) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @efa_com_comp_status_to_errno(i32) #1

declare dso_local i32 @efa_com_put_comp_ctx(%struct.efa_com_admin_queue*, %struct.efa_comp_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
