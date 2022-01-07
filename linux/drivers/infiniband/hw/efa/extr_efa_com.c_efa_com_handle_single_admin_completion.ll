; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_efa_com_handle_single_admin_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_efa_com_handle_single_admin_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_com_admin_queue = type { i32, i32 }
%struct.efa_admin_acq_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.efa_comp_ctx = type { i32, i32, i64, i32, i32 }

@EFA_ADMIN_ACQ_COMMON_DESC_COMMAND_ID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"comp_ctx is NULL. Changing the admin queue running state\0A\00", align 1
@EFA_AQ_STATE_RUNNING_BIT = common dso_local global i32 0, align 4
@EFA_CMD_COMPLETED = common dso_local global i32 0, align 4
@EFA_AQ_STATE_POLLING_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efa_com_admin_queue*, %struct.efa_admin_acq_entry*)* @efa_com_handle_single_admin_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efa_com_handle_single_admin_completion(%struct.efa_com_admin_queue* %0, %struct.efa_admin_acq_entry* %1) #0 {
  %3 = alloca %struct.efa_com_admin_queue*, align 8
  %4 = alloca %struct.efa_admin_acq_entry*, align 8
  %5 = alloca %struct.efa_comp_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.efa_com_admin_queue* %0, %struct.efa_com_admin_queue** %3, align 8
  store %struct.efa_admin_acq_entry* %1, %struct.efa_admin_acq_entry** %4, align 8
  %7 = load %struct.efa_admin_acq_entry*, %struct.efa_admin_acq_entry** %4, align 8
  %8 = getelementptr inbounds %struct.efa_admin_acq_entry, %struct.efa_admin_acq_entry* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @EFA_ADMIN_ACQ_COMMON_DESC_COMMAND_ID_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %3, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.efa_comp_ctx* @efa_com_get_comp_ctx(%struct.efa_com_admin_queue* %13, i32 %14, i32 0)
  store %struct.efa_comp_ctx* %15, %struct.efa_comp_ctx** %5, align 8
  %16 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %5, align 8
  %17 = icmp ne %struct.efa_comp_ctx* %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %2
  %19 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %3, align 8
  %20 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ibdev_err(i32 %21, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EFA_AQ_STATE_RUNNING_BIT, align 4
  %24 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %3, align 8
  %25 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %24, i32 0, i32 0
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  br label %60

27:                                               ; preds = %2
  %28 = load i32, i32* @EFA_CMD_COMPLETED, align 4
  %29 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.efa_admin_acq_entry*, %struct.efa_admin_acq_entry** %4, align 8
  %32 = getelementptr inbounds %struct.efa_admin_acq_entry, %struct.efa_admin_acq_entry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %27
  %42 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.efa_admin_acq_entry*, %struct.efa_admin_acq_entry** %4, align 8
  %46 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memcpy(i64 %44, %struct.efa_admin_acq_entry* %45, i32 %48)
  br label %50

50:                                               ; preds = %41, %27
  %51 = load i32, i32* @EFA_AQ_STATE_POLLING_BIT, align 4
  %52 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %3, align 8
  %53 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %52, i32 0, i32 0
  %54 = call i32 @test_bit(i32 %51, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %5, align 8
  %58 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %57, i32 0, i32 0
  %59 = call i32 @complete(i32* %58)
  br label %60

60:                                               ; preds = %18, %56, %50
  ret void
}

declare dso_local %struct.efa_comp_ctx* @efa_com_get_comp_ctx(%struct.efa_com_admin_queue*, i32, i32) #1

declare dso_local i32 @ibdev_err(i32, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i64, %struct.efa_admin_acq_entry*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
