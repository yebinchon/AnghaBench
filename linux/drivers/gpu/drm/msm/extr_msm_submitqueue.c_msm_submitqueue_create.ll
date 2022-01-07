; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_submitqueue.c_msm_submitqueue_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_submitqueue.c_msm_submitqueue_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.msm_file_private = type { i32, i32, i32 }
%struct.msm_gpu_submitqueue = type { i64, i32, i64, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_submitqueue_create(%struct.drm_device* %0, %struct.msm_file_private* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.msm_file_private*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.msm_drm_private*, align 8
  %13 = alloca %struct.msm_gpu_submitqueue*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store %struct.msm_file_private* %1, %struct.msm_file_private** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.msm_drm_private*, %struct.msm_drm_private** %15, align 8
  store %struct.msm_drm_private* %16, %struct.msm_drm_private** %12, align 8
  %17 = load %struct.msm_file_private*, %struct.msm_file_private** %8, align 8
  %18 = icmp ne %struct.msm_file_private* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %83

22:                                               ; preds = %5
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.msm_gpu_submitqueue* @kzalloc(i32 40, i32 %23)
  store %struct.msm_gpu_submitqueue* %24, %struct.msm_gpu_submitqueue** %13, align 8
  %25 = load %struct.msm_gpu_submitqueue*, %struct.msm_gpu_submitqueue** %13, align 8
  %26 = icmp ne %struct.msm_gpu_submitqueue* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %83

30:                                               ; preds = %22
  %31 = load %struct.msm_gpu_submitqueue*, %struct.msm_gpu_submitqueue** %13, align 8
  %32 = getelementptr inbounds %struct.msm_gpu_submitqueue, %struct.msm_gpu_submitqueue* %31, i32 0, i32 4
  %33 = call i32 @kref_init(i32* %32)
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.msm_gpu_submitqueue*, %struct.msm_gpu_submitqueue** %13, align 8
  %36 = getelementptr inbounds %struct.msm_gpu_submitqueue, %struct.msm_gpu_submitqueue* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load %struct.msm_drm_private*, %struct.msm_drm_private** %12, align 8
  %38 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %30
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.msm_drm_private*, %struct.msm_drm_private** %12, align 8
  %44 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %42, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %83

52:                                               ; preds = %41
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.msm_gpu_submitqueue*, %struct.msm_gpu_submitqueue** %13, align 8
  %55 = getelementptr inbounds %struct.msm_gpu_submitqueue, %struct.msm_gpu_submitqueue* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %30
  %57 = load %struct.msm_file_private*, %struct.msm_file_private** %8, align 8
  %58 = getelementptr inbounds %struct.msm_file_private, %struct.msm_file_private* %57, i32 0, i32 0
  %59 = call i32 @write_lock(i32* %58)
  %60 = load %struct.msm_file_private*, %struct.msm_file_private** %8, align 8
  %61 = getelementptr inbounds %struct.msm_file_private, %struct.msm_file_private* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = sext i32 %62 to i64
  %65 = load %struct.msm_gpu_submitqueue*, %struct.msm_gpu_submitqueue** %13, align 8
  %66 = getelementptr inbounds %struct.msm_gpu_submitqueue, %struct.msm_gpu_submitqueue* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load i64*, i64** %11, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %56
  %70 = load %struct.msm_gpu_submitqueue*, %struct.msm_gpu_submitqueue** %13, align 8
  %71 = getelementptr inbounds %struct.msm_gpu_submitqueue, %struct.msm_gpu_submitqueue* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** %11, align 8
  store i64 %72, i64* %73, align 8
  br label %74

74:                                               ; preds = %69, %56
  %75 = load %struct.msm_gpu_submitqueue*, %struct.msm_gpu_submitqueue** %13, align 8
  %76 = getelementptr inbounds %struct.msm_gpu_submitqueue, %struct.msm_gpu_submitqueue* %75, i32 0, i32 1
  %77 = load %struct.msm_file_private*, %struct.msm_file_private** %8, align 8
  %78 = getelementptr inbounds %struct.msm_file_private, %struct.msm_file_private* %77, i32 0, i32 1
  %79 = call i32 @list_add_tail(i32* %76, i32* %78)
  %80 = load %struct.msm_file_private*, %struct.msm_file_private** %8, align 8
  %81 = getelementptr inbounds %struct.msm_file_private, %struct.msm_file_private* %80, i32 0, i32 0
  %82 = call i32 @write_unlock(i32* %81)
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %74, %49, %27, %19
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local %struct.msm_gpu_submitqueue* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
