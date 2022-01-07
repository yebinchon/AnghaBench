; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_soft_reset_async_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_soft_reset_async_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_ip = type { i64, %struct.TYPE_4__, %struct.lima_device* }
%struct.TYPE_4__ = type { i32 }
%struct.lima_device = type { %struct.lima_sched_pipe* }
%struct.lima_sched_pipe = type { %struct.lima_ip**, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_lima_m450_pp_frame* }
%struct.drm_lima_m450_pp_frame = type { i32 }

@lima_ip_pp_bcast = common dso_local global i64 0, align 8
@lima_pipe_pp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lima_ip*)* @lima_pp_soft_reset_async_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_pp_soft_reset_async_wait(%struct.lima_ip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lima_ip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lima_device*, align 8
  %7 = alloca %struct.lima_sched_pipe*, align 8
  %8 = alloca %struct.drm_lima_m450_pp_frame*, align 8
  store %struct.lima_ip* %0, %struct.lima_ip** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %10 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

15:                                               ; preds = %1
  %16 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %17 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @lima_ip_pp_bcast, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %15
  %22 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %23 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %22, i32 0, i32 2
  %24 = load %struct.lima_device*, %struct.lima_device** %23, align 8
  store %struct.lima_device* %24, %struct.lima_device** %6, align 8
  %25 = load %struct.lima_device*, %struct.lima_device** %6, align 8
  %26 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %25, i32 0, i32 0
  %27 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %26, align 8
  %28 = load i32, i32* @lima_pipe_pp, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %27, i64 %29
  store %struct.lima_sched_pipe* %30, %struct.lima_sched_pipe** %7, align 8
  %31 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %7, align 8
  %32 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.drm_lima_m450_pp_frame*, %struct.drm_lima_m450_pp_frame** %34, align 8
  store %struct.drm_lima_m450_pp_frame* %35, %struct.drm_lima_m450_pp_frame** %8, align 8
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %53, %21
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.drm_lima_m450_pp_frame*, %struct.drm_lima_m450_pp_frame** %8, align 8
  %39 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, %struct.drm_lima_m450_pp_frame* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %7, align 8
  %44 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %43, i32 0, i32 0
  %45 = load %struct.lima_ip**, %struct.lima_ip*** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.lima_ip*, %struct.lima_ip** %45, i64 %47
  %49 = load %struct.lima_ip*, %struct.lima_ip** %48, align 8
  %50 = call i32 @lima_pp_soft_reset_async_wait_one(%struct.lima_ip* %49)
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %36

56:                                               ; preds = %36
  br label %60

57:                                               ; preds = %15
  %58 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %59 = call i32 @lima_pp_soft_reset_async_wait_one(%struct.lima_ip* %58)
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %57, %56
  %61 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %62 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %60, %14
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @lima_pp_soft_reset_async_wait_one(%struct.lima_ip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
