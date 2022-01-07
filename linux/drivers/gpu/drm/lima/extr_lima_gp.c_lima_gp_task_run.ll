; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gp.c_lima_gp_task_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gp.c_lima_gp_task_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_sched_pipe = type { %struct.lima_ip** }
%struct.lima_ip = type { i64 }
%struct.lima_sched_task = type { %struct.drm_lima_gp_frame* }
%struct.drm_lima_gp_frame = type { i32* }

@LIMA_GP_VSCL_START_ADDR = common dso_local global i32 0, align 4
@LIMA_GP_VSCL_END_ADDR = common dso_local global i32 0, align 4
@LIMA_GP_CMD_START_VS = common dso_local global i32 0, align 4
@LIMA_GP_PLBUCL_START_ADDR = common dso_local global i32 0, align 4
@LIMA_GP_PLBUCL_END_ADDR = common dso_local global i32 0, align 4
@LIMA_GP_CMD_START_PLBU = common dso_local global i32 0, align 4
@LIMA_GP_FRAME_REG_NUM = common dso_local global i32 0, align 4
@LIMA_GP_CMD = common dso_local global i32 0, align 4
@LIMA_GP_CMD_UPDATE_PLBU_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lima_sched_pipe*, %struct.lima_sched_task*)* @lima_gp_task_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lima_gp_task_run(%struct.lima_sched_pipe* %0, %struct.lima_sched_task* %1) #0 {
  %3 = alloca %struct.lima_sched_pipe*, align 8
  %4 = alloca %struct.lima_sched_task*, align 8
  %5 = alloca %struct.lima_ip*, align 8
  %6 = alloca %struct.drm_lima_gp_frame*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lima_sched_pipe* %0, %struct.lima_sched_pipe** %3, align 8
  store %struct.lima_sched_task* %1, %struct.lima_sched_task** %4, align 8
  %10 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %11 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %10, i32 0, i32 0
  %12 = load %struct.lima_ip**, %struct.lima_ip*** %11, align 8
  %13 = getelementptr inbounds %struct.lima_ip*, %struct.lima_ip** %12, i64 0
  %14 = load %struct.lima_ip*, %struct.lima_ip** %13, align 8
  store %struct.lima_ip* %14, %struct.lima_ip** %5, align 8
  %15 = load %struct.lima_sched_task*, %struct.lima_sched_task** %4, align 8
  %16 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %15, i32 0, i32 0
  %17 = load %struct.drm_lima_gp_frame*, %struct.drm_lima_gp_frame** %16, align 8
  store %struct.drm_lima_gp_frame* %17, %struct.drm_lima_gp_frame** %6, align 8
  %18 = load %struct.drm_lima_gp_frame*, %struct.drm_lima_gp_frame** %6, align 8
  %19 = getelementptr inbounds %struct.drm_lima_gp_frame, %struct.drm_lima_gp_frame* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @LIMA_GP_VSCL_START_ADDR, align 4
  %23 = ashr i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @LIMA_GP_VSCL_END_ADDR, align 4
  %29 = ashr i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %26, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load i32, i32* @LIMA_GP_CMD_START_VS, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %2
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @LIMA_GP_PLBUCL_START_ADDR, align 4
  %41 = ashr i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @LIMA_GP_PLBUCL_END_ADDR, align 4
  %47 = ashr i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %44, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %38
  %53 = load i32, i32* @LIMA_GP_CMD_START_PLBU, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %52, %38
  %57 = load %struct.lima_ip*, %struct.lima_ip** %5, align 8
  %58 = call i32 @lima_gp_soft_reset_async_wait(%struct.lima_ip* %57)
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %80, %56
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @LIMA_GP_FRAME_REG_NUM, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.lima_ip*, %struct.lima_ip** %5, align 8
  %70 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @LIMA_GP_VSCL_START_ADDR, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = load i32, i32* %9, align 4
  %76 = mul nsw i32 %75, 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %74, %77
  %79 = call i32 @writel(i32 %68, i64 %78)
  br label %80

80:                                               ; preds = %63
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %59

83:                                               ; preds = %59
  %84 = load i32, i32* @LIMA_GP_CMD, align 4
  %85 = load i32, i32* @LIMA_GP_CMD_UPDATE_PLBU_ALLOC, align 4
  %86 = call i32 @gp_write(i32 %84, i32 %85)
  %87 = load i32, i32* @LIMA_GP_CMD, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @gp_write(i32 %87, i32 %88)
  ret void
}

declare dso_local i32 @lima_gp_soft_reset_async_wait(%struct.lima_ip*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @gp_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
