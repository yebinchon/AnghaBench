; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_wait_bo_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_wait_bo_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_vc4_wait_bo = type { i64, i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.vc4_bo = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to look up GEM BO %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_wait_bo_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_vc4_wait_bo*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca %struct.vc4_bo*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_vc4_wait_bo*
  store %struct.drm_vc4_wait_bo* %13, %struct.drm_vc4_wait_bo** %9, align 8
  %14 = load %struct.drm_vc4_wait_bo*, %struct.drm_vc4_wait_bo** %9, align 8
  %15 = getelementptr inbounds %struct.drm_vc4_wait_bo, %struct.drm_vc4_wait_bo* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %49

21:                                               ; preds = %3
  %22 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %23 = load %struct.drm_vc4_wait_bo*, %struct.drm_vc4_wait_bo** %9, align 8
  %24 = getelementptr inbounds %struct.drm_vc4_wait_bo, %struct.drm_vc4_wait_bo* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %22, i32 %25)
  store %struct.drm_gem_object* %26, %struct.drm_gem_object** %10, align 8
  %27 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %28 = icmp ne %struct.drm_gem_object* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %21
  %30 = load %struct.drm_vc4_wait_bo*, %struct.drm_vc4_wait_bo** %9, align 8
  %31 = getelementptr inbounds %struct.drm_vc4_wait_bo, %struct.drm_vc4_wait_bo* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %49

36:                                               ; preds = %21
  %37 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %38 = call %struct.vc4_bo* @to_vc4_bo(%struct.drm_gem_object* %37)
  store %struct.vc4_bo* %38, %struct.vc4_bo** %11, align 8
  %39 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %40 = load %struct.vc4_bo*, %struct.vc4_bo** %11, align 8
  %41 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.drm_vc4_wait_bo*, %struct.drm_vc4_wait_bo** %9, align 8
  %44 = getelementptr inbounds %struct.drm_vc4_wait_bo, %struct.drm_vc4_wait_bo* %43, i32 0, i32 1
  %45 = call i32 @vc4_wait_for_seqno_ioctl_helper(%struct.drm_device* %39, i32 %42, i32* %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %47 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %36, %29, %18
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local %struct.vc4_bo* @to_vc4_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @vc4_wait_for_seqno_ioctl_helper(%struct.drm_device*, i32, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
