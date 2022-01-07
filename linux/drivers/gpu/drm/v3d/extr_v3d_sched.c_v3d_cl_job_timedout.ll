; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_sched.c_v3d_cl_job_timedout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_sched.c_v3d_cl_job_timedout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sched_job = type { i32 }
%struct.v3d_job = type { %struct.v3d_dev* }
%struct.v3d_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_sched_job*, i32, i64*, i64*)* @v3d_cl_job_timedout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v3d_cl_job_timedout(%struct.drm_sched_job* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.drm_sched_job*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.v3d_job*, align 8
  %10 = alloca %struct.v3d_dev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.drm_sched_job* %0, %struct.drm_sched_job** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %13 = load %struct.drm_sched_job*, %struct.drm_sched_job** %5, align 8
  %14 = call %struct.v3d_job* @to_v3d_job(%struct.drm_sched_job* %13)
  store %struct.v3d_job* %14, %struct.v3d_job** %9, align 8
  %15 = load %struct.v3d_job*, %struct.v3d_job** %9, align 8
  %16 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %15, i32 0, i32 0
  %17 = load %struct.v3d_dev*, %struct.v3d_dev** %16, align 8
  store %struct.v3d_dev* %17, %struct.v3d_dev** %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @V3D_CLE_CTNCA(i32 %18)
  %20 = call i64 @V3D_CORE_READ(i32 0, i32 %19)
  store i64 %20, i64* %11, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @V3D_CLE_CTNRA(i32 %21)
  %23 = call i64 @V3D_CORE_READ(i32 0, i32 %22)
  store i64 %23, i64* %12, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %4
  %29 = load i64*, i64** %8, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %28, %4
  %34 = load i64, i64* %11, align 8
  %35 = load i64*, i64** %7, align 8
  store i64 %34, i64* %35, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64*, i64** %8, align 8
  store i64 %36, i64* %37, align 8
  br label %42

38:                                               ; preds = %28
  %39 = load %struct.v3d_dev*, %struct.v3d_dev** %10, align 8
  %40 = load %struct.drm_sched_job*, %struct.drm_sched_job** %5, align 8
  %41 = call i32 @v3d_gpu_reset_for_timeout(%struct.v3d_dev* %39, %struct.drm_sched_job* %40)
  br label %42

42:                                               ; preds = %38, %33
  ret void
}

declare dso_local %struct.v3d_job* @to_v3d_job(%struct.drm_sched_job*) #1

declare dso_local i64 @V3D_CORE_READ(i32, i32) #1

declare dso_local i32 @V3D_CLE_CTNCA(i32) #1

declare dso_local i32 @V3D_CLE_CTNRA(i32) #1

declare dso_local i32 @v3d_gpu_reset_for_timeout(%struct.v3d_dev*, %struct.drm_sched_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
