; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_sched.c_v3d_csd_job_timedout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_sched.c_v3d_csd_job_timedout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sched_job = type { i32 }
%struct.v3d_csd_job = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v3d_dev* }
%struct.v3d_dev = type { i32 }

@V3D_CSD_CURRENT_CFG4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_sched_job*)* @v3d_csd_job_timedout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v3d_csd_job_timedout(%struct.drm_sched_job* %0) #0 {
  %2 = alloca %struct.drm_sched_job*, align 8
  %3 = alloca %struct.v3d_csd_job*, align 8
  %4 = alloca %struct.v3d_dev*, align 8
  %5 = alloca i64, align 8
  store %struct.drm_sched_job* %0, %struct.drm_sched_job** %2, align 8
  %6 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %7 = call %struct.v3d_csd_job* @to_csd_job(%struct.drm_sched_job* %6)
  store %struct.v3d_csd_job* %7, %struct.v3d_csd_job** %3, align 8
  %8 = load %struct.v3d_csd_job*, %struct.v3d_csd_job** %3, align 8
  %9 = getelementptr inbounds %struct.v3d_csd_job, %struct.v3d_csd_job* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.v3d_dev*, %struct.v3d_dev** %10, align 8
  store %struct.v3d_dev* %11, %struct.v3d_dev** %4, align 8
  %12 = load i32, i32* @V3D_CSD_CURRENT_CFG4, align 4
  %13 = call i64 @V3D_CORE_READ(i32 0, i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.v3d_csd_job*, %struct.v3d_csd_job** %3, align 8
  %15 = getelementptr inbounds %struct.v3d_csd_job, %struct.v3d_csd_job* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.v3d_csd_job*, %struct.v3d_csd_job** %3, align 8
  %22 = getelementptr inbounds %struct.v3d_csd_job, %struct.v3d_csd_job* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %27

23:                                               ; preds = %1
  %24 = load %struct.v3d_dev*, %struct.v3d_dev** %4, align 8
  %25 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %26 = call i32 @v3d_gpu_reset_for_timeout(%struct.v3d_dev* %24, %struct.drm_sched_job* %25)
  br label %27

27:                                               ; preds = %23, %19
  ret void
}

declare dso_local %struct.v3d_csd_job* @to_csd_job(%struct.drm_sched_job*) #1

declare dso_local i64 @V3D_CORE_READ(i32, i32) #1

declare dso_local i32 @v3d_gpu_reset_for_timeout(%struct.v3d_dev*, %struct.drm_sched_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
