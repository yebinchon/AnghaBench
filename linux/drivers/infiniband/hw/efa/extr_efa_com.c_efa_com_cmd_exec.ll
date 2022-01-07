; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_efa_com_cmd_exec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_efa_com_cmd_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_com_admin_queue = type { i32, i32 }
%struct.efa_admin_aq_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.efa_admin_acq_entry = type { i32 }
%struct.efa_comp_ctx = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%s (opcode %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to submit command %s (opcode %u) err %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Failed to process command %s (opcode %u) comp_status %d err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efa_com_cmd_exec(%struct.efa_com_admin_queue* %0, %struct.efa_admin_aq_entry* %1, i64 %2, %struct.efa_admin_acq_entry* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.efa_com_admin_queue*, align 8
  %8 = alloca %struct.efa_admin_aq_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.efa_admin_acq_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.efa_comp_ctx*, align 8
  %13 = alloca i32, align 4
  store %struct.efa_com_admin_queue* %0, %struct.efa_com_admin_queue** %7, align 8
  store %struct.efa_admin_aq_entry* %1, %struct.efa_admin_aq_entry** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.efa_admin_acq_entry* %3, %struct.efa_admin_acq_entry** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = call i32 (...) @might_sleep()
  %15 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %16 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %15, i32 0, i32 0
  %17 = call i32 @down(i32* %16)
  %18 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %19 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.efa_admin_aq_entry*, %struct.efa_admin_aq_entry** %8, align 8
  %22 = getelementptr inbounds %struct.efa_admin_aq_entry, %struct.efa_admin_aq_entry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @efa_com_cmd_str(i32 %24)
  %26 = load %struct.efa_admin_aq_entry*, %struct.efa_admin_aq_entry** %8, align 8
  %27 = getelementptr inbounds %struct.efa_admin_aq_entry, %struct.efa_admin_aq_entry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ibdev_dbg(i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %29)
  %31 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %32 = load %struct.efa_admin_aq_entry*, %struct.efa_admin_aq_entry** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.efa_admin_acq_entry*, %struct.efa_admin_acq_entry** %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call %struct.efa_comp_ctx* @efa_com_submit_admin_cmd(%struct.efa_com_admin_queue* %31, %struct.efa_admin_aq_entry* %32, i64 %33, %struct.efa_admin_acq_entry* %34, i64 %35)
  store %struct.efa_comp_ctx* %36, %struct.efa_comp_ctx** %12, align 8
  %37 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %12, align 8
  %38 = call i64 @IS_ERR(%struct.efa_comp_ctx* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %5
  %41 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %42 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.efa_admin_aq_entry*, %struct.efa_admin_aq_entry** %8, align 8
  %45 = getelementptr inbounds %struct.efa_admin_aq_entry, %struct.efa_admin_aq_entry* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @efa_com_cmd_str(i32 %47)
  %49 = load %struct.efa_admin_aq_entry*, %struct.efa_admin_aq_entry** %8, align 8
  %50 = getelementptr inbounds %struct.efa_admin_aq_entry, %struct.efa_admin_aq_entry* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %12, align 8
  %54 = call i32 @PTR_ERR(%struct.efa_comp_ctx* %53)
  %55 = call i32 (i32, i8*, i32, i32, i32, ...) @ibdev_err_ratelimited(i32 %43, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %52, i32 %54)
  %56 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %57 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %56, i32 0, i32 0
  %58 = call i32 @up(i32* %57)
  %59 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %12, align 8
  %60 = call i32 @PTR_ERR(%struct.efa_comp_ctx* %59)
  store i32 %60, i32* %6, align 4
  br label %90

61:                                               ; preds = %5
  %62 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %12, align 8
  %63 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %64 = call i32 @efa_com_wait_and_process_admin_cq(%struct.efa_comp_ctx* %62, %struct.efa_com_admin_queue* %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %61
  %68 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %69 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.efa_admin_aq_entry*, %struct.efa_admin_aq_entry** %8, align 8
  %72 = getelementptr inbounds %struct.efa_admin_aq_entry, %struct.efa_admin_aq_entry* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @efa_com_cmd_str(i32 %74)
  %76 = load %struct.efa_admin_aq_entry*, %struct.efa_admin_aq_entry** %8, align 8
  %77 = getelementptr inbounds %struct.efa_admin_aq_entry, %struct.efa_admin_aq_entry* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %12, align 8
  %81 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 (i32, i8*, i32, i32, i32, ...) @ibdev_err_ratelimited(i32 %70, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %79, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %67, %61
  %86 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %7, align 8
  %87 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %86, i32 0, i32 0
  %88 = call i32 @up(i32* %87)
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %85, %40
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @ibdev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @efa_com_cmd_str(i32) #1

declare dso_local %struct.efa_comp_ctx* @efa_com_submit_admin_cmd(%struct.efa_com_admin_queue*, %struct.efa_admin_aq_entry*, i64, %struct.efa_admin_acq_entry*, i64) #1

declare dso_local i64 @IS_ERR(%struct.efa_comp_ctx*) #1

declare dso_local i32 @ibdev_err_ratelimited(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @PTR_ERR(%struct.efa_comp_ctx*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @efa_com_wait_and_process_admin_cq(%struct.efa_comp_ctx*, %struct.efa_com_admin_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
