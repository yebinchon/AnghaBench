; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_fb.c_tegra_fb_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_fb.c_tegra_fb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32 }
%struct.tegra_bo = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tegra_fb_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to initialize framebuffer: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_mode_fb_cmd2*, %struct.tegra_bo**, i32)* @tegra_fb_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_framebuffer* @tegra_fb_alloc(%struct.drm_device* %0, %struct.drm_mode_fb_cmd2* %1, %struct.tegra_bo** %2, i32 %3) #0 {
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.tegra_bo**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_framebuffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_mode_fb_cmd2* %1, %struct.drm_mode_fb_cmd2** %7, align 8
  store %struct.tegra_bo** %2, %struct.tegra_bo*** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.drm_framebuffer* @kzalloc(i32 16, i32 %13)
  store %struct.drm_framebuffer* %14, %struct.drm_framebuffer** %10, align 8
  %15 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %16 = icmp ne %struct.drm_framebuffer* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.drm_framebuffer* @ERR_PTR(i32 %19)
  store %struct.drm_framebuffer* %20, %struct.drm_framebuffer** %5, align 8
  br label %68

21:                                               ; preds = %4
  %22 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %23 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %24 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %25 = call i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device* %22, %struct.drm_framebuffer* %23, %struct.drm_mode_fb_cmd2* %24)
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %47, %21
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %29 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %27, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %26
  %35 = load %struct.tegra_bo**, %struct.tegra_bo*** %8, align 8
  %36 = load i32, i32* %11, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.tegra_bo*, %struct.tegra_bo** %35, i64 %37
  %39 = load %struct.tegra_bo*, %struct.tegra_bo** %38, align 8
  %40 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %39, i32 0, i32 0
  %41 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %42 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  store i32* %40, i32** %46, align 8
  br label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %11, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %26

50:                                               ; preds = %26
  %51 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %52 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %53 = call i32 @drm_framebuffer_init(%struct.drm_device* %51, %struct.drm_framebuffer* %52, i32* @tegra_fb_funcs)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %50
  %57 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %58 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %63 = call i32 @kfree(%struct.drm_framebuffer* %62)
  %64 = load i32, i32* %12, align 4
  %65 = call %struct.drm_framebuffer* @ERR_PTR(i32 %64)
  store %struct.drm_framebuffer* %65, %struct.drm_framebuffer** %5, align 8
  br label %68

66:                                               ; preds = %50
  %67 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  store %struct.drm_framebuffer* %67, %struct.drm_framebuffer** %5, align 8
  br label %68

68:                                               ; preds = %66, %56, %17
  %69 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  ret %struct.drm_framebuffer* %69
}

declare dso_local %struct.drm_framebuffer* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

declare dso_local i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device*, %struct.drm_framebuffer*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @drm_framebuffer_init(%struct.drm_device*, %struct.drm_framebuffer*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
