; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_drv.c_panfrost_ioctl_wait_bo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_drv.c_panfrost_ioctl_wait_bo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_panfrost_wait_bo = type { i32, i64, i32 }
%struct.drm_gem_object = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @panfrost_ioctl_wait_bo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panfrost_ioctl_wait_bo(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.drm_panfrost_wait_bo*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_panfrost_wait_bo*
  store %struct.drm_panfrost_wait_bo* %13, %struct.drm_panfrost_wait_bo** %9, align 8
  %14 = load %struct.drm_panfrost_wait_bo*, %struct.drm_panfrost_wait_bo** %9, align 8
  %15 = getelementptr inbounds %struct.drm_panfrost_wait_bo, %struct.drm_panfrost_wait_bo* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @drm_timeout_abs_to_jiffies(i32 %16)
  store i64 %17, i64* %11, align 8
  %18 = load %struct.drm_panfrost_wait_bo*, %struct.drm_panfrost_wait_bo** %9, align 8
  %19 = getelementptr inbounds %struct.drm_panfrost_wait_bo, %struct.drm_panfrost_wait_bo* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %60

25:                                               ; preds = %3
  %26 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %27 = load %struct.drm_panfrost_wait_bo*, %struct.drm_panfrost_wait_bo** %9, align 8
  %28 = getelementptr inbounds %struct.drm_panfrost_wait_bo, %struct.drm_panfrost_wait_bo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %26, i32 %29)
  store %struct.drm_gem_object* %30, %struct.drm_gem_object** %10, align 8
  %31 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %32 = icmp ne %struct.drm_gem_object* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %60

36:                                               ; preds = %25
  %37 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %38 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %11, align 8
  %41 = call i64 @dma_resv_wait_timeout_rcu(i32 %39, i32 1, i32 1, i64 %40)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %36
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i64, i64* @ETIMEDOUT, align 8
  %49 = sub nsw i64 0, %48
  br label %53

50:                                               ; preds = %44
  %51 = load i64, i64* @EBUSY, align 8
  %52 = sub nsw i64 0, %51
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i64 [ %49, %47 ], [ %52, %50 ]
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %53, %36
  %56 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %57 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %56)
  %58 = load i64, i64* %8, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %55, %33, %22
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @drm_timeout_abs_to_jiffies(i32) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i64 @dma_resv_wait_timeout_rcu(i32, i32, i32, i64) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
