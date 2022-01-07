; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c___pblk_pipeline_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c___pblk_pipeline_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i64, i32, %struct.pblk_line_mgmt }
%struct.pblk_line_mgmt = type { i32 }

@PBLK_STATE_RECOVERING = common dso_local global i64 0, align 8
@PBLK_STATE_STOPPED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"could not close data on teardown(%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__pblk_pipeline_flush(%struct.pblk* %0) #0 {
  %2 = alloca %struct.pblk*, align 8
  %3 = alloca %struct.pblk_line_mgmt*, align 8
  %4 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %2, align 8
  %5 = load %struct.pblk*, %struct.pblk** %2, align 8
  %6 = getelementptr inbounds %struct.pblk, %struct.pblk* %5, i32 0, i32 2
  store %struct.pblk_line_mgmt* %6, %struct.pblk_line_mgmt** %3, align 8
  %7 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %3, align 8
  %8 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.pblk*, %struct.pblk** %2, align 8
  %11 = getelementptr inbounds %struct.pblk, %struct.pblk* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PBLK_STATE_RECOVERING, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.pblk*, %struct.pblk** %2, align 8
  %17 = getelementptr inbounds %struct.pblk, %struct.pblk* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PBLK_STATE_STOPPED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15, %1
  %22 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %3, align 8
  %23 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  br label %57

25:                                               ; preds = %15
  %26 = load i64, i64* @PBLK_STATE_RECOVERING, align 8
  %27 = load %struct.pblk*, %struct.pblk** %2, align 8
  %28 = getelementptr inbounds %struct.pblk, %struct.pblk* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.pblk*, %struct.pblk** %2, align 8
  %30 = call i32 @pblk_disk_name(%struct.pblk* %29)
  %31 = load %struct.pblk*, %struct.pblk** %2, align 8
  %32 = getelementptr inbounds %struct.pblk, %struct.pblk* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @trace_pblk_state(i32 %30, i64 %33)
  %35 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %3, align 8
  %36 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load %struct.pblk*, %struct.pblk** %2, align 8
  %39 = call i32 @pblk_flush_writer(%struct.pblk* %38)
  %40 = load %struct.pblk*, %struct.pblk** %2, align 8
  %41 = call i32 @pblk_wait_for_meta(%struct.pblk* %40)
  %42 = load %struct.pblk*, %struct.pblk** %2, align 8
  %43 = call i32 @pblk_recov_pad(%struct.pblk* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %25
  %47 = load %struct.pblk*, %struct.pblk** %2, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @pblk_err(%struct.pblk* %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %57

50:                                               ; preds = %25
  %51 = load %struct.pblk*, %struct.pblk** %2, align 8
  %52 = getelementptr inbounds %struct.pblk, %struct.pblk* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @flush_workqueue(i32 %53)
  %55 = load %struct.pblk*, %struct.pblk** %2, align 8
  %56 = call i32 @pblk_line_close_meta_sync(%struct.pblk* %55)
  br label %57

57:                                               ; preds = %50, %46, %21
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @trace_pblk_state(i32, i64) #1

declare dso_local i32 @pblk_disk_name(%struct.pblk*) #1

declare dso_local i32 @pblk_flush_writer(%struct.pblk*) #1

declare dso_local i32 @pblk_wait_for_meta(%struct.pblk*) #1

declare dso_local i32 @pblk_recov_pad(%struct.pblk*) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i32) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @pblk_line_close_meta_sync(%struct.pblk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
