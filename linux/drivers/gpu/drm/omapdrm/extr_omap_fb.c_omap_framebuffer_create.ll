; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_fb.c_omap_framebuffer_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_fb.c_omap_framebuffer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32* }
%struct.drm_format_info = type { i32 }
%struct.drm_gem_object = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_framebuffer* @omap_framebuffer_create(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_mode_fb_cmd2* %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.drm_format_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x %struct.drm_gem_object*], align 16
  %11 = alloca %struct.drm_framebuffer*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %15 = call %struct.drm_format_info* @drm_get_format_info(%struct.drm_device* %13, %struct.drm_mode_fb_cmd2* %14)
  store %struct.drm_format_info* %15, %struct.drm_format_info** %8, align 8
  %16 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %17 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %46, %3
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %19
  %24 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %25 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %26 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %24, i32 %31)
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x %struct.drm_gem_object*], [4 x %struct.drm_gem_object*]* %10, i64 0, i64 %34
  store %struct.drm_gem_object* %32, %struct.drm_gem_object** %35, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x %struct.drm_gem_object*], [4 x %struct.drm_gem_object*]* %10, i64 0, i64 %37
  %39 = load %struct.drm_gem_object*, %struct.drm_gem_object** %38, align 8
  %40 = icmp ne %struct.drm_gem_object* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %23
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.drm_framebuffer* @ERR_PTR(i32 %43)
  store %struct.drm_framebuffer* %44, %struct.drm_framebuffer** %11, align 8
  br label %60

45:                                               ; preds = %23
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %12, align 4
  br label %19

49:                                               ; preds = %19
  %50 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %51 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %52 = getelementptr inbounds [4 x %struct.drm_gem_object*], [4 x %struct.drm_gem_object*]* %10, i64 0, i64 0
  %53 = call %struct.drm_framebuffer* @omap_framebuffer_init(%struct.drm_device* %50, %struct.drm_mode_fb_cmd2* %51, %struct.drm_gem_object** %52)
  store %struct.drm_framebuffer* %53, %struct.drm_framebuffer** %11, align 8
  %54 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %55 = call i64 @IS_ERR(%struct.drm_framebuffer* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %60

58:                                               ; preds = %49
  %59 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  store %struct.drm_framebuffer* %59, %struct.drm_framebuffer** %4, align 8
  br label %73

60:                                               ; preds = %57, %41
  br label %61

61:                                               ; preds = %65, %60
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %12, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [4 x %struct.drm_gem_object*], [4 x %struct.drm_gem_object*]* %10, i64 0, i64 %67
  %69 = load %struct.drm_gem_object*, %struct.drm_gem_object** %68, align 8
  %70 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %69)
  br label %61

71:                                               ; preds = %61
  %72 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  store %struct.drm_framebuffer* %72, %struct.drm_framebuffer** %4, align 8
  br label %73

73:                                               ; preds = %71, %58
  %74 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  ret %struct.drm_framebuffer* %74
}

declare dso_local %struct.drm_format_info* @drm_get_format_info(%struct.drm_device*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

declare dso_local %struct.drm_framebuffer* @omap_framebuffer_init(%struct.drm_device*, %struct.drm_mode_fb_cmd2*, %struct.drm_gem_object**) #1

declare dso_local i64 @IS_ERR(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
