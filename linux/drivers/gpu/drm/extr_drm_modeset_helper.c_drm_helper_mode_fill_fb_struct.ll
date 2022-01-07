; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modeset_helper.c_drm_helper_mode_fill_fb_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modeset_helper.c_drm_helper_mode_fill_fb_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_framebuffer = type { i32, i32, i32*, i32*, i32, i32, i32, %struct.drm_device* }
%struct.drm_mode_fb_cmd2 = type { i32, i32*, i32*, i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_helper_mode_fill_fb_struct(%struct.drm_device* %0, %struct.drm_framebuffer* %1, %struct.drm_mode_fb_cmd2* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %5, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %6, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %10 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %9, i32 0, i32 7
  store %struct.drm_device* %8, %struct.drm_device** %10, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %13 = call i32 @drm_get_format_info(%struct.drm_device* %11, %struct.drm_mode_fb_cmd2* %12)
  %14 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %15 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 8
  %16 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %17 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %20 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %22 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %25 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %56, %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %59

29:                                               ; preds = %26
  %30 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %31 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %38 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  %43 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %44 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %51 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  br label %56

56:                                               ; preds = %29
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %26

59:                                               ; preds = %26
  %60 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %61 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %66 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %68 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %71 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  ret void
}

declare dso_local i32 @drm_get_format_info(%struct.drm_device*, %struct.drm_mode_fb_cmd2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
