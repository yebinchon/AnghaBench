; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_sched.c_v3d_gpu_reset_for_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_sched.c_v3d_gpu_reset_for_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3d_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_sched_job = type { i32 }

@V3D_MAX_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v3d_dev*, %struct.drm_sched_job*)* @v3d_gpu_reset_for_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v3d_gpu_reset_for_timeout(%struct.v3d_dev* %0, %struct.drm_sched_job* %1) #0 {
  %3 = alloca %struct.v3d_dev*, align 8
  %4 = alloca %struct.drm_sched_job*, align 8
  %5 = alloca i32, align 4
  store %struct.v3d_dev* %0, %struct.v3d_dev** %3, align 8
  store %struct.drm_sched_job* %1, %struct.drm_sched_job** %4, align 8
  %6 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %7 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %23, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @V3D_MAX_QUEUES, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %15 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.drm_sched_job*, %struct.drm_sched_job** %4, align 8
  %22 = call i32 @drm_sched_stop(i32* %20, %struct.drm_sched_job* %21)
  br label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %9

26:                                               ; preds = %9
  %27 = load %struct.drm_sched_job*, %struct.drm_sched_job** %4, align 8
  %28 = icmp ne %struct.drm_sched_job* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.drm_sched_job*, %struct.drm_sched_job** %4, align 8
  %31 = call i32 @drm_sched_increase_karma(%struct.drm_sched_job* %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %34 = call i32 @v3d_reset(%struct.v3d_dev* %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %48, %32
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @V3D_MAX_QUEUES, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %41 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @drm_sched_resubmit_jobs(i32* %46)
  br label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %5, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %35

51:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %65, %51
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @V3D_MAX_QUEUES, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %58 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @drm_sched_start(i32* %63, i32 1)
  br label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %5, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %52

68:                                               ; preds = %52
  %69 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %70 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_sched_stop(i32*, %struct.drm_sched_job*) #1

declare dso_local i32 @drm_sched_increase_karma(%struct.drm_sched_job*) #1

declare dso_local i32 @v3d_reset(%struct.v3d_dev*) #1

declare dso_local i32 @drm_sched_resubmit_jobs(i32*) #1

declare dso_local i32 @drm_sched_start(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
