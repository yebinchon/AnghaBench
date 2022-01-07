; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_task_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_task_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_sched_pipe = type { i32, %struct.lima_ip** }
%struct.lima_ip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"pp task error %d int_state=%x status=%x\0A\00", align 1
@LIMA_PP_INT_STATUS = common dso_local global i32 0, align 4
@LIMA_PP_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lima_sched_pipe*)* @lima_pp_task_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lima_pp_task_error(%struct.lima_sched_pipe* %0) #0 {
  %2 = alloca %struct.lima_sched_pipe*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lima_ip*, align 8
  store %struct.lima_sched_pipe* %0, %struct.lima_sched_pipe** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %32, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %2, align 8
  %8 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  %12 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %2, align 8
  %13 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %12, i32 0, i32 1
  %14 = load %struct.lima_ip**, %struct.lima_ip*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.lima_ip*, %struct.lima_ip** %14, i64 %16
  %18 = load %struct.lima_ip*, %struct.lima_ip** %17, align 8
  store %struct.lima_ip* %18, %struct.lima_ip** %4, align 8
  %19 = load %struct.lima_ip*, %struct.lima_ip** %4, align 8
  %20 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @LIMA_PP_INT_STATUS, align 4
  %26 = call i32 @pp_read(i32 %25)
  %27 = load i32, i32* @LIMA_PP_STATUS, align 4
  %28 = call i32 @pp_read(i32 %27)
  %29 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26, i32 %28)
  %30 = load %struct.lima_ip*, %struct.lima_ip** %4, align 8
  %31 = call i32 @lima_pp_hard_reset(%struct.lima_ip* %30)
  br label %32

32:                                               ; preds = %11
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %5

35:                                               ; preds = %5
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @pp_read(i32) #1

declare dso_local i32 @lima_pp_hard_reset(%struct.lima_ip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
