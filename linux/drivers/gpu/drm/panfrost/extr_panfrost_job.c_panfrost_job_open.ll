; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_job.c_panfrost_job_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_job.c_panfrost_job_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_file_priv = type { i32*, %struct.panfrost_device* }
%struct.panfrost_device = type { %struct.panfrost_job_slot* }
%struct.panfrost_job_slot = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_sched_rq* }
%struct.drm_sched_rq = type { i32 }

@NUM_JOB_SLOTS = common dso_local global i32 0, align 4
@DRM_SCHED_PRIORITY_NORMAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @panfrost_job_open(%struct.panfrost_file_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.panfrost_file_priv*, align 8
  %4 = alloca %struct.panfrost_device*, align 8
  %5 = alloca %struct.panfrost_job_slot*, align 8
  %6 = alloca %struct.drm_sched_rq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.panfrost_file_priv* %0, %struct.panfrost_file_priv** %3, align 8
  %9 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %3, align 8
  %10 = getelementptr inbounds %struct.panfrost_file_priv, %struct.panfrost_file_priv* %9, i32 0, i32 1
  %11 = load %struct.panfrost_device*, %struct.panfrost_device** %10, align 8
  store %struct.panfrost_device* %11, %struct.panfrost_device** %4, align 8
  %12 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %13 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %12, i32 0, i32 0
  %14 = load %struct.panfrost_job_slot*, %struct.panfrost_job_slot** %13, align 8
  store %struct.panfrost_job_slot* %14, %struct.panfrost_job_slot** %5, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %44, %1
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @NUM_JOB_SLOTS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %15
  %20 = load %struct.panfrost_job_slot*, %struct.panfrost_job_slot** %5, align 8
  %21 = getelementptr inbounds %struct.panfrost_job_slot, %struct.panfrost_job_slot* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.drm_sched_rq*, %struct.drm_sched_rq** %27, align 8
  %29 = load i64, i64* @DRM_SCHED_PRIORITY_NORMAL, align 8
  %30 = getelementptr inbounds %struct.drm_sched_rq, %struct.drm_sched_rq* %28, i64 %29
  store %struct.drm_sched_rq* %30, %struct.drm_sched_rq** %6, align 8
  %31 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %3, align 8
  %32 = getelementptr inbounds %struct.panfrost_file_priv, %struct.panfrost_file_priv* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i32 @drm_sched_entity_init(i32* %36, %struct.drm_sched_rq** %6, i32 1, i32* null)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @WARN_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %19
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %48

43:                                               ; preds = %19
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %15

47:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %41
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @drm_sched_entity_init(i32*, %struct.drm_sched_rq**, i32, i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
