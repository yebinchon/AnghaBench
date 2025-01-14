; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_efa_com_submit_admin_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_efa_com_submit_admin_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_comp_ctx = type { i32 }
%struct.efa_com_admin_queue = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.efa_admin_aq_entry = type { i32 }
%struct.efa_admin_acq_entry = type { i32 }

@EFA_AQ_STATE_RUNNING_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Admin queue is closed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.efa_comp_ctx* (%struct.efa_com_admin_queue*, %struct.efa_admin_aq_entry*, i64, %struct.efa_admin_acq_entry*, i64)* @efa_com_submit_admin_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.efa_comp_ctx* @efa_com_submit_admin_cmd(%struct.efa_com_admin_queue* %0, %struct.efa_admin_aq_entry* %1, i64 %2, %struct.efa_admin_acq_entry* %3, i64 %4) #0 {
  %6 = alloca %struct.efa_comp_ctx*, align 8
  %7 = alloca %struct.efa_com_admin_queue*, align 8
  %8 = alloca %struct.efa_admin_aq_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.efa_admin_acq_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.efa_comp_ctx*, align 8
  store %struct.efa_com_admin_queue* %0, %struct.efa_com_admin_queue** %7, align 8
  store %struct.efa_admin_aq_entry* %1, %struct.efa_admin_aq_entry** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.efa_admin_acq_entry* %3, %struct.efa_admin_acq_entry** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %14 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load i32, i32* @EFA_AQ_STATE_RUNNING_BIT, align 4
  %18 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %19 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %18, i32 0, i32 0
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %5
  %23 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %24 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ibdev_err_ratelimited(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %28 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.efa_comp_ctx* @ERR_PTR(i32 %32)
  store %struct.efa_comp_ctx* %33, %struct.efa_comp_ctx** %6, align 8
  br label %55

34:                                               ; preds = %5
  %35 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %36 = load %struct.efa_admin_aq_entry*, %struct.efa_admin_aq_entry** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.efa_admin_acq_entry*, %struct.efa_admin_acq_entry** %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call %struct.efa_comp_ctx* @__efa_com_submit_admin_cmd(%struct.efa_com_admin_queue* %35, %struct.efa_admin_aq_entry* %36, i64 %37, %struct.efa_admin_acq_entry* %38, i64 %39)
  store %struct.efa_comp_ctx* %40, %struct.efa_comp_ctx** %12, align 8
  %41 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %42 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %12, align 8
  %46 = call i64 @IS_ERR(%struct.efa_comp_ctx* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %34
  %49 = load i32, i32* @EFA_AQ_STATE_RUNNING_BIT, align 4
  %50 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %51 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %50, i32 0, i32 0
  %52 = call i32 @clear_bit(i32 %49, i32* %51)
  br label %53

53:                                               ; preds = %48, %34
  %54 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %12, align 8
  store %struct.efa_comp_ctx* %54, %struct.efa_comp_ctx** %6, align 8
  br label %55

55:                                               ; preds = %53, %22
  %56 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %6, align 8
  ret %struct.efa_comp_ctx* %56
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ibdev_err_ratelimited(i32, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.efa_comp_ctx* @ERR_PTR(i32) #1

declare dso_local %struct.efa_comp_ctx* @__efa_com_submit_admin_cmd(%struct.efa_com_admin_queue*, %struct.efa_admin_aq_entry*, i64, %struct.efa_admin_acq_entry*, i64) #1

declare dso_local i64 @IS_ERR(%struct.efa_comp_ctx*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
