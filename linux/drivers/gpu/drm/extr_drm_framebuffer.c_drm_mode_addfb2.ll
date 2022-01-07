; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_framebuffer.c_drm_mode_addfb2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_framebuffer.c_drm_mode_addfb2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32, i32 }
%struct.drm_mode_fb_cmd2 = type { i32 }
%struct.drm_framebuffer = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"[FB:%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_addfb2(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.drm_mode_fb_cmd2*
  store %struct.drm_mode_fb_cmd2* %11, %struct.drm_mode_fb_cmd2** %8, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = load i32, i32* @DRIVER_MODESET, align 4
  %14 = call i32 @drm_core_check_feature(%struct.drm_device* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %53

19:                                               ; preds = %3
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %22 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %23 = call %struct.drm_framebuffer* @drm_internal_framebuffer_create(%struct.drm_device* %20, %struct.drm_mode_fb_cmd2* %21, %struct.drm_file* %22)
  store %struct.drm_framebuffer* %23, %struct.drm_framebuffer** %9, align 8
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %25 = call i64 @IS_ERR(%struct.drm_framebuffer* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %29 = call i32 @PTR_ERR(%struct.drm_framebuffer* %28)
  store i32 %29, i32* %4, align 4
  br label %53

30:                                               ; preds = %19
  %31 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %32 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %37 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %41 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %43 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %46 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %45, i32 0, i32 0
  %47 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %48 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %47, i32 0, i32 1
  %49 = call i32 @list_add(i32* %46, i32* %48)
  %50 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %51 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %30, %27, %16
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local %struct.drm_framebuffer* @drm_internal_framebuffer_create(%struct.drm_device*, %struct.drm_mode_fb_cmd2*, %struct.drm_file*) #1

declare dso_local i64 @IS_ERR(%struct.drm_framebuffer*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_framebuffer*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
