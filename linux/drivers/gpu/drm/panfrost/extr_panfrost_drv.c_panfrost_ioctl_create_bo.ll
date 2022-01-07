; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_drv.c_panfrost_ioctl_create_bo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_drv.c_panfrost_ioctl_create_bo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.panfrost_gem_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_panfrost_create_bo = type { i32, i32, i32, i32, i64 }

@PANFROST_BO_NOEXEC = common dso_local global i32 0, align 4
@PANFROST_BO_HEAP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @panfrost_ioctl_create_bo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panfrost_ioctl_create_bo(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.panfrost_gem_object*, align 8
  %9 = alloca %struct.drm_panfrost_create_bo*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.drm_panfrost_create_bo*
  store %struct.drm_panfrost_create_bo* %11, %struct.drm_panfrost_create_bo** %9, align 8
  %12 = load %struct.drm_panfrost_create_bo*, %struct.drm_panfrost_create_bo** %9, align 8
  %13 = getelementptr inbounds %struct.drm_panfrost_create_bo, %struct.drm_panfrost_create_bo* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %3
  %17 = load %struct.drm_panfrost_create_bo*, %struct.drm_panfrost_create_bo** %9, align 8
  %18 = getelementptr inbounds %struct.drm_panfrost_create_bo, %struct.drm_panfrost_create_bo* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load %struct.drm_panfrost_create_bo*, %struct.drm_panfrost_create_bo** %9, align 8
  %23 = getelementptr inbounds %struct.drm_panfrost_create_bo, %struct.drm_panfrost_create_bo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @PANFROST_BO_NOEXEC, align 4
  %26 = load i32, i32* @PANFROST_BO_HEAP, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %24, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21, %16, %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %78

34:                                               ; preds = %21
  %35 = load %struct.drm_panfrost_create_bo*, %struct.drm_panfrost_create_bo** %9, align 8
  %36 = getelementptr inbounds %struct.drm_panfrost_create_bo, %struct.drm_panfrost_create_bo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PANFROST_BO_HEAP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load %struct.drm_panfrost_create_bo*, %struct.drm_panfrost_create_bo** %9, align 8
  %43 = getelementptr inbounds %struct.drm_panfrost_create_bo, %struct.drm_panfrost_create_bo* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PANFROST_BO_NOEXEC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %78

51:                                               ; preds = %41, %34
  %52 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %53 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %54 = load %struct.drm_panfrost_create_bo*, %struct.drm_panfrost_create_bo** %9, align 8
  %55 = getelementptr inbounds %struct.drm_panfrost_create_bo, %struct.drm_panfrost_create_bo* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.drm_panfrost_create_bo*, %struct.drm_panfrost_create_bo** %9, align 8
  %58 = getelementptr inbounds %struct.drm_panfrost_create_bo, %struct.drm_panfrost_create_bo* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.drm_panfrost_create_bo*, %struct.drm_panfrost_create_bo** %9, align 8
  %61 = getelementptr inbounds %struct.drm_panfrost_create_bo, %struct.drm_panfrost_create_bo* %60, i32 0, i32 2
  %62 = call %struct.panfrost_gem_object* @panfrost_gem_create_with_handle(%struct.drm_file* %52, %struct.drm_device* %53, i32 %56, i32 %59, i32* %61)
  store %struct.panfrost_gem_object* %62, %struct.panfrost_gem_object** %8, align 8
  %63 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %8, align 8
  %64 = call i64 @IS_ERR(%struct.panfrost_gem_object* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %51
  %67 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %8, align 8
  %68 = call i32 @PTR_ERR(%struct.panfrost_gem_object* %67)
  store i32 %68, i32* %4, align 4
  br label %78

69:                                               ; preds = %51
  %70 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %8, align 8
  %71 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PAGE_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = load %struct.drm_panfrost_create_bo*, %struct.drm_panfrost_create_bo** %9, align 8
  %77 = getelementptr inbounds %struct.drm_panfrost_create_bo, %struct.drm_panfrost_create_bo* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %69, %66, %48, %31
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.panfrost_gem_object* @panfrost_gem_create_with_handle(%struct.drm_file*, %struct.drm_device*, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.panfrost_gem_object*) #1

declare dso_local i32 @PTR_ERR(%struct.panfrost_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
