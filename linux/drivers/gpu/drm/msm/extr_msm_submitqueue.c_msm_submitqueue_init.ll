; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_submitqueue.c_msm_submitqueue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_submitqueue.c_msm_submitqueue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.msm_file_private = type { i32, i32 }

@uint32_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_submitqueue_init(%struct.drm_device* %0, %struct.msm_file_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.msm_file_private*, align 8
  %6 = alloca %struct.msm_drm_private*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.msm_file_private* %1, %struct.msm_file_private** %5, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.msm_drm_private*, %struct.msm_drm_private** %9, align 8
  store %struct.msm_drm_private* %10, %struct.msm_drm_private** %6, align 8
  %11 = load %struct.msm_file_private*, %struct.msm_file_private** %5, align 8
  %12 = icmp ne %struct.msm_file_private* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

14:                                               ; preds = %2
  %15 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %16 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i32, i32* @uint32_t, align 4
  %21 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %22 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %25, 1
  %27 = call i32 @clamp_t(i32 %20, i32 2, i32 0, i64 %26)
  br label %29

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28, %19
  %30 = phi i32 [ %27, %19 ], [ 0, %28 ]
  store i32 %30, i32* %7, align 4
  %31 = load %struct.msm_file_private*, %struct.msm_file_private** %5, align 8
  %32 = getelementptr inbounds %struct.msm_file_private, %struct.msm_file_private* %31, i32 0, i32 1
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.msm_file_private*, %struct.msm_file_private** %5, align 8
  %35 = getelementptr inbounds %struct.msm_file_private, %struct.msm_file_private* %34, i32 0, i32 0
  %36 = call i32 @rwlock_init(i32* %35)
  %37 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %38 = load %struct.msm_file_private*, %struct.msm_file_private** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @msm_submitqueue_create(%struct.drm_device* %37, %struct.msm_file_private* %38, i32 %39, i32 0, i32* null)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %29, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @clamp_t(i32, i32, i32, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @msm_submitqueue_create(%struct.drm_device*, %struct.msm_file_private*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
