; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_ioctl_gem_madvise.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_ioctl_gem_madvise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_msm_gem_madvise = type { i32, i32, i32 }
%struct.drm_gem_object = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @msm_ioctl_gem_madvise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_ioctl_gem_madvise(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_msm_gem_madvise*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_msm_gem_madvise*
  store %struct.drm_msm_gem_madvise* %12, %struct.drm_msm_gem_madvise** %8, align 8
  %13 = load %struct.drm_msm_gem_madvise*, %struct.drm_msm_gem_madvise** %8, align 8
  %14 = getelementptr inbounds %struct.drm_msm_gem_madvise, %struct.drm_msm_gem_madvise* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %17 [
    i32 129, label %16
    i32 128, label %16
  ]

16:                                               ; preds = %3, %3
  br label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %59

20:                                               ; preds = %16
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock_interruptible(i32* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %4, align 4
  br label %59

28:                                               ; preds = %20
  %29 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %30 = load %struct.drm_msm_gem_madvise*, %struct.drm_msm_gem_madvise** %8, align 8
  %31 = getelementptr inbounds %struct.drm_msm_gem_madvise, %struct.drm_msm_gem_madvise* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %29, i32 %32)
  store %struct.drm_gem_object* %33, %struct.drm_gem_object** %9, align 8
  %34 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %35 = icmp ne %struct.drm_gem_object* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %10, align 4
  br label %54

39:                                               ; preds = %28
  %40 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %41 = load %struct.drm_msm_gem_madvise*, %struct.drm_msm_gem_madvise** %8, align 8
  %42 = getelementptr inbounds %struct.drm_msm_gem_madvise, %struct.drm_msm_gem_madvise* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @msm_gem_madvise(%struct.drm_gem_object* %40, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.drm_msm_gem_madvise*, %struct.drm_msm_gem_madvise** %8, align 8
  %50 = getelementptr inbounds %struct.drm_msm_gem_madvise, %struct.drm_msm_gem_madvise* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %47, %39
  %52 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %53 = call i32 @drm_gem_object_put(%struct.drm_gem_object* %52)
  br label %54

54:                                               ; preds = %51, %36
  %55 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %26, %17
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @msm_gem_madvise(%struct.drm_gem_object*, i32) #1

declare dso_local i32 @drm_gem_object_put(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
