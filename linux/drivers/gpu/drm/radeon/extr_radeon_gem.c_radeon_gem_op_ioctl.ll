; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_op_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_op_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_radeon_gem_op = type { i32, i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.radeon_bo = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_CPU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_gem_op_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_radeon_gem_op*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca %struct.radeon_bo*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_radeon_gem_op*
  store %struct.drm_radeon_gem_op* %13, %struct.drm_radeon_gem_op** %8, align 8
  %14 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %15 = load %struct.drm_radeon_gem_op*, %struct.drm_radeon_gem_op** %8, align 8
  %16 = getelementptr inbounds %struct.drm_radeon_gem_op, %struct.drm_radeon_gem_op* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %14, i32 %17)
  store %struct.drm_gem_object* %18, %struct.drm_gem_object** %9, align 8
  %19 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %20 = icmp eq %struct.drm_gem_object* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %75

24:                                               ; preds = %3
  %25 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %26 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %25)
  store %struct.radeon_bo* %26, %struct.radeon_bo** %10, align 8
  %27 = load i32, i32* @EPERM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %11, align 4
  %29 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %30 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @radeon_ttm_tt_has_userptr(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %71

36:                                               ; preds = %24
  %37 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %38 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %37, i32 0)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %71

43:                                               ; preds = %36
  %44 = load %struct.drm_radeon_gem_op*, %struct.drm_radeon_gem_op** %8, align 8
  %45 = getelementptr inbounds %struct.drm_radeon_gem_op, %struct.drm_radeon_gem_op* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %65 [
    i32 129, label %47
    i32 128, label %53
  ]

47:                                               ; preds = %43
  %48 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %49 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.drm_radeon_gem_op*, %struct.drm_radeon_gem_op** %8, align 8
  %52 = getelementptr inbounds %struct.drm_radeon_gem_op, %struct.drm_radeon_gem_op* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %68

53:                                               ; preds = %43
  %54 = load %struct.drm_radeon_gem_op*, %struct.drm_radeon_gem_op** %8, align 8
  %55 = getelementptr inbounds %struct.drm_radeon_gem_op, %struct.drm_radeon_gem_op* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %58 = load i32, i32* @RADEON_GEM_DOMAIN_GTT, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @RADEON_GEM_DOMAIN_CPU, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %56, %61
  %63 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %64 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %68

65:                                               ; preds = %43
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %65, %53, %47
  %69 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %70 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %69)
  br label %71

71:                                               ; preds = %68, %42, %35
  %72 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %73 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %72)
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %21
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i64 @radeon_ttm_tt_has_userptr(i32) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
