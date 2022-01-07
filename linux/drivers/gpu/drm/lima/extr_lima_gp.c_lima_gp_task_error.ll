; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gp.c_lima_gp_task_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gp.c_lima_gp_task_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_sched_pipe = type { %struct.lima_ip** }
%struct.lima_ip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"gp task error int_state=%x status=%x\0A\00", align 1
@LIMA_GP_INT_STAT = common dso_local global i32 0, align 4
@LIMA_GP_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lima_sched_pipe*)* @lima_gp_task_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lima_gp_task_error(%struct.lima_sched_pipe* %0) #0 {
  %2 = alloca %struct.lima_sched_pipe*, align 8
  %3 = alloca %struct.lima_ip*, align 8
  store %struct.lima_sched_pipe* %0, %struct.lima_sched_pipe** %2, align 8
  %4 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %2, align 8
  %5 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %4, i32 0, i32 0
  %6 = load %struct.lima_ip**, %struct.lima_ip*** %5, align 8
  %7 = getelementptr inbounds %struct.lima_ip*, %struct.lima_ip** %6, i64 0
  %8 = load %struct.lima_ip*, %struct.lima_ip** %7, align 8
  store %struct.lima_ip* %8, %struct.lima_ip** %3, align 8
  %9 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %10 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LIMA_GP_INT_STAT, align 4
  %15 = call i32 @gp_read(i32 %14)
  %16 = load i32, i32* @LIMA_GP_STATUS, align 4
  %17 = call i32 @gp_read(i32 %16)
  %18 = call i32 @dev_err(i32 %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17)
  %19 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %20 = call i32 @lima_gp_hard_reset(%struct.lima_ip* %19)
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @gp_read(i32) #1

declare dso_local i32 @lima_gp_hard_reset(%struct.lima_ip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
