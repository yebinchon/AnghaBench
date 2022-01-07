; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_ioctl_gem_cpu_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_ioctl_gem_cpu_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_msm_gem_cpu_prep = type { i32, i32, i32 }
%struct.drm_gem_object = type { i32 }

@MSM_PREP_FLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid op: %08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @msm_ioctl_gem_cpu_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_ioctl_gem_cpu_prep(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_msm_gem_cpu_prep*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_msm_gem_cpu_prep*
  store %struct.drm_msm_gem_cpu_prep* %13, %struct.drm_msm_gem_cpu_prep** %8, align 8
  %14 = load %struct.drm_msm_gem_cpu_prep*, %struct.drm_msm_gem_cpu_prep** %8, align 8
  %15 = getelementptr inbounds %struct.drm_msm_gem_cpu_prep, %struct.drm_msm_gem_cpu_prep* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @to_ktime(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.drm_msm_gem_cpu_prep*, %struct.drm_msm_gem_cpu_prep** %8, align 8
  %19 = getelementptr inbounds %struct.drm_msm_gem_cpu_prep, %struct.drm_msm_gem_cpu_prep* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MSM_PREP_FLAGS, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load %struct.drm_msm_gem_cpu_prep*, %struct.drm_msm_gem_cpu_prep** %8, align 8
  %27 = getelementptr inbounds %struct.drm_msm_gem_cpu_prep, %struct.drm_msm_gem_cpu_prep* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %52

32:                                               ; preds = %3
  %33 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %34 = load %struct.drm_msm_gem_cpu_prep*, %struct.drm_msm_gem_cpu_prep** %8, align 8
  %35 = getelementptr inbounds %struct.drm_msm_gem_cpu_prep, %struct.drm_msm_gem_cpu_prep* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %33, i32 %36)
  store %struct.drm_gem_object* %37, %struct.drm_gem_object** %9, align 8
  %38 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %39 = icmp ne %struct.drm_gem_object* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %52

43:                                               ; preds = %32
  %44 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %45 = load %struct.drm_msm_gem_cpu_prep*, %struct.drm_msm_gem_cpu_prep** %8, align 8
  %46 = getelementptr inbounds %struct.drm_msm_gem_cpu_prep, %struct.drm_msm_gem_cpu_prep* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @msm_gem_cpu_prep(%struct.drm_gem_object* %44, i32 %47, i32* %10)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %50 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %49)
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %43, %40, %25
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @to_ktime(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @msm_gem_cpu_prep(%struct.drm_gem_object*, i32, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
