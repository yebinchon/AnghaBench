; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_submitqueue.c_msm_submitqueue_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_submitqueue.c_msm_submitqueue_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.msm_file_private = type { i32 }
%struct.drm_msm_submitqueue_query = type { i64, i32, i64 }
%struct.msm_gpu_submitqueue = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@MSM_SUBMITQUEUE_PARAM_FAULTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_submitqueue_query(%struct.drm_device* %0, %struct.msm_file_private* %1, %struct.drm_msm_submitqueue_query* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.msm_file_private*, align 8
  %7 = alloca %struct.drm_msm_submitqueue_query*, align 8
  %8 = alloca %struct.msm_gpu_submitqueue*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.msm_file_private* %1, %struct.msm_file_private** %6, align 8
  store %struct.drm_msm_submitqueue_query* %2, %struct.drm_msm_submitqueue_query** %7, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.drm_msm_submitqueue_query*, %struct.drm_msm_submitqueue_query** %7, align 8
  %13 = getelementptr inbounds %struct.drm_msm_submitqueue_query, %struct.drm_msm_submitqueue_query* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %44

19:                                               ; preds = %3
  %20 = load %struct.msm_file_private*, %struct.msm_file_private** %6, align 8
  %21 = load %struct.drm_msm_submitqueue_query*, %struct.drm_msm_submitqueue_query** %7, align 8
  %22 = getelementptr inbounds %struct.drm_msm_submitqueue_query, %struct.drm_msm_submitqueue_query* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.msm_gpu_submitqueue* @msm_submitqueue_get(%struct.msm_file_private* %20, i32 %23)
  store %struct.msm_gpu_submitqueue* %24, %struct.msm_gpu_submitqueue** %8, align 8
  %25 = load %struct.msm_gpu_submitqueue*, %struct.msm_gpu_submitqueue** %8, align 8
  %26 = icmp ne %struct.msm_gpu_submitqueue* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %44

30:                                               ; preds = %19
  %31 = load %struct.drm_msm_submitqueue_query*, %struct.drm_msm_submitqueue_query** %7, align 8
  %32 = getelementptr inbounds %struct.drm_msm_submitqueue_query, %struct.drm_msm_submitqueue_query* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MSM_SUBMITQUEUE_PARAM_FAULTS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.msm_gpu_submitqueue*, %struct.msm_gpu_submitqueue** %8, align 8
  %38 = load %struct.drm_msm_submitqueue_query*, %struct.drm_msm_submitqueue_query** %7, align 8
  %39 = call i32 @msm_submitqueue_query_faults(%struct.msm_gpu_submitqueue* %37, %struct.drm_msm_submitqueue_query* %38)
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %36, %30
  %41 = load %struct.msm_gpu_submitqueue*, %struct.msm_gpu_submitqueue** %8, align 8
  %42 = call i32 @msm_submitqueue_put(%struct.msm_gpu_submitqueue* %41)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %27, %16
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.msm_gpu_submitqueue* @msm_submitqueue_get(%struct.msm_file_private*, i32) #1

declare dso_local i32 @msm_submitqueue_query_faults(%struct.msm_gpu_submitqueue*, %struct.drm_msm_submitqueue_query*) #1

declare dso_local i32 @msm_submitqueue_put(%struct.msm_gpu_submitqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
