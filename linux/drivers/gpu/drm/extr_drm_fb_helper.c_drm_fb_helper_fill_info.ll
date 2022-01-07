; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_6__, %struct.drm_fb_helper* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_fb_helper = type { %struct.TYPE_8__*, %struct.drm_framebuffer* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }
%struct.drm_framebuffer = type { %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.drm_fb_helper_surface_size = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"%sdrmfb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_fb_helper_fill_info(%struct.fb_info* %0, %struct.drm_fb_helper* %1, %struct.drm_fb_helper_surface_size* %2) #0 {
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.drm_fb_helper*, align 8
  %6 = alloca %struct.drm_fb_helper_surface_size*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.drm_fb_helper* %1, %struct.drm_fb_helper** %5, align 8
  store %struct.drm_fb_helper_surface_size* %2, %struct.drm_fb_helper_surface_size** %6, align 8
  %8 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %9 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %8, i32 0, i32 1
  %10 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  store %struct.drm_framebuffer* %10, %struct.drm_framebuffer** %7, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %12 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %13 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %18 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @drm_fb_helper_fill_fix(%struct.fb_info* %11, i32 %16, i32 %21)
  %23 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %24 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %25 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %6, align 8
  %26 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %6, align 8
  %29 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @drm_fb_helper_fill_var(%struct.fb_info* %23, %struct.drm_fb_helper* %24, i32 %27, i32 %30)
  %32 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %33 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 1
  store %struct.drm_fb_helper* %32, %struct.drm_fb_helper** %34, align 8
  %35 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %40 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @snprintf(i32 %38, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %45)
  ret void
}

declare dso_local i32 @drm_fb_helper_fill_fix(%struct.fb_info*, i32, i32) #1

declare dso_local i32 @drm_fb_helper_fill_var(%struct.fb_info*, %struct.drm_fb_helper*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
