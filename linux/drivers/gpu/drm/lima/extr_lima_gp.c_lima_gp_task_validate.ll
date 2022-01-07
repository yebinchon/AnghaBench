; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gp.c_lima_gp_task_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gp.c_lima_gp_task_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_sched_pipe = type { i32 }
%struct.lima_sched_task = type { %struct.drm_lima_gp_frame* }
%struct.drm_lima_gp_frame = type { i64* }

@LIMA_GP_VSCL_START_ADDR = common dso_local global i32 0, align 4
@LIMA_GP_VSCL_END_ADDR = common dso_local global i32 0, align 4
@LIMA_GP_PLBUCL_START_ADDR = common dso_local global i32 0, align 4
@LIMA_GP_PLBUCL_END_ADDR = common dso_local global i32 0, align 4
@LIMA_GP_PLBU_ALLOC_START_ADDR = common dso_local global i32 0, align 4
@LIMA_GP_PLBU_ALLOC_END_ADDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lima_sched_pipe*, %struct.lima_sched_task*)* @lima_gp_task_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_gp_task_validate(%struct.lima_sched_pipe* %0, %struct.lima_sched_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lima_sched_pipe*, align 8
  %5 = alloca %struct.lima_sched_task*, align 8
  %6 = alloca %struct.drm_lima_gp_frame*, align 8
  %7 = alloca i64*, align 8
  store %struct.lima_sched_pipe* %0, %struct.lima_sched_pipe** %4, align 8
  store %struct.lima_sched_task* %1, %struct.lima_sched_task** %5, align 8
  %8 = load %struct.lima_sched_task*, %struct.lima_sched_task** %5, align 8
  %9 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %8, i32 0, i32 0
  %10 = load %struct.drm_lima_gp_frame*, %struct.drm_lima_gp_frame** %9, align 8
  store %struct.drm_lima_gp_frame* %10, %struct.drm_lima_gp_frame** %6, align 8
  %11 = load %struct.drm_lima_gp_frame*, %struct.drm_lima_gp_frame** %6, align 8
  %12 = getelementptr inbounds %struct.drm_lima_gp_frame, %struct.drm_lima_gp_frame* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  store i64* %13, i64** %7, align 8
  %14 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %4, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i32, i32* @LIMA_GP_VSCL_START_ADDR, align 4
  %17 = ashr i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %15, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = load i32, i32* @LIMA_GP_VSCL_END_ADDR, align 4
  %23 = ashr i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %21, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %20, %26
  br i1 %27, label %56, label %28

28:                                               ; preds = %2
  %29 = load i64*, i64** %7, align 8
  %30 = load i32, i32* @LIMA_GP_PLBUCL_START_ADDR, align 4
  %31 = ashr i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = load i32, i32* @LIMA_GP_PLBUCL_END_ADDR, align 4
  %37 = ashr i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %35, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %34, %40
  br i1 %41, label %56, label %42

42:                                               ; preds = %28
  %43 = load i64*, i64** %7, align 8
  %44 = load i32, i32* @LIMA_GP_PLBU_ALLOC_START_ADDR, align 4
  %45 = ashr i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %43, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %7, align 8
  %50 = load i32, i32* @LIMA_GP_PLBU_ALLOC_END_ADDR, align 4
  %51 = ashr i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %49, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %48, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %42, %28, %2
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %91

59:                                               ; preds = %42
  %60 = load i64*, i64** %7, align 8
  %61 = load i32, i32* @LIMA_GP_VSCL_START_ADDR, align 4
  %62 = ashr i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %60, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %7, align 8
  %67 = load i32, i32* @LIMA_GP_VSCL_END_ADDR, align 4
  %68 = ashr i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %66, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %65, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %59
  %74 = load i64*, i64** %7, align 8
  %75 = load i32, i32* @LIMA_GP_PLBUCL_START_ADDR, align 4
  %76 = ashr i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %74, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %7, align 8
  %81 = load i32, i32* @LIMA_GP_PLBUCL_END_ADDR, align 4
  %82 = ashr i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %79, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %73
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %91

90:                                               ; preds = %73, %59
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %87, %56
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
