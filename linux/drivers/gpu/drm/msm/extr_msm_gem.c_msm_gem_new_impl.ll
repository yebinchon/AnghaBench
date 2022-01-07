; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_new_impl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_new_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.msm_gem_object = type { i32, %struct.drm_gem_object, i32, i32, i32, i32, i32 }

@MSM_BO_CACHE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid cache flag: %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MSM_MADV_WILLNEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32, %struct.drm_gem_object**, i32)* @msm_gem_new_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_gem_new_impl(%struct.drm_device* %0, i32 %1, i32 %2, %struct.drm_gem_object** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_gem_object**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.msm_drm_private*, align 8
  %13 = alloca %struct.msm_gem_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.drm_gem_object** %3, %struct.drm_gem_object*** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 2
  %16 = load %struct.msm_drm_private*, %struct.msm_drm_private** %15, align 8
  store %struct.msm_drm_private* %16, %struct.msm_drm_private** %12, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @MSM_BO_CACHE_MASK, align 4
  %19 = and i32 %17, %18
  switch i32 %19, label %21 [
    i32 129, label %20
    i32 130, label %20
    i32 128, label %20
  ]

20:                                               ; preds = %5, %5, %5
  br label %31

21:                                               ; preds = %5
  %22 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @MSM_BO_CACHE_MASK, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @DRM_DEV_ERROR(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %86

31:                                               ; preds = %20
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.msm_gem_object* @kzalloc(i32 28, i32 %32)
  store %struct.msm_gem_object* %33, %struct.msm_gem_object** %13, align 8
  %34 = load %struct.msm_gem_object*, %struct.msm_gem_object** %13, align 8
  %35 = icmp ne %struct.msm_gem_object* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %86

39:                                               ; preds = %31
  %40 = load %struct.msm_gem_object*, %struct.msm_gem_object** %13, align 8
  %41 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %40, i32 0, i32 6
  %42 = call i32 @mutex_init(i32* %41)
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.msm_gem_object*, %struct.msm_gem_object** %13, align 8
  %45 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @MSM_MADV_WILLNEED, align 4
  %47 = load %struct.msm_gem_object*, %struct.msm_gem_object** %13, align 8
  %48 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.msm_gem_object*, %struct.msm_gem_object** %13, align 8
  %50 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %49, i32 0, i32 4
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.msm_gem_object*, %struct.msm_gem_object** %13, align 8
  %53 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %52, i32 0, i32 3
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %39
  %58 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %59 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %58, i32 0, i32 0
  %60 = call i32 @mutex_is_locked(i32* %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @WARN_ON(i32 %63)
  %65 = load %struct.msm_gem_object*, %struct.msm_gem_object** %13, align 8
  %66 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %65, i32 0, i32 2
  %67 = load %struct.msm_drm_private*, %struct.msm_drm_private** %12, align 8
  %68 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %67, i32 0, i32 0
  %69 = call i32 @list_add_tail(i32* %66, i32* %68)
  br label %82

70:                                               ; preds = %39
  %71 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %72 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %71, i32 0, i32 0
  %73 = call i32 @mutex_lock(i32* %72)
  %74 = load %struct.msm_gem_object*, %struct.msm_gem_object** %13, align 8
  %75 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %74, i32 0, i32 2
  %76 = load %struct.msm_drm_private*, %struct.msm_drm_private** %12, align 8
  %77 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %76, i32 0, i32 0
  %78 = call i32 @list_add_tail(i32* %75, i32* %77)
  %79 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %80 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  br label %82

82:                                               ; preds = %70, %57
  %83 = load %struct.msm_gem_object*, %struct.msm_gem_object** %13, align 8
  %84 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %83, i32 0, i32 1
  %85 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %10, align 8
  store %struct.drm_gem_object* %84, %struct.drm_gem_object** %85, align 8
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %82, %36, %21
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local %struct.msm_gem_object* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
