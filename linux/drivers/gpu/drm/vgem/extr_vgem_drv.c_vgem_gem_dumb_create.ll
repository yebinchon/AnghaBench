; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vgem/extr_vgem_drv.c_vgem_gem_dumb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vgem/extr_vgem_drv.c_vgem_gem_dumb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_gem_object = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Created object of size %lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_file*, %struct.drm_device*, %struct.drm_mode_create_dumb*)* @vgem_gem_dumb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgem_gem_dumb_create(%struct.drm_file* %0, %struct.drm_device* %1, %struct.drm_mode_create_dumb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_mode_create_dumb*, align 8
  %8 = alloca %struct.drm_gem_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %5, align 8
  store %struct.drm_device* %1, %struct.drm_device** %6, align 8
  store %struct.drm_mode_create_dumb* %2, %struct.drm_mode_create_dumb** %7, align 8
  %11 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %12 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %15 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DIV_ROUND_UP(i32 %16, i32 8)
  %18 = mul nsw i32 %13, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %20 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %53

29:                                               ; preds = %3
  %30 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %31 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %32 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %33 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %32, i32 0, i32 4
  %34 = load i32, i32* %10, align 4
  %35 = call %struct.drm_gem_object* @vgem_gem_create(%struct.drm_device* %30, %struct.drm_file* %31, i32* %33, i32 %34)
  store %struct.drm_gem_object* %35, %struct.drm_gem_object** %8, align 8
  %36 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %37 = call i64 @IS_ERR(%struct.drm_gem_object* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %41 = call i32 @PTR_ERR(%struct.drm_gem_object* %40)
  store i32 %41, i32* %4, align 4
  br label %53

42:                                               ; preds = %29
  %43 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %44 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %47 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %50 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %42, %39, %26
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.drm_gem_object* @vgem_gem_create(%struct.drm_device*, %struct.drm_file*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_gem_object*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_gem_object*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
