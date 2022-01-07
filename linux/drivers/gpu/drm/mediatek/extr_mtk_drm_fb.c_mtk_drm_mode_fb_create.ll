; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_fb.c_mtk_drm_mode_fb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_fb.c_mtk_drm_mode_fb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32*, i64*, i32* }
%struct.drm_format_info = type { i32, i32* }
%struct.drm_gem_object = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_framebuffer* @mtk_drm_mode_fb_create(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_mode_fb_cmd2* %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.drm_format_info*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %7, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %18 = call %struct.drm_format_info* @drm_get_format_info(%struct.drm_device* %16, %struct.drm_mode_fb_cmd2* %17)
  store %struct.drm_format_info* %18, %struct.drm_format_info** %8, align 8
  %19 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %20 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %23 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %26 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.drm_framebuffer* @ERR_PTR(i32 %31)
  store %struct.drm_framebuffer* %32, %struct.drm_framebuffer** %4, align 8
  br label %100

33:                                               ; preds = %3
  %34 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %35 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %36 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %34, i32 %39)
  store %struct.drm_gem_object* %40, %struct.drm_gem_object** %10, align 8
  %41 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %42 = icmp ne %struct.drm_gem_object* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %33
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.drm_framebuffer* @ERR_PTR(i32 %45)
  store %struct.drm_framebuffer* %46, %struct.drm_framebuffer** %4, align 8
  br label %100

47:                                               ; preds = %33
  %48 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %49 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sub i32 %53, 1
  %55 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %56 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = mul i32 %54, %59
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %14, align 4
  %63 = mul i32 %61, %62
  %64 = add i32 %60, %63
  store i32 %64, i32* %13, align 4
  %65 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %66 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %65, i32 0, i32 3
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = zext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %13, align 4
  %74 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %75 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %47
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %15, align 4
  br label %95

82:                                               ; preds = %47
  %83 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %84 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %85 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %86 = call %struct.drm_framebuffer* @mtk_drm_framebuffer_init(%struct.drm_device* %83, %struct.drm_mode_fb_cmd2* %84, %struct.drm_gem_object* %85)
  store %struct.drm_framebuffer* %86, %struct.drm_framebuffer** %9, align 8
  %87 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %88 = call i64 @IS_ERR(%struct.drm_framebuffer* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %92 = call i32 @PTR_ERR(%struct.drm_framebuffer* %91)
  store i32 %92, i32* %15, align 4
  br label %95

93:                                               ; preds = %82
  %94 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  store %struct.drm_framebuffer* %94, %struct.drm_framebuffer** %4, align 8
  br label %100

95:                                               ; preds = %90, %79
  %96 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %97 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %96)
  %98 = load i32, i32* %15, align 4
  %99 = call %struct.drm_framebuffer* @ERR_PTR(i32 %98)
  store %struct.drm_framebuffer* %99, %struct.drm_framebuffer** %4, align 8
  br label %100

100:                                              ; preds = %95, %93, %43, %29
  %101 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  ret %struct.drm_framebuffer* %101
}

declare dso_local %struct.drm_format_info* @drm_get_format_info(%struct.drm_device*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.drm_framebuffer* @mtk_drm_framebuffer_init(%struct.drm_device*, %struct.drm_mode_fb_cmd2*, %struct.drm_gem_object*) #1

declare dso_local i64 @IS_ERR(%struct.drm_framebuffer*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
